require 'digest/crc32'
require 'openssl'
require 'base64'

class Signature
  def initialize(certificate_path)
    @certificate = OpenSSL::X509::Certificate.new(File.read(certificate_path))
  end

  def verify(merchant_id, timestamp, body, signature)
    @certificate.public_key.verify(
      OpenSSL::Digest::SHA256.new,
      Base64.decode64(signature),
      "#{merchant_id}|#{timestamp}|%s" % Digest::CRC32.hexdigest(body)
    )
  end
end
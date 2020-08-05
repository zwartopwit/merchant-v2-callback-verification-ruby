require './signature'

# 5981e8a4c9716c3dca30679d|2017-08-30T13:57:48.726Z|719a51c0
actual_sig = 'IrJO4pIA8mhRKAHM7731FmZNDfBIcdce/4H9N22mldZZEWgfLcolc6xEIaEtHvCcZ1HVdL1KKeXp10FdwAq/3NVHY1RkoBMstUtdQQ9UgKnFovIkGhYm3u7N5G9YM7iivX3AOMiBSCBgTAVsan731e57LTc3Q1klWlSJwyqdwncYYvXv41Aov0UpnzE0UWgmJjmffbezHZOxiWP/dXZV5sCkYSvK5oe0WbLGsJzR8yFuByNCfrv6NDN6V45YvnicXJ1+CPnuR6cEngCxmQEYE0K668IaD3B2zblLiTb89b23ft/E8LaUsM2iNEgI7f1LuL7FzNW09KrPYgDFPFurHA=='
event_body = '{"_id":"59a6c431f9285003bd46fe56","status":"SUCCEEDED"}'
merchant_id = '5981e8a4c9716c3dca30679d'
timestamp = '2017-08-30T13:57:48.726Z'

signature = Signature.new('./data/payconiq.cer')
verified = signature.verify(merchant_id, timestamp, event_body, actual_sig)
puts verified
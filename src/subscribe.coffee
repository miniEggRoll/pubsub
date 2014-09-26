http = require 'http'
qs = require 'querystring'

params = 
    'hub.mode': 'subscribe'
    'hub.topic': 'http://storage.googleapis.com/eztablerss/tw.xml'
    'hub.callback': 'https://zyibrgsndb.localtunnel.me'
    'hub.verify': 'sync'
    'hub.verify_token': '123'

reqOpt = 
    hostname: 'eztabletw.superfeedr.com'
    method: 'POST'
    headers:
        'content-type': 'application/x-www-form-urlencoded'

req = http.request reqOpt, (res)-> 
    console.log arguments, res.statusCode

req.end qs.stringify(params)

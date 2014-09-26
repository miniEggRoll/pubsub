http = require 'http'
qs = require 'querystring'

params = 
    'hub.mode': 'publish'
    'hub.url': 'http://storage.googleapis.com/eztablerss/tw.xml'

reqOpt = 
    hostname: 'eztabletw.superfeedr.com'
    headers:
        'content-type': 'application/x-www-form-urlencoded'


req = http.request reqOpt, -> console.log arguments

req.end qs.stringify params

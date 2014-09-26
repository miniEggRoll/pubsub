nub = require 'nubnub'
querystring = require 'querystring'

subOpt = 
    'callback': 'https://nsqgsnmvbn.localtunnel.me'
    'mode': 'subscribe'
    'topic': 'http://storage.googleapis.com/eztablerss/tw.xml'
    'verify': 'sync'
    'hub': 'https://eztabletw.superfeedr.com'

nub.client(querystring.stringify subOpt).subscribe ->
    console.log arguments

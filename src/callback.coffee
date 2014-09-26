http = require 'http'
url = require 'url'

app = http.createServer (req, res)->
    query = url.parse(req.url, true).query
    console.log query
    res.statusCode = 200
    res.end query['hub.challenge']

app.listen 1234, -> console.log 'callback on 1234'

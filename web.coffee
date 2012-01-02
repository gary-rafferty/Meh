express = require 'express'

app = express.createServer express.logger()

app.get '/', (req,res) ->
  res.send 'CoffeeScript & ExpressJS on Heroku using foreman'

port = process.env.PORT or 3000

app.listen port, ->
  console.log "Listening on port #{port}"

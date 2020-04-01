'use strict'

const bodyParser = require('body-parser')
const express = require('express')

const config = require('./config').getConfig()
const logger = require('./logger')
const {isBodyEmpty} = require('./util')
const {sendRequest} = require('./odk')
const openhim = require('./openhim')

const app = express()

const errorHandler = (err, req, res, next) => {
  res.status(err.status || 500);
  res.json({
    message: err.message,
    error: err
  })
}

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}))

app.post('/odk', function(req, res) {
  if (isBodyEmpty(req)) {
    logger.warn('No request body supplied!')
    res.status(400)
    res.json({
      error: 'No request body supplied!'
    })
    return
  }

  // send request to mapper
  sendRequest(req)
  
  // respond to ODK with 202
  var mediatorResponse = {
    'x-mediator-urn': openhim.getApiOpts().urn,
    status: 'Processing',
    response: {
      status: 202,
      body: 'Request sent for processing\n',
      timestamp: new Date().toISOString()
    }
  }

  logger.info(`Request sent for processing: ${req.headers['x-openhim-transactionid']}`)
  res.status(202).type('application/json+openhim').send(mediatorResponse)
})

app.use(errorHandler)

if (!module.parent) {
  app.listen(config.port, () => {
    logger.info(`Server listening on port ${config.port}...`)

    if (config.openhim.register) {
      openhim.mediatorSetup()
    }
  })
}

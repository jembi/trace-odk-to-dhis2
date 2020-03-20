'use strict'

const express = require('express')

const config = require('./config').getConfig()
const logger = require('./logger')
const util = require('./util')

const app = express()
 
app.get('/verify', function (req, res) {
  if (Object.keys(req.query).length === 0) {
    logger.warn('No query parameter identifiers supplied for lookup')
    res.statusMessage = "No query parameter identifiers supplied for lookup";
    res.status(400).end();
    return
  }

  const responsePayload = {
    identifierExists: false
  }

  Object.keys(req.query).forEach(queryParam => {
    const key = queryParam
    const identifier = req.query[queryParam]
    const path = `./identifiers/${key}-${identifier}`

    if (util.identifierExists(path)) {
      responsePayload.identifierExists = true
      logger.info(`Identifier already exists: ${key} - ${identifier}`)
    } else {
      util.setIdentifier(path)
      logger.info(`Identifier created: ${key} - ${identifier}`)
    }
  })

  logger.info(`Request already processed: ${responsePayload.identifierExists}`)
  res.send(responsePayload)
})
 
app.listen(config.port, () => {
  logger.info(`Server listening on port ${config.port}...`)
})

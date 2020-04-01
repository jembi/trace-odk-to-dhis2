'use strict'

const axios = require('axios')
const fs = require('fs')
const MUtils = require('openhim-mediator-utils')
const path = require('path')

const logger = require('./logger')
const config = require('./config')

let mediatorConfigJson, readError

try {
  const mediatorConfigFile = fs.readFileSync(
    path.resolve(__dirname, '..', 'mediatorConfig.json')
  )
  mediatorConfigJson = JSON.parse(mediatorConfigFile)
} catch (err) {
  readError = err.message
  logger.error(`Mediator config file could not be retrieved: ${err.message}`)
}

const configOptions = config.getConfig()
const openhimConfig = Object.assign(
  {urn: mediatorConfigJson.urn},
  configOptions.openhim
)

exports.mediatorSetup = () => {
  MUtils.registerMediator(openhimConfig, mediatorConfigJson, err => {
    if (err) {
      logger.error('Failed to register mediator')
      throw new Error(err.message)
    }

    logger.info('Successfully registered mediator!')

    const emitter = MUtils.activateHeartbeat(openhimConfig)

    emitter.on('error', err => {
      logger.error('Heartbeat failed: ', err)
    })
  })
}

exports.updateTx = (res, body, orchestrations, transactionId) => {
  // determine transaction status
  let status = ''
  if (200 <= res.status && res.status <= 299) {
    status = 'Successful';
  } else if (400 <= res.status && res.status <= 499) {
    status = 'Completed';
  } else {
    status = 'Failed';
  }

  const update = {
    _id: transactionId,
    status: status,
    response: {
      status: res.status,
      headers: res.headers,
      body: body,
      timestamp: new Date().toISOString()
    },
    $push: {
      orchestrations
    }
  }

  axios.put(openhimConfig.apiURL + '/transactions/' + transactionId, update, {auth: { username: openhimConfig.username, password: openhimConfig.password }})
  .then(response => {
    if (response.status !== 200) {
      return logger.info('Unable to save updated transaction to OpenHIM-core, received status code ' + response.status)
    }
    logger.info('Successfully updated transaction with id ' + transactionId)
  }).catch(error => {
    logger.error(error)
  })
}

exports.getApiOpts = () => {
  return openhimConfig
}

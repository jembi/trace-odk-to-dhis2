'use strict'

const {parseStringToBoolean} = require('./util')

exports.getConfig = function() {
  return Object.freeze({
    port: process.env.SERVER_PORT || 3310,
    logLevel: process.env.LOG_LEVEL || 'info',
    enableLogging: parseStringToBoolean(process.env.ENABLE_LOGGING, true)
  })
}

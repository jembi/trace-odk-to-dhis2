'use strict'

const {parseStringToBoolean} = require('./util')

exports.getConfig = function() {
  return Object.freeze({
    port: process.env.SERVER_PORT || 4410,
    logLevel: process.env.LOG_LEVEL || 'info',
    enableLogging: parseStringToBoolean(process.env.ENABLE_LOGGING, true),
    openhim: Object.freeze({
      apiURL: process.env.OPENHIM_URL || 'https://localhost:8080',
      username: process.env.OPENHIM_USERNAME || 'root@openhim.org',
      password: process.env.OPENHIM_PASSWORD || 'openhim-password',
      trustSelfSigned: parseStringToBoolean(
        process.env.TRUST_SELF_SIGNED,
        true
      ),
      register: parseStringToBoolean(process.env.OPENHIM_REGISTER, true)
    }),
    odkMapperURL: process.env.ODK_MAPPER_URL || 'http://localhost:3003/odk'
  })
}

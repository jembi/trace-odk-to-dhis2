'use strict'

const fs = require('fs')

exports.parseStringToBoolean = (value, defaultValue) => {
  if (!value) return defaultValue

  switch (value.toLowerCase()) {
    case 'true':
      return true
    case 'false':
      return false
    default:
      return defaultValue
  }
}

exports.identifierExists = (path) => {
  try {
    fs.accessSync(path)
    return true
  } catch(err) {
    return false
  }
}

exports.setIdentifier = (path) => {
  try {
    fs.writeFileSync(path, '')
    return true
  } catch (err) {
    return false
  }
}

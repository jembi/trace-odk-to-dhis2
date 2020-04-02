'use strict'

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

exports.isBodyEmpty = req => {
  if (req.body.constructor === Object && Object.keys(req.body).length === 0) {
    return true
  }
  return false
}

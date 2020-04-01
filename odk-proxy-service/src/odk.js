'use strict'

const axios = require('axios')

const config = require('./config').getConfig()
const openhim = require('./openhim')

exports.sendRequest = (req) => {
  const requestConfig = {
    headers: req.headers
  }

  // send request to mapper for processing and update transactions with response data
  axios.post(config.odkMapperURL, req.body, requestConfig)
  .then(response => {
    let status, body, orchestrations
    let openhimResponse = {}

    openhimResponse.status = response.status
    openhimResponse.headers = response.headers
    body = response.data.response.body
    orchestrations = response.data.orchestrations

    openhim.updateTx(openhimResponse, body, orchestrations, requestConfig.headers['x-openhim-transactionid'])
  })
  .catch(error => {
    let status, body, orchestrations
    let openhimResponse = {}

    if (error.response) {
      openhimResponse.status = error.response.status
      openhimResponse.headers = error.response.headers
      if (error.response.data && error.response.data.error) {
        body = error.response.data.error.message
      } else {
        body = error.response.data.response.body
        orchestrations = error.response.data.orchestrations
      }
    } else {
      openhimResponse.status = 500
      openhimResponse.headers = {}
      body = error.message
    }

    openhim.updateTx(openhimResponse, body, orchestrations, requestConfig.headers['x-openhim-transactionid'])
  });
}

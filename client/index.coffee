azure = require "azure-storage"

queueService = azure.createQueueService()

queueService.createQueueIfNotExists 'js-queue-items', (err, result, response) ->
  if err
    console.log err
  else
    queueService.createMessage 'js-queue-items',  'aGVsbG8gd29ybGQ=', (error) ->
      console.log "Event inserted #{error ? "without error"}"
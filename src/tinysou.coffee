Client = require './client'
Engine = require './engine'
Collection = require './collection'
Document = require './document'
Analytics = require './analytics'


class Tinysou
  constructor: (@token) ->
    @client = new Client @token
    @engines = new Engine @client
    @collections = new Collection @client
    @documents = new Document @client
    @analytics = new Analytics @client

  search: (engineName, searchInfo, callback) ->
    @client.post "/engines/#{engineName}/search", searchInfo, callback

  autocomplete: (engineName, autocompleteInfo, callback) ->
    @client.post "/engines/#{engineName}/autocomplete", autocompleteInfo, callback


module.exports = Tinysou

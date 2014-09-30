class Analytics
  constructor: (@client) ->

  search: (engineName, params, callback) ->
    @client.get "/engines/#{engineName}/analytics/search", params, callback

  autocomplete: (engineName, params, callback) ->
    @client.get "/engines/#{engineName}/analytics/autocomplete", params, callback

  searchClick: (engineName, params, callback) ->
    @client.get "/engines/#{engineName}/analytics/search_click", params, callback

  autocompleteClick: (engineName, params, callback) ->
    @client.get "/engines/#{engineName}/analytics/autocomplete_click", params, callback


module.exports = Analytics

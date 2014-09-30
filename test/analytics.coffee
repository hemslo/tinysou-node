assert = require 'assert'
nock = require 'nock'
Tinysou = require '../lib/tinysou'


describe 'Analytics', ->
  before ->
    tinysou = new Tinysou 'token'
    @analytics = tinysou.analytics
    @engine = {
      name: 'blog',
      display_name: 'Blog'
    }
    @host = 'http://api.tinysou.com'

  it 'should return search count', ->
    console.log 'aaa'
    nock(@host)
      .get("/v1/engines/#{@engine.name}/analytics/search?function=count")
      .reply(200, {count: 0})
    @analytics.search @engine.name, {function: 'count'}, (err, res) ->
      assert.deepEqual 0, res.count

  it 'should return top autocomplete', ->
    nock(@host)
      .get("/v1/engines/#{@engine.name}/analytics/autocomplete?function=top")
      .reply(200, [])
    @analytics.autocomplete @engine.name, {function: 'top'}, (err, res) ->
      assert.deepEqual [], res

  it 'should return search click count', ->
    nock(@host)
      .get("/v1/engines/#{@engine.name}/analytics/search_click?function=count")
      .reply(200, {count: 0})
    @analytics.searchClick @engine.name, {function: 'count'}, (err, res) ->
      assert.deepEqual 0, res.count

  it 'should return top autocomplete click', ->
    nock(@host)
      .get("/v1/engines/#{@engine.name}/analytics/autocomplete_click?function=top")
      .reply(200, [])
    @analytics.autocompleteClick @engine.name, {function: 'top'}, (err, res) ->
      assert.deepEqual [], res

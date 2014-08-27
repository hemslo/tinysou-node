// Generated by CoffeeScript 1.7.1
(function() {
  var Client, Collection, Document, Engine, Tinysou;

  Client = require('./client');

  Engine = require('./engine');

  Collection = require('./collection');

  Document = require('./document');

  Tinysou = (function() {
    function Tinysou(token) {
      this.token = token;
      this.client = new Client(this.token);
      this.engines = new Engine(this.client);
      this.collections = new Collection(this.client);
      this.documents = new Document(this.client);
    }

    return Tinysou;

  })();

  module.exports = Tinysou;

}).call(this);
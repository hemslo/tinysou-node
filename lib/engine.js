// Generated by CoffeeScript 1.8.0
(function() {
  var Engine;

  Engine = (function() {
    function Engine(client) {
      this.client = client;
    }

    Engine.prototype.list = function(callback) {
      return this.client.get('/engines', {}, callback);
    };

    Engine.prototype.create = function(engine, callback) {
      return this.client.post('/engines', engine, callback);
    };

    Engine.prototype.get = function(engineName, callback) {
      return this.client.get("/engines/" + engineName, {}, callback);
    };

    Engine.prototype.update = function(engineName, engine, callback) {
      return this.client.put("/engines/" + engineName, engine, callback);
    };

    Engine.prototype["delete"] = function(engineName, callback) {
      return this.client["delete"]("/engines/" + engineName, {}, callback);
    };

    return Engine;

  })();

  module.exports = Engine;

}).call(this);

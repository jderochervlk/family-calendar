// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var EnvSafe = require("rescript-envsafe/src/EnvSafe.js");
var Faunadb = require("faunadb");
var S$ReScriptStruct = require("rescript-struct/src/S.js");

var envSafe = EnvSafe.make(undefined, undefined);

var faunadbSecret = EnvSafe.get(envSafe, "FAUNADB_SERVER_SECRET", S$ReScriptStruct.string(undefined), undefined, undefined, undefined, undefined);

var client = new Faunadb.Client({
      secret: faunadbSecret
    });

var query = Faunadb.query;

EnvSafe.close(envSafe, undefined);

exports.faunadbSecret = faunadbSecret;
exports.client = client;
exports.query = query;
/* envSafe Not a pure module */

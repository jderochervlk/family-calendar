@val external process: {"env": {"FAUNADB_SERVER_SECRET": string}} = "process"

type clientOptions = {secret: string}

type query
type ref
type i = {title: string}
type dbquery = {"Ref": string => ref, "Create": (ref, i) => query}
@module("faunadb") external dbquery: dbquery = "query"

type t
type client = {query: query => promise<t>}
@new @module("faunadb") external client: clientOptions => client = "Client"

let client = client({secret: process["env"]["FAUNADB_SERVER_SECRET"]})
let query = dbquery

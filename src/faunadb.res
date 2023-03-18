@val external process: {"env": {"FAUNADB_SERVER_SECRET": string}} = "process"

type clientOptions = {secret: string}

type t
@new @module("faunadb") external client: clientOptions => t = "Client"

type ref
type i = {title: string}
type dbquery = {"Ref": string => ref, "Create": (ref, i) => promise<unit>}
@module("faunadb") external dbquery: dbquery = "query"

let client = client({secret: process["env"]["FAUNADB_SERVER_SECRET"]})
let query = dbquery

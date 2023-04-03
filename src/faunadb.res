%%private(let envSafe = EnvSafe.make())

let faunadbSecret =
  envSafe->EnvSafe.get(~name="FAUNADB_SERVER_SECRET", ~struct=ReScriptStruct.S.string(), ())

type clientOptions = {secret: string}

type query
type ref
type data = {data: Data.person}
type dbquery = {"Ref": string => ref, "Create": (ref, data) => query}
@module("faunadb") external dbquery: dbquery = "query"

type t
type client = {query: (. query) => promise<t>}
@new @module("faunadb") external client: clientOptions => client = "Client"

let client = client({secret: faunadbSecret})
let query = dbquery

envSafe->EnvSafe.close()

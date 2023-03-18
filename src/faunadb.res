@val external process: {"env": {"FAUNADB_SERVER_SECRET": string}} = "process"

type clientOptions = {secret: string}

type query
type ref
type i = {data: JSON.t}
type dbquery = {"Ref": string => ref, "Create": (ref, i) => query}
@module("faunadb") external dbquery: dbquery = "query"

type t
type client = {query: (. query) => promise<t>}
@new @module("faunadb") external client: clientOptions => client = "Client"

// let client = client({secret: process["env"]["FAUNADB_SERVER_SECRET"]})
let client = client({secret: "fnAE_XRDsoAAVm3S7kTRu18tPSPK9FcZxb1zPve6"})
let query = dbquery

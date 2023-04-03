open Data

open ReScriptStruct

let personStruct = S.object(o => {
  id: o->S.field("Id", S.int()),
  firstName: o->S.field("FirstName", S.string()),
  lastName: o->S.field("LastName", S.string()),
})

type event = {path: string, body: string}

let handler = async (event: event) => {
  let createQuery = (t: person) =>
    Faunadb.query["Create"](Faunadb.query["Ref"]("classes/person"), {data: t})

  let b = event.body->S.parseWith(personStruct)

  switch b {
  | Ok(data) => {
      let query = createQuery(data)
      let res = await Faunadb.client.query(. query)
      {
        "statusCode": 200,
        "body": res->JSON.stringifyAny,
      }
    }
  | Error(err) => {
      "statusCode": 400,
      "body": err->S.Error.toString->Some,
    }
  }
}

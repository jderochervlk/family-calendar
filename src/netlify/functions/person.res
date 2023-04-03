open Data

open ReScriptStruct.S

let personStruct = object(o => {
  id: o->field("Id", int()),
  firstName: o->field("FirstName", string()),
  lastName: o->field("LastName", string()),
})

type event = {path: string, body: string}

let handler = async (event: event) => {
  let createQuery = (t: person) =>
    Faunadb.query["Create"](Faunadb.query["Ref"]("classes/person"), {data: t})

  let b = event.body->parseWith(personStruct)

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
      "body": err->Error.toString->Some,
    }
  }
}

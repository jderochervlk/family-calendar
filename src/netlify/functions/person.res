open Data

open ReScriptStruct

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

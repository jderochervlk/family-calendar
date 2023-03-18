type event = {path: string, body: JSON.t}

let handler = async (event: event) => {
  let createQuery = t => Faunadb.query["Create"](Faunadb.query["Ref"]("classes/todo"), {data: t})

  let body = Js.Json.decodeObject(event.body)

  switch body {
  | Some(b) => {
      let query = createQuery(b)
      let res = await Faunadb.client.query(. query)
      {
        "statusCode": 200,
        "body": JSON.stringifyAny(res),
      }
    }
  | None => {
      "statusCode": 400,
      "body": JSON.stringifyAny({"error": "body isn't valid JSON."}),
    }
  }
}

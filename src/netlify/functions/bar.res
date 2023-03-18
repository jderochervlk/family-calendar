type body = {title: option<string>}
type event = {path: string, body: option<body>}

let handler = async (event: event) => {
  let createQuery = (t: Faunadb.item) =>
    Faunadb.query["Create"](Faunadb.query["Ref"]("classes/todo"), {data: t})

  switch event {
  | {body: Some({title: Some(a)})} => {
      let query = createQuery({title: a})
      let res = await Faunadb.client.query(. query)
      {
        "statusCode": 200,
        "body": JSON.stringifyAny(res),
      }
    }
  | _ => {
      "statusCode": 400,
      "body": JSON.stringifyAny({"error": "body missing text"}),
    }
  }
}

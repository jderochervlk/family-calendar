type event = {path: string, body: string}

let handler = async (event: event) => {
  let createQuery = (t: JSON.t) =>
    Faunadb.query["Create"](Faunadb.query["Ref"]("classes/todo"), {data: t})

  let b = JSON.parseExn(event.body)

  let query = createQuery(b)
  let res = await Faunadb.client.query(. query)
  {
    "statusCode": 200,
    "body": JSON.stringifyAny(res),
  }
}

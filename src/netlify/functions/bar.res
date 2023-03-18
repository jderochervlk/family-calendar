// let handler = query["Create"](query["Ref"]("foo"), {title: "foo"})

type event = {path: string, queryStringParameters: {"name": option<string>}}

let handler = async (event: event, _context) => {
  //   let message = event.queryStringParameters["name"]->Option.map(String.toUpperCase)

  let q = Faunadb.query["Create"](Faunadb.query["Ref"]("classes/todo"), {title: "foo"})

  let res = await Faunadb.client.query(q)

  {
    "statusCode": 200,
    "body": JSON.stringifyAny(res),
  }
}

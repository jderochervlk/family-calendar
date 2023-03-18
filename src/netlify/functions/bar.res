type event = {path: string, queryStringParameters: {"name": option<string>}}

let handler = async (event: event, _context) => {
  //   let message = event.queryStringParameters["name"]->Option.map(String.toUpperCase)

  let q = await Faunadb.query["Create"](Faunadb.query["Ref"]("classes/todo"), {title: "foo"})

  Console.log(q)

  let res = await Faunadb.client.query(q)

  Console.log(res)

  {
    "statusCode": 200,
    "body": JSON.stringifyAny(res),
  }
}

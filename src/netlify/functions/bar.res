// let handler = query["Create"](query["Ref"]("foo"), {title: "foo"})

type event = {path: string, queryStringParameters: {"name": option<string>}}

let handler = async (event: event, _context) => {
  //   let message = event.queryStringParameters["name"]->Option.map(String.toUpperCase)

  let res = await Faunadb.query["Create"](Faunadb.query["Ref"]("classes/todo"), {title: "foo"})

  Console.log(res)

  {
    "statusCode": 200,
    "body": "foo bar",
  }
}

type event = {path: string, queryStringParameters: {"name": option<string>}}

let handler = async () => {
  let q = Faunadb.query["Create"](Faunadb.query["Ref"]("classes/todo"), {data: {title: "working!"}})

  Console.log(q)

  let res = await Faunadb.client.query(. q)

  {
    "statusCode": 200,
    "body": JSON.stringifyAny(res),
  }
}

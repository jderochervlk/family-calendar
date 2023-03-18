type event = {path: string, queryStringParameters: {"name": option<string>}}

let handler = async (event: event, _context) => {
  let message = event.queryStringParameters["name"]->Option.map(String.toUpperCase)

  switch message {
  | Some(name) => {
      "statusCode": 200,
      "body": Js.Json.stringifyAny({"message": "Hello " ++ name}),
    }
  | None => {
      "statusCode": 200,
      "body": Js.Json.stringifyAny({"message": "No name was provided :("}),
    }
  }
}

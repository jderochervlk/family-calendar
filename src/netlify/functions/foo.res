type event = {path: string, queryStringParameters: {"name": option<string>}}

let handler = async (event: event, _context) => {
  let message = switch event.queryStringParameters["name"] {
  | Some(name) => "Hello " ++ name
  | None => "No parameter for name was found"
  }
  {
    "statusCode": 200,
    "body": Js.Json.stringifyAny({"message": message}),
  }
}

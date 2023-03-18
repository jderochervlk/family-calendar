type event = {path: string, queryStringParameters: {"name": option<string>}}

let handler = async (event: event, _context) => {
  Js.Console.log(event.queryStringParameters)
  let message = switch event.queryStringParameters["name"] {
  | Some(a) => "Hello " ++ a
  | None => "No parameter for name was found"
  }
  {
    "statusCode": 200,
    "body": Js.Json.stringifyAny({"message": message}),
  }
}

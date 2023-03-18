type event = {path: string, queryStringParameters: {"a": option<string>}}

let handler = async (event: event, _context) => {
  Js.Console.log(event.queryStringParameters)
  let message = switch event.queryStringParameters["a"] {
  | Some(a) => "Hello " ++ a
  | None => "No parameter for a was found"
  }
  {
    "statusCode": 200,
    "body": Js.Json.stringifyAny({"message": message}),
  }
}

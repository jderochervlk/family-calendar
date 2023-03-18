type event = {"path": string}

let handler = async (event: event, _context) => {
  Js.Console.log(event)
  {
    "statusCode": 200,
    "body": Js.Json.stringifyAny({"message": "Hello World"}),
  }
}

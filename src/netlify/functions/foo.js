// Generated by ReScript, PLEASE EDIT WITH CARE


async function handler($$event, _context) {
  var name = $$event.queryStringParameters.name;
  var message = name !== undefined ? "Hello " + name : "No parameter for name was found";
  return {
          statusCode: 200,
          body: JSON.stringify({
                message: message
              })
        };
}

export {
  handler ,
}
/* No side effect */
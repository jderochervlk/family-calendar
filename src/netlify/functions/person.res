type person = {
  id: int,
  firstName: string,
  lastName: string,
}

let personStruct = S.object(o => {
  id: o->S.field("Id", S.int()),
  firstName: o->S.field("FirstName", S.string()),
  lastName: o->S.field("LastName", S.string()),
})

type event = {path: string, body: string}

let handler = async (event: event) => {
  let createQuery = (t: JSON.t) =>
    Faunadb.query["Create"](Faunadb.query["Ref"]("classes/person"), {data: t})

  let b = event.body->S.parseWith(personStruct)

  let query = createQuery(b)
  switch query {
  | Belt.Result.OK(data) => {
      let res = await Faunadb.client.query(. data)
      {
        "statusCode": 200,
        "body": JSON.stringifyAny(res),
      }
    }
  | Belt.Result.Error(err) => {
      "statusCode": 400,
      "body": JSON.stringifyAny(err),
    }
  }
}

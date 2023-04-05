open Zora
open ReScriptStruct.S

let expected: Data.person = {
  id: 1,
  name: "John Doe",
}

zoraBlock("should parse good data", t => {
  let result = MockPerson.mock->parseWith(Data.personStruct)
  t->equal(result, Belt.Result.Ok(expected), "should be ok")
})

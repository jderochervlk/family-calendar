open Zora
open ReScriptStruct.S

let expected: Data.person = {
  id: 1,
  firstName: "John",
  lastName: "Doe",
}

zoraBlock("should parse good data", t => {
  let result = MockPerson.mock->parseWith(Person.personStruct)
  t->equal(result, Belt.Result.Ok(expected), "Should be a tasty dessert")
})

open ReScriptStruct.S

type person = {
  id: int,
  firstName: string,
  lastName: string,
}

let personStruct = object(o => {
  id: o->field("Id", int()),
  firstName: o->field("FirstName", string()),
  lastName: o->field("LastName", string()),
})

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

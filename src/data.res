open ReScriptStruct.S

type person = {
  id: int,
  name: string,
}

let personStruct = object(o => {
  id: o->field("Id", int()),
  name: o->field("Name", string()),
})

type appointment = {startDate: string, endDate: string, title: string, people: array<int>, id: int}

let appointmentStruct = object(o => {
  id: o->field("Id", int()),
  startDate: o->field("StartDate", string()),
  endDate: o->field("EndDate", string()),
  title: o->field("Title", string()),
  people: o->field("People", array(int())),
})

type grouping = {resourceName: string}

let groupingStruct = object(o => {
  resourceName: o->field("resourceName", string()),
})

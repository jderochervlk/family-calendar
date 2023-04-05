type changes = {data: array<Data.appointment>}
type commitChanges = (
  ~added: option<Data.appointment>=?,
  ~changed: option<Data.appointment>=?,
  ~deleted: option<int>=?,
  unit,
) => option<changes>

@module("@devexpress/dx-react-scheduler") @react.component
external make: (~onCommitChanges: commitChanges) => React.element = "EditingState"

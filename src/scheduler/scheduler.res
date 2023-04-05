type data = array<Data.appointment>

@module("@devexpress/dx-react-scheduler-material-ui") @react.component
external make: (~data: data, ~children: React.element) => React.element = "Scheduler"

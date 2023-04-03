type entry = {startDate: string, endDate: string, title: string}
type data = array<entry>

@module("@devexpress/dx-react-scheduler-material-ui") @react.component
external make: (~data: data, ~children: React.element) => React.element = "Scheduler"

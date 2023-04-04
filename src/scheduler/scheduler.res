type entry = {startDate: string, endDate: string, title: string, members: array<int>, id: int}
type data = array<entry>

@module("@devexpress/dx-react-scheduler-material-ui") @react.component
external make: (~data: data, ~children: React.element) => React.element = "Scheduler"

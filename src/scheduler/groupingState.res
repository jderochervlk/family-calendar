type grouping = {resourceName: string}

@module("@devexpress/dx-react-scheduler") @react.component
external make: (~grouping: array<grouping>) => React.element = "GroupingState"

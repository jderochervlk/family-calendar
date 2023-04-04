type resourceInstance = {id: int, text: string}
type resource = {id: int, fieldName: string, instances: array<resourceInstance>}

@module("@devexpress/dx-react-scheduler-material-ui") @react.component
external make: (~mainSourceName: string, ~data: array<resource>) => React.element = "Resources"

type resourceInstance = {id: int, text: string}
type resource = {
  fieldName: string,
  instances: array<resourceInstance>,
  allowMultiple: bool,
}

@module("@devexpress/dx-react-scheduler-material-ui") @react.component
external make: (~data: array<resource>, ~mainResourceName: string) => React.element = "Resources"

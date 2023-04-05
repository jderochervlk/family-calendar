let currentDate = "2018-11-01"

@react.component
let make = () => {
  <Scheduler
    data=[
      {
        startDate: "2018-11-01T09:45",
        endDate: "2018-11-01T11:00",
        title: "Take out trash",
        people: [2],
        id: 1,
      },
      {
        startDate: "2018-11-01T09:45",
        endDate: "2018-11-01T12:00",
        title: "Work",
        people: [1],
        id: 2,
      },
      {
        startDate: "2018-11-01T08:30",
        endDate: "2018-11-01T15:30",
        title: "School",
        people: [3],
        id: 3,
      },
      {
        startDate: "2018-11-01T09:00",
        endDate: "2018-11-01T14:00",
        title: "Daycare",
        people: [4],
        id: 1,
      },
    ]>
    <GroupingState
      grouping=[
        {
          resourceName: "people",
        },
      ]
    />
    <EditingState
      onCommitChanges={(~added=None, ~changed=None, ~deleted=None, ()) => {
        Console.log3(added, changed, deleted)
        None
      }}
    />
    <ViewState currentDate />
    <DayView startDayHour=7 endDayHour=23 intervalCount=1 />
    <Appointments />
    <Resources
      mainResourceName="people"
      data=[
        {
          fieldName: "people",
          instances: [
            {id: 1, text: "Roxane"},
            {id: 2, text: "Josh"},
            {id: 3, text: "Ellie"},
            {id: 4, text: "Logan"},
          ],
          allowMultiple: true,
        },
      ]
    />
    <IntegratedGrouping />
    <IntegratedEditing />
    <AppointmentTooltip showOpenButton=true />
    <AppointmentForm />
    <GroupingPanel />
    <DragDropProvider />
  </Scheduler>
}

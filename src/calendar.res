let currentDate = "2018-11-01"

@react.component
let make = () => {
  <Scheduler
    data=[
      {
        startDate: "2018-11-01T09:45",
        endDate: "2018-11-01T11:00",
        title: "Meeting",
        members: [1, 2],
        id: 1,
      },
    ]>
    <ViewState currentDate />
    <DayView startDayHour=9 endDayHour=14 />
    <Appointments />
  </Scheduler>
}

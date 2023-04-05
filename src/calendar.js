// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var JsxRuntime = require("react/jsx-runtime");
var DxReactScheduler = require("@devexpress/dx-react-scheduler");
var DxReactSchedulerMaterialUi = require("@devexpress/dx-react-scheduler-material-ui");

var currentDate = "2018-11-01";

function Calendar(props) {
  return JsxRuntime.jsxs(DxReactSchedulerMaterialUi.Scheduler, {
              data: [
                {
                  startDate: "2018-11-01T09:45",
                  endDate: "2018-11-01T11:00",
                  title: "Take out trash",
                  people: [2],
                  id: 1
                },
                {
                  startDate: "2018-11-01T09:45",
                  endDate: "2018-11-01T12:00",
                  title: "Work",
                  people: [1],
                  id: 2
                },
                {
                  startDate: "2018-11-01T08:30",
                  endDate: "2018-11-01T15:30",
                  title: "School",
                  people: [3],
                  id: 3
                },
                {
                  startDate: "2018-11-01T09:00",
                  endDate: "2018-11-01T14:00",
                  title: "Daycare",
                  people: [4],
                  id: 1
                }
              ],
              children: [
                JsxRuntime.jsx(DxReactScheduler.GroupingState, {
                      grouping: [{
                          resourceName: "people"
                        }]
                    }),
                JsxRuntime.jsx(DxReactScheduler.EditingState, {
                      onCommitChanges: (function (addedOpt, changedOpt, deletedOpt, param) {
                          var added = addedOpt !== undefined ? Caml_option.valFromOption(addedOpt) : undefined;
                          var changed = changedOpt !== undefined ? Caml_option.valFromOption(changedOpt) : undefined;
                          var deleted = deletedOpt !== undefined ? Caml_option.valFromOption(deletedOpt) : undefined;
                          console.log(added, changed, deleted);
                        })
                    }),
                JsxRuntime.jsx(DxReactScheduler.ViewState, {
                      currentDate: currentDate
                    }),
                JsxRuntime.jsx(DxReactSchedulerMaterialUi.DayView, {
                      startDayHour: 7,
                      endDayHour: 23,
                      intervalCount: 1
                    }),
                JsxRuntime.jsx(DxReactSchedulerMaterialUi.Appointments, {}),
                JsxRuntime.jsx(DxReactSchedulerMaterialUi.Resources, {
                      data: [{
                          fieldName: "people",
                          instances: [
                            {
                              id: 1,
                              text: "Roxane"
                            },
                            {
                              id: 2,
                              text: "Josh"
                            },
                            {
                              id: 3,
                              text: "Ellie"
                            },
                            {
                              id: 4,
                              text: "Logan"
                            }
                          ],
                          allowMultiple: true
                        }],
                      mainResourceName: "people"
                    }),
                JsxRuntime.jsx(DxReactScheduler.IntegratedGrouping, {}),
                JsxRuntime.jsx(DxReactScheduler.IntegratedEditing, {}),
                JsxRuntime.jsx(DxReactSchedulerMaterialUi.AppointmentTooltip, {
                      showOpenButton: true
                    }),
                JsxRuntime.jsx(DxReactSchedulerMaterialUi.AppointmentForm, {}),
                JsxRuntime.jsx(DxReactSchedulerMaterialUi.GroupingPanel, {}),
                JsxRuntime.jsx(DxReactSchedulerMaterialUi.DragDropProvider, {})
              ]
            });
}

var make = Calendar;

exports.currentDate = currentDate;
exports.make = make;
/* react/jsx-runtime Not a pure module */

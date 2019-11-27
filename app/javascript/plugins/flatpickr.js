import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css"

flatpickr(".datepicker", {
  enableTime: true,
  minDate: "today",
  minTime: "12:00",
  maxTime: "16:00"
})

// flatpickr(".timepicker", {
//   enableTime: true,
//   noCalendar: true,

// })

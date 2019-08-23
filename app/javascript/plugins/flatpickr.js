import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/material_red.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  plugins: [new rangePlugin({ input: "#booking_checkout"})],
  altInput: true,
  enableTime: true,
  dateFormat: "Y-m-d H:i",
  altFormat: "j, F Y H:i"
});

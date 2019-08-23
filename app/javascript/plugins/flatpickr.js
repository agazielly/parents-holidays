import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/material_red.css"

flatpickr(".datepicker", {mode: "range",altInput: true,enableTime: true,
    dateFormat: "Y-m-d H:i",altFormat: "j, F Y H:i",})
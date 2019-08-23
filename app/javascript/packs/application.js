import "bootstrap";

//Fonction tooltip sur icônes governess
 $(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
 //Fonction Mapbox
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


//Fonction Booking calendrier 
import "../plugins/flatpickr";

//Animation Aos plugin
import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
AOS.init();

//alert vaidation booking
const show_alert = document.getElementById("show_alert");
const alert_booking = document.querySelector(".alert_booking");
console.log(alert_booking);
alert_booking.addEventListener("click", (event) => {
  show_alert.classList.remove("d-none");
});

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

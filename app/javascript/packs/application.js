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
// console.log(alert_booking);
if (alert_booking) {
  alert_booking.addEventListener("click", (event) => {
    show_alert.classList.remove("d-none");
  });
}

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

// selectionner tous les tab links
const dashboard_tabs = document.querySelectorAll(".tab-underlined");
// pour chaque tab link
dashboard_tabs.forEach((dashboard_tab) => {
  // écouter le click
  dashboard_tab.addEventListener("click", (event) => {
    // Do something (callback)
    // selectionner tous les tab-content
    const hide_tabs = document.querySelectorAll(".tab-content")
    // leur mettre à tous la classe d-none
    hide_tabs.forEach((hide_tab) => {
      hide_tab.classList.add("d-none")
    })
    const active_tab = document.querySelector(".active")
    active_tab.classList.remove("active")
    // recupere le data-target du lien cliqué
    const shown_tab = document.getElementById(event.currentTarget.dataset.target)
    // selectionner le tab-content à affiher => enlever la classe d-none
    shown_tab.classList.remove("d-none")
    dashboard_tab.classList.add("active")
  });
})

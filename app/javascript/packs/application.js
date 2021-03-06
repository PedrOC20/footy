import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { navAction } from '../plugins/navbar_slide';
import { navScroll } from '../plugins/scroll_navbar';
import { navNoLogWithScroll } from '../plugins/nav_no_log_with_scroll';
import { notifyMe } from '../plugins/stupid_notification';
import { checkbox } from '../plugins/checkbox';
import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

initMapbox();
initAutocomplete();
checkbox();



const alert = document.querySelector(".alert");

if (alert) {
  const close = document.querySelector(".alert .close");
  console.log("hello");
  setTimeout(function() { console.log(close); close.click(); }, 3000);
};



const navbar = document.querySelector(".footy-navbar")
if(navbar) {
  navAction();
  navScroll();
}

const navbarNoLog = document.querySelector(".nav-no-log");
if (navbarNoLog) {
  navNoLogWithScroll();
}

// register service worker
if ('serviceWorker' in navigator && 'PushManager' in window) {
  console.log('Service Worker and Push is supported');
  navigator.serviceWorker.register('/sw.js')
  .then(function(swReg) {
    console.log('Service Worker is registered', swReg);
  })
  .catch(function(error) {
    console.error('Service Worker Error', error);
  });
} else {
  console.warn('Push messaging is not supported');
}
notifyMe();



import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { navAction } from '../plugins/navbar_slide';
import { navScroll } from '../plugins/scroll_navbar';
import { navNoLogWithScroll } from '../plugins/nav_no_log_with_scroll';
import { checkbox } from '../plugins/checkbox';

initMapbox();
initAutocomplete();
checkbox();

const navbar = document.querySelector(".footy-navbar")
if(navbar) {
  navAction();
  navScroll();
}

const navbarNoLog = document.querySelector(".nav-no-log");
if (navbarNoLog) {
  navNoLogWithScroll();
}

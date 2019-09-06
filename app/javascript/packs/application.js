import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { navAction } from '../plugins/navbar_slide';
import { navScroll } from '../plugins/scroll_navbar';

initMapbox();
initAutocomplete();

const navbar = document.querySelector(".footy-navbar")
if(navbar) {
  navAction();
  navScroll();
}

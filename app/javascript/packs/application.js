import "bootstrap";
import "../plugins/flatpickr"
import { getTotalPrice } from '../components/price';

// import { iconChanger } from './homepage'
// iconChanger();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import 'select2/dist/css/select2.css';
import { initSelect2 } from '../components/init_select2';

import { previewImageOnFileSelect } from '../components/photo_preview';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete'


if (document.URL.match(/listings\/\d+/)) {
  getTotalPrice();
}

initMapbox();
initAutocomplete();

initSelect2();
previewImageOnFileSelect();

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

import { bannerChanger } from '../components/banner_changer'

import { initSweetalert } from '../components/init_sweetalert';

if (document.URL.match(/listings\/\d+/)) {
  getTotalPrice();
}

initMapbox();
initAutocomplete();

initSelect2();

// bannerChanger();

previewImageOnFileSelect();


initSweetalert('#new-listing-alert', {
  title: "New Listing Made!",
  text: "Soon everyone will be napping on your couch!",
  icon: "success"}, (value) => {
  if (value) {
    const linkbtn = document.querySelector('#new-listing-button').click();
    console.log(linkbtn);
    linkbtn.click();
  }
});

initSweetalert('#new-booking-request-alert', {
  title: "Booking Requested!",
  text: "The nap's host will soon get back to you!",
  icon: "success"}, (value) => {
  if (value) {
    const link = document.querySelector('#new-booking-button');
    console.log(link);
    link.click();
  }
});

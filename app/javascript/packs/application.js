import "bootstrap";
import "../plugins/flatpickr"
import { getTotalPrice } from '../components/price';
import { initStarRating } from '../plugins/init_star_rating';

// import { iconChanger } from './homepage'
// iconChanger();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import 'select2/dist/css/select2.css';
import { initSelect2 } from '../components/init_select2';

import { previewImageOnFileSelect } from '../components/photo_preview';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initSweetalert } from '../components/init_sweetalert';


initMapbox();
initAutocomplete();
initStarRating();


// import { bannerChanger } from '../components/banner_changer';
// import { setBckImage } from '../components/banner_changer';
// export { backgroundSequence } from '../components/banner_changer';



if (document.URL.match(/listings\/\d+/)) {
  getTotalPrice();
}

initMapbox();
initAutocomplete();

initSelect2();

// bannerChanger();
// bannerChanger();
// setBckImage();
// backgroundSequence();


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

import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const addMarkers = (map, markers) => {
    markers.forEach((marker) => {

    // Create a HTML element for your custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '28px';
    element.style.height = '28px';

    // create popup element
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
}

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb'
    });

    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //                                   mapboxgl: mapboxgl }));

    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkers(map, markers)
    fitMapToMarkers(map, markers)
  }
};

export { initMapbox };

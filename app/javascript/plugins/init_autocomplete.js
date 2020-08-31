import places from 'places.js';
import 'mapbox-gl/dist/mapbox.css'
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initAutocomplete = () => {
  const addressInput = document.getElementsByClassName('mapboxgl-ctrl-geocoder--input');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
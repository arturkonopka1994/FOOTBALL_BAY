import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'



const buildMap = () => {
  const mapElement = document.getElementById('map-venueshow');
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map-venueshow',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
  
  map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl }));
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 3000 });
};

const initMapboxShow = () => {
  const mapElement = document.getElementById('map-venueshow');
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapboxShow };
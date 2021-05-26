import mapboxgl from 'mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const createMap = () => {
  const map = new mapboxgl.Map({
    container: 'map', // container ID
    style: 'mapbox://styles/jpheos481/ckp57owul1cxs18peq25o70i2', // style URL
    center: [-74.5, 40], // starting position [lng, lat]
    zoom: 9 // starting zoom
  });
  return map;
}

const createMarkers = (map, markersData) => {
  markersData.forEach(markerData => {
    console.log(markerData);
    const popup = new mapboxgl.Popup({ offset: 25 }).setHTML(markerData.popup_html);

    const el = document.createElement('div');
    el.className = 'marker';
    el.style.backgroundImage = `url(${markerData.image_url})`;
    el.style.width = '40px';
    el.style.height = '40px';
    el.style.backgroundSize = '100%';


    const marker = new mapboxgl.Marker(el)
      .setLngLat([markerData.lng, markerData.lat])
      .setPopup(popup)
      .addTo(map);
  });
}

const fitMap = (map, markersData) => {
  const bounds = new mapboxgl.LngLatBounds();
  markersData.forEach(markerData => bounds.extend([markerData.lng, markerData.lat]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
}

const initMapbox = () => {
  const mapElement = document.querySelector('#map');

  if (!mapElement)
    return

  mapboxgl.accessToken = mapElement.dataset.apiKey;

  const markersData = JSON.parse(mapElement.dataset.markers)
  const map = createMap()

  map.addControl(new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    mapboxgl: mapboxgl
  }));

  createMarkers(map, markersData)
  fitMap(map, markersData)
}

export { initMapbox }



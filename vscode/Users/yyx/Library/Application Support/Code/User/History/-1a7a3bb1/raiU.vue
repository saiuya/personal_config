<script setup lang="ts">
import { Loader } from "@googlemaps/js-api-loader";
import { onMounted } from "vue";

// let google: typeof google;
const initMap = async () => {
  let map: google.maps.Map;
  const loader = new Loader({
    apiKey: "AIzaSyAv3GNnkbf_yt5Cuon5W3VmwBN4UnxSkF4",
    version: "weekly",
    libraries: ["places"],
  });
  // const { Map } = (await loader.load().maps.importLibrary("maps")) as google.maps.MapsLibrary;
  let google = await loader.load();
  map = new google.maps.Map(document.getElementById("map") as HTMLElement, {
    center: { lat: 25.0425, lng: 121.5468 },
    zoom: 11,
    mapTypeControl: false,
    fullscreenControl: false,
  });
};

onMounted(() => {
  initMap();
});
</script>

<template>
  <div id="map"></div>
</template>

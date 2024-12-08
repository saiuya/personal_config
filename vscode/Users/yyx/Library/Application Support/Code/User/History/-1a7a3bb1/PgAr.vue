<script setup lang="ts">
import { Loader } from "@googlemaps/js-api-loader";
import { onMounted, ref } from "vue";

// let google: typeof google;
const initMap = async () => {
  // const map = ref();
  const loader = new Loader({
    apiKey: "AIzaSyAv3GNnkbf_yt5Cuon5W3VmwBN4UnxSkF4",
    version: "weekly",
    libraries: ["places"],
  });
  // const { Map } = (await loader.load().maps.importLibrary("maps")) as google.maps.MapsLibrary;
  // let google = await loader.load();
  // let { Map } = (await loader.importLibrary("maps")) as google.maps.MapsLibrary;
  // map.value = new Map(document.getElementById("maap") as HTMLElement, {
  //   center: { lat: 25.0425, lng: 121.5468 },
  //   zoom: 5,
  //   // mapTypeControl: false,
  //   // fullscreenControl: false,
  // });

  loader
    .importLibrary("maps")
    .then(({ Map }) => {
      new Map(window.document.getElementById("maap") as HTMLElement, {
        center: { lat: 25.0425, lng: 121.5468 },
        zoom: 5,
        mapTypeControl: false,
        fullscreenControl: false,
      });
    })
    .catch((e) => {
      // do something
    });
};

onMounted(() => {
  initMap();
});
</script>

<template>
  <div id="maap" class="maap"></div>
</template>

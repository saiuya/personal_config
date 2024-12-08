<script setup lang="ts">
import HelloWorld from "./components/HelloWorld.vue";

import { Loader } from "@googlemaps/js-api-loader";

const loader = new Loader({
  apiKey: "AIzaSyAv3GNnkbf_yt5Cuon5W3VmwBN4UnxSkF4",
  version: "weekly",
});

loader
  .importLibrary("maps")
  .then(({ Map }) => {
    new Map(document.getElementById("map") as HTMLElement, {
      center: { lat: 25.0425, lng: 121.5468 },
      zoom: 4,
    });
  })
  .catch((e) => {
    // do something
  });
</script>

<template>
  <div>
    <a href="https://vitejs.dev" target="_blank">
      <img src="/vite.svg" class="logo" alt="Vite logo" />
    </a>
    <a href="https://vuejs.org/" target="_blank">
      <img src="./assets/vue.svg" class="logo vue" alt="Vue logo" />
    </a>
  </div>
  <HelloWorld msg="Vite + Vue" />

  <div id="map"></div>
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>

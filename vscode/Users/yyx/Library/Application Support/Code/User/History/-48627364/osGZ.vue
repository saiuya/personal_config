<script setup lang="ts">
import { Loader } from "@googlemaps/js-api-loader";
import { onMounted, ref, watch } from "vue";

const loader = new Loader({
  apiKey: "AIzaSyAv3GNnkbf_yt5Cuon5W3VmwBN4UnxSkF4",
  version: "weekly",
  libraries: ["places"],
  language: "ja",
  region: "JP",
});
let startLabel = ref("那覇市");
let endLabel = ref("琉球大学");

let originPosition = ref("");
let endLabelPosition = ref("");

const mapOptions = {
  center: {
    lat: 26.21,
    lng: 127.67,
  },
  zoom: 15,
};

function updateLabels() {
  originPosition = startLabel;
  endLabelPosition = endLabel;
  () => initMap();
}

onMounted(() => initMap());

// watch([originPosition, endLabelPosition], () => {

// });

async function initMap() {
  let directionsRenderer: google.maps.DirectionsRenderer;
  let directionsService: google.maps.DirectionsService;

  let map: google.maps.Map;

  // markerArray = [];
  // Instantiate a directions service.
  const { DirectionsService } = await loader.importLibrary("routes");
  directionsService = new DirectionsService();
  // Create a map and center it on Manhattan.
  const { Map } = await loader.importLibrary("maps");
  map = new Map(document.getElementById("map") as HTMLElement, mapOptions);
  // Create a renderer for directions and bind it to the map.
  const { DirectionsRenderer } = await loader.importLibrary("routes");
  directionsRenderer = new DirectionsRenderer({ map: map });
  // Instantiate an info window to hold step text.
  // const { InfoWindow } = await loader.importLibrary("maps");
  // stepDisplay = new InfoWindow();
  // Display the route between the start and end selections.
  calculateAndDisplayRoute();
  // Listen to change events from the start and end lists.
  const onChangeHandler = function () {
    calculateAndDisplayRoute();
  };
  (document.getElementById("start") as HTMLElement).addEventListener(
    "change",
    onChangeHandler
  );
  (document.getElementById("end") as HTMLElement).addEventListener(
    "change",
    onChangeHandler
  );
}

async function calculateAndDisplayRoute() {
  let directionsRenderer: google.maps.DirectionsRenderer;
  let directionsService: google.maps.DirectionsService;
  let map: google.maps.Map;

  // Create a map and center it on Manhattan.
  const { Map } = await loader.importLibrary("maps");
  map = new Map(document.getElementById("map") as HTMLElement, mapOptions);
  // Instantiate a directions service.
  const { DirectionsService } = await loader.importLibrary("routes");
  directionsService = new DirectionsService();
  // Create a renderer for directions and bind it to the map.
  const { DirectionsRenderer } = await loader.importLibrary("routes");
  directionsRenderer = new DirectionsRenderer({ map: map });

  // First, remove any existing markers from the map.
  // for (let i = 0; i < markerArray.length; i++) {
  //   markerArray[i].setMap(null);
  // }

  // Retrieve the start and end locations and create a DirectionsRequest using
  // WALKING directions.
  const { TravelMode } = await loader.importLibrary("routes");
  const { TransitMode } = await loader.importLibrary("routes");

  directionsService
    .route({
      // origin: (document.getElementById("start") as HTMLSelectElement).value,
      // destination: (document.getElementById("end") as HTMLSelectElement).value,
      origin: originPosition.value != "" ? originPosition.value : "那覇市",
      destination: endLabelPosition.value != "" ? endLabelPosition.value : "琉球大学",
      travelMode: TravelMode.DRIVING,
      transitOptions: {
        modes: [TransitMode.BUS],
      },
    })
    .then((result) => {
      // Route the directions and pass the response to a function to create
      // markers for each step.
      // (document.getElementById("warnings-panel") as HTMLElement).innerHTML =
      //   "<b>" + result.routes[0].warnings + "</b>";
      directionsRenderer.setDirections(result);
      // showSteps(result, markerArray, stepDisplay, map);
    })
    .catch((e) => {
      window.alert("Directions request failed due to " + e);
    });
}

// async function showSteps(
//   directionResult: google.maps.DirectionsResult,
//   markerArray: google.maps.Marker[],
//   stepDisplay: google.maps.InfoWindow,
//   map: google.maps.Map
// ) {
//   // For each step, place a marker, and add the text to the marker's infowindow.
//   // Also attach the marker to an array so we can keep track of it and remove it
//   // when calculating new routes.
//   const myRoute = directionResult.routes[0].legs[0];
//   const { Marker } = await loader.importLibrary("marker");

//   for (let i = 0; i < myRoute.steps.length; i++) {
//     const marker = (markerArray[i] = markerArray[i] || new Marker());

//     marker.setMap(map);
//     marker.setPosition(myRoute.steps[i].start_location);
//     attachInstructionText(stepDisplay, marker, myRoute.steps[i].instructions, map);
//   }
// }

// async function attachInstructionText(
//   stepDisplay: google.maps.InfoWindow,
//   marker: google.maps.Marker,
//   text: string,
//   map: google.maps.Map
// ) {
//   const { event } = await loader.importLibrary("core");

//   event.addListener(marker, "click", () => {
//     // Open an info window when the marker is clicked on, containing the text
//     // of the step.
//     stepDisplay.setContent(text);
//     stepDisplay.open(map, marker);
//   });
// }
</script>

<template>
  <!-- <div id="floating-panel">
    <b>起点: </b>
    <select id="start">
      <option value="QP74+CQ 金水区 中国河南省郑州市">Penn Station</option>
      <option value="grand central station, new york, ny">Grand Central Station</option>
      <option value="625 8th Avenue, New York, NY, 10018">
        Port Authority Bus Terminal
      </option>
      <option value="staten island ferry terminal, new york, ny">
        Staten Island Ferry Terminal
      </option>
      <option value="101 E 125th Street, New York, NY">Harlem - 125th St Station</option>
    </select>
    &nbsp;
    <b>目的地: </b>
    <select id="end">
      <option value="QMPC+RX 金水区 中国河南省郑州市">City Hall</option>
      <option value="W 49th St & 5th Ave, New York, NY 10020">Rockefeller Center</option>
      <option value="moma, New York, NY">MOMA</option>
      <option value="350 5th Ave, New York, NY, 10118">Empire State Building</option>
      <option value="253 West 125th Street, New York, NY">Apollo Theater</option>
      <option value="1 Wall St, New York, NY">Wall St</option>
    </select>
  </div> -->

  <div id="floating-panel">
    <b>起点: </b>
    <input type="text" v-model="startLabel" placeholder="请输入出发地址" />
    &nbsp;
    <b>目的地: </b>
    <input type="text" v-model="endLabel" placeholder="请输入目的地" />
    <button @click="updateLabels">Enter</button>
  </div>

  <div id="map" style="width: 800px; height: 500px"></div>
  <!-- &nbsp; -->
  <!-- <div id="warnings-panel"></div> -->
</template>

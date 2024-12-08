import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import { Loader } from "@googlemaps/js-api-loader";


const mapOptions = {
  center: {
    lat: 0,
    lng: 0
  },
  zoom: 4
};

const loader = new Loader({
  apiKey: "AIzaSyAv3GNnkbf_yt5Cuon5W3VmwBN4UnxSkF4",
  version: "weekly",
  libraries: ["places"]
});

loader
  .importLibrary('maps')
  .then(({Map}) => {
    new Map(document.getElementById("map") as HTMLElement, mapOptions);
  })


function App() {
  // const [count, setCount] = useState(0)

  return (
    <>
      {/* <div>
        <a href="https://vitejs.dev" target="_blank">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React</h1>
      <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
        <p>
          Edit <code>src/App.tsx</code> and save to test HMR
        </p>
      </div> */}
      <p className="read-the-docs">
        Click on the Vite and React logos to learn more
      </p>

      <div id="map"></div>
    </>
  )
}

export default App

import './App.css'

import reactLogo from './assets/react.svg'
import { useState } from 'react'

function App() {
  const [count, setCount] = useState(0)

  return (
    <div className="App">
    <div>
      <a href="https://reactjs.org" target="_blank">
        <img src={reactLogo} className="logo react" alt="React logo" />
      </a>
    </div>
    <h1>Hello from App 2</h1>
  </div>
  )
}

export default App

import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/Hello'
import Welcome from './components/Welcome'


function App() {
  const [count, setCount] = useState(0)

  return ( 
  <Welcome/>
    <Hello/>

  )
}

export default App

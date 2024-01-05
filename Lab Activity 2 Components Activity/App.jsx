import { useState } from 'react'
import './App.css'
import Todolist from './components/ToDoList'
import Movielist from './components/MoVieList'
import Booklist from './components/Booklist'
import Welcome from './components/WelCome'
import Hello from './components/Hello'

function App() {
  const [count, setCount] = useState(0)

  return ( 
    <>
    <Hello/>
    <Welcome/>
    <Todolist/>
    <Movielist/>
    <Booklist/>
    </>
  )
}

export default App

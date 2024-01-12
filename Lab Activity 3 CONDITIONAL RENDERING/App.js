import React from 'react';
import './style.css';
import './components/demo1.jsx';
import Demo1 from './components/demo1';
import Demo2 from './components/demo2';
import Demo3 from './components/demo3';
import Demo4 from './components/demo4';

export default function App() {
  return (
  <div class ="DEMOS">
    
    <h4>Demo 1</h4>
    <Demo1/>
    
    <h4>Demo 2</h4>
    <Demo2 isRainy ={false} />
    
    <h4>Demo 3</h4>
    <Demo3 isRainy ={false} />
  
    <h4>Demo 4</h4>
    <Demo4 isRainy ={true} />
  

  
  </div>);
}

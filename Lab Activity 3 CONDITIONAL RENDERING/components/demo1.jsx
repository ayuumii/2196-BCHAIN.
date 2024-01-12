import React from 'react';
function Greeting() {
  return <h1>Hello! I am a standard function.</h1>;
}

const ArrowGreeting = () => <h1>Hello! I am an arrow function.</h1>;

function ShinyButton() {
  const handleClick = () => {
    alert('Congrats!! You clicked the button');
  };
  return <button onClick={handleClick}>Do NOT Click thisButton!</button>;
}
export default ShinyButton;

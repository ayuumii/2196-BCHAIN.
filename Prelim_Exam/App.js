import React from 'react';
import './style.css';

const App = () => {
  const items = {
    Strawhat: true,
    GumGumFruit: false,
    RedVest: true,
  };
  return (
    <div>
      <h1>Items To Bring</h1>
      <div>
        <p className={`item ${items.Strawhat ? 'present' : 'absent'}`}>
          {items.Strawhat ? 'Strawhat' : 'Strawhat'}
        </p>

        <p
          className={`item ${items.GumGumFruit ? 'present' : 'absent'}`}
        >
          {items.GumGumFruit
            ? 'Gum Gum Fruit'
            : 'Gum Gum Fruit'}
        </p>

        <p className={`item ${items.RedVest ? 'present' : 'absent'}`}>
          {items.RedVest ? 'Red Vest' : 'Red Vest'}
        </p>
      </div>

      
    </div>
  );
};

export default App;

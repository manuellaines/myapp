// import './App.css';
import React from 'react';
import {Routes , Route} from 'react-router-dom'
import Depense from './compte/depense';
export default function App(){
  return(
    <div className="App">
      <Routes>
        <Route path="/" element={ <Depense/> } />
       
        {/* <Route path="/temps" element={ <Temps/> } /> */}
      </Routes>
    </div>
  )
}
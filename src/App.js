// import './App.css';
import React from 'react';
import {Routes , Route} from 'react-router-dom'
import Depense from './compte/depense';
import ListDepense from './compte/listdepense';
import Login from './user.js/login';
import Sign from './user.js/signup';
export default function App(){
  return(
    <div className="App">
      <Routes>
        <Route path="/" element={ <Depense/> } />
        <Route path="/listdepense" element={ <ListDepense/> } />
        <Route path="/login" element={ <Login/> } />
        <Route path="/sign" element={ <Sign/> } />
        {/* <Route path="/temps" element={ <Temps/> } /> */}
      </Routes>
    </div>
  )
}
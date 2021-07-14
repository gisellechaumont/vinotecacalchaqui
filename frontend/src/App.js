import React, { useState, useEffect } from 'react'
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigationBar from './components/NavBar';
import PubliList from './components/PubliList';
import Envio from './components/Envio';
import SearchBar from './components/SearchBar'

import { } from 'react-router-dom';

function App() {
  const [user, setUser] = useState(null);
  
  useEffect(checkUser, []);

  function checkUser() {
    fetch('http://localhost:8000/auth/check', {
      credentials: 'include',
    })
      .then((response) => response.json())
      .then((data) => {
        updateUser(data.data);
      });
  }

  const updateUser = (newUser) => {
    setUser(newUser);
  };

  return <> <Envio /> <NavigationBar user={user}  updateUser={updateUser} /> <SearchBar /> <PubliList /> </>
}

export default App;

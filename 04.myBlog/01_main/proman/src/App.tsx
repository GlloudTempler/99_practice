import React from 'react';
import logo from './logo.svg';
import './App.css';
import { Route, Routes } from 'react-router-dom';
import Home from './pages/Home';
import Nav from './components/Nav';

function App() {
  return (
    <div className="App">
      {/* 메뉴 */}
      <Nav/>
      {/* 본문 */}
      <Home/>
    </div>
  );
}

export default App;

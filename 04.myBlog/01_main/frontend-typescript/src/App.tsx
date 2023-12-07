import React from 'react';
import Header from './components/common/Header';
import Home from './pages/Home';
import './assets/css/styles.css'

function App() {
  return (
    <div>
      {/* 헤더 */}
      <Header/>

      {/* 본문 */}
      <Home/>
    </div>
  );
}

export default App;

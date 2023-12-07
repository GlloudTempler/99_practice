
import React from 'react'
import {Link} from 'react-router-dom';

function Header() {
  return (
    <div>
        <nav className='navbar'>
            <div className='container'>
                {/* 메뉴 제목 시작 */}
                <Link to="/" className="navbar-brand">
                    <i class="fab fa-apple"></i>
                </Link>
                {/* 메뉴 제목 끝 */}
                <button
                className='navbar-toggler'
                type='button'
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls='navbarSupportedContent'
                aria-expanded="false"
                aria-label='Toggle navigation'
                >
                    <span className='navbar-toggler-icon'></span>
                </button>

                {/* 메뉴 시작 */}
                <div className='collapse navbar-collapse' id='navbarSupportedContent'>
                    <ul className='navbar-nav'>
                        <li className='nav-item'>
                            <Link to="/#">
                                Mac
                            </Link>
                        </li>
                        <li className='nav-item'>
                            <Link to="/#">
                                iPad
                            </Link>
                        </li>
                        <li className='nav-item'>
                            <Link to="/#">
                                iPhone
                            </Link>
                        </li>
                        <li className='nav-item'>
                            <Link to="/#">
                                Watch
                            </Link>
                        </li>
                        <li className='nav-item'>
                            <Link to="/#">
                                Music
                            </Link>
                        </li>
                        <li className='nav-item'>
                            <Link to="/#">
                                고객지원
                            </Link>
                        </li>
                        <li>
                        <Link to='#'>
                            searchLink
                        </Link>
                        </li>
                        <li>
                        <Link to='#'>
                            cartLink
                        </Link>
                        </li>
                    </ul>
                </div>
                {/* 메뉴 끝 */}


                

            </div>
        </nav>
    </div>
  )
}

export default Header;
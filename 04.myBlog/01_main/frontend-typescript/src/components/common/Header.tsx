import React, { useEffect } from "react";
import initMain from "../../assets/js/scripts";

function Header() {
  useEffect(() => {
    initMain();
  }, []);
  return (
    <>
      <nav
        className="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
        id="sideNav"
      >
        {/* page top 이동 버튼 + 사진 */}
        <a className="navbar-brand js-scroll-trigger" href="#page-top">
          <span className="d-block d-lg-none">Clarence Taylor</span>
          <span className="d-none d-lg-block">
            <img
              className="img-fluid img-profile rounded-circle mx-auto mb-2"
              src="assets/img/profile.jpg"
              alt="..."
            />
          </span>
        </a>
        {/* page top 이동 버튼 + 사진 */}
        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        
        
        <div className="collapse navbar-collapse" id="navbarResponsive">
          <ul className="navbar-nav">
            {/* about */}
            <li className="nav-item">
              <a className="nav-link js-scroll-trigger" href="#about">
                About
              </a>
            </li>
            {/* about */}

            {/* experience */}
            <li className="nav-item">
              <a className="nav-link js-scroll-trigger" href="#experience">
                Experience
              </a>
            </li>
            {/* experience */}

            {/* education */}
            <li className="nav-item">
              <a className="nav-link js-scroll-trigger" href="#education">
                Education
              </a>
            </li>
            {/* education */}

            {/* skills */}
            <li className="nav-item">
              <a className="nav-link js-scroll-trigger" href="#skills">
                Skills
              </a>
            </li>
            {/* skills */}

            {/* interests */}
            <li className="nav-item">
              <a className="nav-link js-scroll-trigger" href="#interests">
                Interests
              </a>
            </li>
            {/* interests */}

            {/* awards */}
            <li className="nav-item">
              <a className="nav-link js-scroll-trigger" href="#awards">
                Awards
              </a>
            </li>
            {/* awards */}
          </ul>
        </div>
      </nav>
    </>
  );
}

export default Header;

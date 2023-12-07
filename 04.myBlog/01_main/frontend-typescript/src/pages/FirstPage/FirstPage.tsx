import React, { useEffect } from "react";
import initMain from "../../assets/js/scripts";
import "../../assets/css/OwlCarousel.css";

function FirstPage() {
    useEffect(()=>{
        initMain();
    },[])
  return (
    <div>
      <div className="owl-carousel owl-theme carousel-div">
        <div className="position-relative mb-5 owl-item">
          <img
            className="img-fluid p-2 mx-auto"
            src={require("../../assets/img/exImage1.webp")}
            alt=""
          />
        </div>

        <div className="position-relative mb-5 owl-item">
          <img
            className="img-fluid p-2 mx-auto "
            src={require("../../assets/img/exImage2.webp")}
            alt=""
          />
        </div>

        <div className="position-relative mb-5 owl-item">
          <img
            className="img-fluid p-2 mx-auto"
            src={require("../../assets/img/exImage3.webp")}
            alt=""
          />
        </div>
      </div>
      <div className="resume-section-content">
        <h1 className="mb-0">
          Clarence
          <span className="text-primary">Taylor</span>
        </h1>
        <div className="subheading mb-5">
          3542 Berry Street · Cheyenne Wells, CO 80810 · (317) 585-8468 ·
          <a href="mailto:name@email.com">name@email.com</a>
        </div>
        <p className="lead mb-5">
          I am experienced in leveraging agile frameworks to provide a robust
          synopsis for high level overviews. Iterative approaches to corporate
          strategy foster collaborative thinking to further the overall value
          proposition.
        </p>
        <div className="social-icons">
          <a className="social-icon" href="#!">
            <i className="fab fa-linkedin-in"></i>
          </a>
          <a className="social-icon" href="#!">
            <i className="fab fa-github"></i>
          </a>
          <a className="social-icon" href="#!">
            <i className="fab fa-twitter"></i>
          </a>
          <a className="social-icon" href="#!">
            <i className="fab fa-facebook-f"></i>
          </a>
        </div>
      </div>
    </div>
  );
}

export default FirstPage;

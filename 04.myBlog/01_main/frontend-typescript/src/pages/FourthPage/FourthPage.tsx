import React, { useEffect } from "react";
import initMain from "../../assets/js/scripts";
import "../../assets/css/Skills.css";

function FourthPage() {
  useEffect(() => {
    initMain();
  });
  return (
    <>
      {/* <div className="resume-section-content">
        <h2 className="mb-5">Skills</h2>
        <div className="subheading mb-3">Programming Languages & Tools</div>
        <ul className="list-inline dev-icons">
          <li className="list-inline-item">
            <i className="fab fa-html5"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-css3-alt"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-js-square"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-angular"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-react"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-node-js"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-sass"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-less"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-wordpress"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-gulp"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-grunt"></i>
          </li>
          <li className="list-inline-item">
            <i className="fab fa-npm"></i>
          </li>
        </ul>
        <div className="subheading mb-3">Workflow</div>
        <ul className="fa-ul mb-0">
          <li>
            <span className="fa-li">
              <i className="fas fa-check"></i>
            </span>
            Mobile-First, Responsive Design
          </li>
          <li>
            <span className="fa-li">
              <i className="fas fa-check"></i>
            </span>
            Cross Browser Testing & Debugging
          </li>
          <li>
            <span className="fa-li">
              <i className="fas fa-check"></i>
            </span>
            Cross Functional Teams
          </li>
          <li>
            <span className="fa-li">
              <i className="fas fa-check"></i>
            </span>
            Agile Development & Scrum
          </li>
        </ul>
      </div> */}

      {/* <!-- Expertise Start --> */}
      <div className="resume-section-content" id="skill">
        <div className="acd">
          <div className="wow fadeInUp" data-wow-delay="0.1s">
            <h1 className="display-5 mb-5">Skills</h1>
            <p className="mb-4">실무형 프론트 & 벡엔드 경험을 보유</p>
            <h3 className="mb-4">My Skills</h3>
            <div
              className="accordion accordion-flush"
              id="accordionFlushExample"
            >
              <div className="align-items-center">
                {/* 1.html-css */}
                <div className="accordion-item" id="skills">
                  <h2 className="accordion-header" id="flush-headingOne">
                    <button
                      className="accordion-button collapsed"
                      type="button"
                      data-bs-toggle="collapse"
                      data-bs-target="#flush-collapseOne"
                      aria-expanded="false"
                      aria-controls="flush-collapseOne"
                    >
                      <i className="fab fa-html5"></i>
                      {/* progerss */}
                      <div className="skill mb-4">
                        <div className="d-flex justify-content-between">
                          <h5 className="font-weight-bold">
                            HTML & CSS & JS & Jquery
                          </h5>
                          <h5 className="font-weight-bold">95%</h5>
                        </div>
                        <div className="progress">
                          <div
                            className="progress-bar bg-primary"
                            role="progressbar"
                            aria-valuenow={95}
                            aria-valuemin={0}
                            aria-valuemax={100}
                          ></div>
                        </div>
                      </div>
                      {/* progerss */}
                    </button>
                  </h2>
                  <div
                    id="flush-collapseOne"
                    className="accordion-collapse collapse"
                    aria-labelledby="flush-headingOne"
                    data-bs-parent="#accordionFlushExample"
                  >
                    <div className="accordion-body">Placeholder</div>
                  </div>
                </div>
                {/* 1.html-css */}

                {/* react */}
                <div className="accordion-item" id="skills">
                  <h2 className="accordion-header" id="flush-headingTwo">
                    <button
                      className="accordion-button collapsed"
                      type="button"
                      data-bs-toggle="collapse"
                      data-bs-target="#flush-collapseTwo"
                      aria-expanded="false"
                      aria-controls="flush-collapseTwo"
                    >
                      <i className="fab fa-react"></i>
                      {/* progerss */}
                      <div className="skill mb-4">
                        <div className="d-flex justify-content-between">
                          <h5 className="font-weight-bold">React & Vue</h5>
                          <h5 className="font-weight-bold">85%</h5>
                        </div>
                        <div className="progress">
                          <div
                            className="progress-bar bg-warning"
                            role="progressbar"
                            aria-valuenow={85}
                            aria-valuemin={0}
                            aria-valuemax={100}
                          ></div>
                        </div>
                      </div>
                      {/* progerss */}
                    </button>
                  </h2>
                  <div
                    id="flush-collapseTwo"
                    className="accordion-collapse collapse"
                    aria-labelledby="flush-headingTwo"
                    data-bs-parent="#accordionFlushExample"
                  >
                    <div className="accordion-body">Placeholder</div>
                  </div>
                </div>

                {/* jsp / springboot */}
                <div className="accordion-item" id="skills">
                  <h2 className="accordion-header" id="flush-headingThree">
                    <button
                      className="accordion-button collapsed"
                      type="button"
                      data-bs-toggle="collapse"
                      data-bs-target="#flush-collapseThree"
                      aria-expanded="false"
                      aria-controls="flush-collapseThree"
                    >
                      <i className="fab fa-less"></i>
                      {/* progerss */}
                      <div className="skill mb-4">
                        <div className="d-flex justify-content-center">
                          <h5 className="font-weight-bold">
                            JSP & Java & Springboot
                          </h5>
                          <h5 className="font-weight-bold">90%</h5>
                        </div>
                        <div className="progress">
                          <div
                            className="progress-bar bg-danger"
                            role="progressbar"
                            aria-valuenow={90}
                            aria-valuemin={0}
                            aria-valuemax={100}
                          ></div>
                        </div>
                      </div>
                      {/* progerss */}
                    </button>
                  </h2>
                  <div
                    id="flush-collapseThree"
                    className="accordion-collapse collapse"
                    aria-labelledby="flush-headingThree"
                    data-bs-parent="#accordionFlushExample"
                  >
                    <div className="accordion-body">Placeholder</div>
                  </div>
                </div>
                {/* jsp / springboot */}

                {/* oracle DB */}
                <div className="accordion-item" id="skills">
                  <h2 className="accordion-header" id="flush-headingFour">
                    <button
                      className="accordion-button collapsed"
                      type="button"
                      data-bs-toggle="collapse"
                      data-bs-target="#flush-collapseFour"
                      aria-expanded="false"
                      aria-controls="flush-collapseFour"
                    >
                      <i className="fab fa-less"></i>
                      {/* progerss */}
                      <div className="skill mb-4">
                        <div className="d-flex justify-content-between">
                          <h5 className="font-weight-bold">Oracle DB</h5>
                          <h5 className="font-weight-bold">90%</h5>
                        </div>
                        <div className="progress">
                          <div
                            className="progress-bar bg-danger"
                            role="progressbar"
                            aria-valuenow={90}
                            aria-valuemin={0}
                            aria-valuemax={100}
                          ></div>
                        </div>
                      </div>
                      {/* progerss */}
                    </button>
                  </h2>
                  <div
                    id="flush-collapseFour"
                    className="accordion-collapse collapse"
                    aria-labelledby="flush-headingFour"
                    data-bs-parent="#accordionFlushExample"
                  >
                    <div className="accordion-body">Placeholder</div>
                  </div>
                </div>

                {/* oracle */}

                {/* docker */}
                <div className="accordion-item" id="skills">
                  <h2 className="accordion-header" id="flush-headingFive">
                    <button
                      className="accordion-button collapsed"
                      type="button"
                      data-bs-toggle="collapse"
                      data-bs-target="#flush-collapseFive"
                      aria-expanded="false"
                      aria-controls="flush-collapseFive"
                    >
                      <i className="fab fa-less"></i>
                      {/* progerss */}
                      <div className="skill mb-4">
                        <div className="d-flex justify-content-between">
                          <h5 className="font-weight-bold">
                            Docker & Kubernates
                          </h5>
                          <h5 className="font-weight-bold">95%</h5>
                        </div>
                        <div className="progress">
                          <div
                            className="progress-bar bg-dark"
                            role="progressbar"
                            aria-valuenow={95}
                            aria-valuemin={0}
                            aria-valuemax={100}
                          ></div>
                        </div>
                      </div>
                      {/* progerss */}
                    </button>
                  </h2>
                  <div
                    id="flush-collapseFive"
                    className="accordion-collapse collapse"
                    aria-labelledby="flush-headingFive"
                    data-bs-parent="#accordionFlushExample"
                  >
                    <div className="accordion-body">Placeholder</div>
                  </div>
                </div>

                {/* docker */}

                {/* aws - oracle */}
                <div className="accordion-item" id="skills">
                  <h2 className="accordion-header" id="flush-headingSix">
                    <button
                      className="accordion-button collapsed"
                      type="button"
                      data-bs-toggle="collapse"
                      data-bs-target="#flush-collapseSix"
                      aria-expanded="false"
                      aria-controls="flush-collapseSix"
                    >
                      <i className="fab fa-less"></i>
                      {/* progerss */}
                      <div className="skill mb-4">
                        <div className="d-flex justify-content-between">
                          <h5 className="font-weight-bold">
                            AWS & Oracle Cloud
                          </h5>
                          <h5 className="font-weight-bold">85%</h5>
                        </div>
                        <div className="progress">
                          <div
                            className="progress-bar bg-info"
                            role="progressbar"
                            aria-valuenow={85}
                            aria-valuemin={0}
                            aria-valuemax={100}
                          ></div>
                        </div>
                      </div>
                      {/* progerss */}
                    </button>
                  </h2>
                  <div
                    id="flush-collapseSix"
                    className="accordion-collapse collapse"
                    aria-labelledby="flush-headingSix"
                    data-bs-parent="#accordionFlushExample"
                  >
                    <div className="accordion-body">Placeholder</div>
                  </div>
                </div>

                {/* aws - oracle */}
              </div>
            </div>
          </div>
        </div>
      </div>
      {/* <!-- Expertise End --> */}
    </>
  );
}

export default FourthPage;

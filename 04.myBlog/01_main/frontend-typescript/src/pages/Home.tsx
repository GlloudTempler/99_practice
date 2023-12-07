import React, { useEffect } from "react";
import initMain from "../assets/js/scripts";
import ReplyBoardList from "./Reply/ReplyBoardList";
import AddReplyBoard from "./Reply/AddReplyBoard";
import FirstPage from "./FirstPage/FirstPage";
import FourthPage from "./FourthPage/FourthPage";

function Home() {
  useEffect(() => {
    initMain();
  }, []);

  return (
    <>
      <div className="container-fluid p-0">
        {/* <!-- First--> */}
        <section className="resume-section" id="about">
            <FirstPage/>
        </section>
        {/* about */}

        <hr className="m-0" />

        {/* <!-- Second--> */}
        <section className="resume-section" id="experience">

        </section>
        {/* experience */}

        <hr className="m-0" />

        {/* <!-- Third--> */}
        <section className="resume-section" id="education">

        </section>
        {/* education */}

        <hr className="m-0" />

        {/* <!-- FourthPage--> */}
        <section className="resume-section" id="skills">
          <FourthPage/>
        </section>
        {/* skills */}

        <hr className="m-0" />

        {/* <!-- Interests--> */}
        <section className="resume-section" id="interests">
          <div className="resume-section-content">

          </div>
        </section>
        {/* interests */}

        <hr className="m-0" />

        {/* <!-- 방명록 --> */}
        <section className="resume-section" id="awards">
          <form id="form1">
            <div className="resume-section-content">
              <h2 className="mb-5">방명록</h2>
              <ReplyBoardList />
            </div>
          </form>
          </section>
          <section className="resume-section2">
          <form id="form2">
            <div className="resume-section-content" id="awards">
              <h3 className="mb-5">방명록 적기</h3>
              <AddReplyBoard />
            </div>
          </form>
        </section>

        <section className="resume-section" id="awards"></section>

        {/* award */}
      </div>
    </>
  );
}

export default Home;

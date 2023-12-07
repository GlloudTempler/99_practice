import React from "react";
import { Link } from "react-router-dom";

function Header() {
  return (
    <>
    <div id="index_wrap">
      <ul id="fromInsideOut">
        <li class="nav-item">
          <Link to="#" class="nav-link active" aria-current="page">
            Active
          </Link>
        </li>
        <li class="nav-item">
          <Link to="#" className="nav-link">
            Link
          </Link>
        </li>
        <li class="nav-item">
          <Link to="#" className="nav-link">
            Link
          </Link>
        </li>
        <li class="nav-item">
          <Link to="#" className="nav-link">
            Link
          </Link>
        </li>
      </ul>
    </div>

    <div class="info_tistory">
      <div class="logn_tistory">
        <h2 class="screen_out">로그인정보</h2>
        <a href="#" class="btn_tistory btn_log_info">
          시작하기
        </a>
      </div>
    </div>
    </>
  );
}

export default Header;

import React, { useState } from "react";
import ReplyBoard from "./ReplyBoard";
import IReplyBoard from "../../types/reply/IReplyBoard";
// import TitleCom from "../../../components/common/TitleCom";
import { event } from "jquery";
import ReplyBoardService from "../../services/reply/ReplyBoardService";

function AddReplyBoard() {
  // 객체 초기화
  const initialReplyBoard = {
    bid: null,
    boardTitle: "",
    boardContent: "",
    boardWriter: "",
    viewCnt: 0,
    boardGroup: null,
    boardParent: 0,
  };

  // replyboard 객체
  const [replyBoard, setReplyBoard] = useState<IReplyBoard>(initialReplyBoard);
  const [submitted, setSubmitted] = useState<Boolean>(false);

  // input 태그 수동 바인딩
  const handleInputChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = event.target;
    setReplyBoard({ ...replyBoard, [name]: value });
  };

  // 저장 함수
  const saveReplyBoard = () => {
    var data = {
      boardTitle: replyBoard.boardTitle,
      boardContent: replyBoard.boardContent,
      boardWriter: replyBoard.boardWriter,
      viewCnt: replyBoard.viewCnt,
      boardGroup: null, // 입력시 제외
      boardParent: 0, // 입력시 제외
    };

    ReplyBoardService.createBoard(data)
      .then((response: any) => {
        setSubmitted(true);
        console.log(response.data);
      })
      .catch((e: Error) => {
        console.log(e);
      });
  };

  // 새폼 보여주기 함수
  const newReplyBoard = () => {
    setReplyBoard(initialReplyBoard);
    setSubmitted(false);
  };

  return (
    <div className="row" >
      {submitted ? (
        <div className="col-6 mx-auto">
          <h4>방명록 작성 완료!</h4>
          <button className="btn btn-success" onClick={newReplyBoard}>
            Add
          </button>
        </div>
      ) : (
        <>
          {/* 제목 start */}
          {/* <TitleCom title="Add Reply Board" /> */}
          {/* 제목 end */}

          <div className="row mx-auto" id="reply">
            {/* title */}
            <div className="col-md-12 align-items-center mb-3">
              <div className="col-md-12">
                <label htmlFor="boardTitle" className="col-form-label">
                  제목
                </label>
              </div>

              <div className="col-md-12">
                <input
                  type="text"
                  id="boardTitle"
                  required
                  className="form-control"
                  value={replyBoard.boardTitle}
                  onChange={handleInputChange}
                  placeholder="제목"
                  name="boardTitle"
                />
              </div>
            </div>

            {/* email */}
            <div className="col-md-12 align-items-center mb-3">
              <div className="col-12">
                <label htmlFor="boardWriter" className="col-form-label">
                  e-mail
                </label>
              </div>

              <div className="col-md-12">
                <input
                  type="text"
                  id="boardWriter"
                  required
                  className="form-control"
                  value={replyBoard.boardWriter}
                  onChange={handleInputChange}
                  placeholder="e-mail"
                  name="boardWriter"
                />
              </div>
            </div>

            {/* content */}
            <div className="col-md-12 align-items-center mb-3">
              <div className="col-md-12">
                <label htmlFor="boardContent" className="col-form-label">
                  내용
                </label>
              </div>

              <div className="col-md-12">
                <textarea className="form-control" placeholder="내용">
                  <input
                    type="text"
                    id="boardContent"
                    required
                    className="form-control"
                    value={replyBoard.boardContent}
                    onChange={handleInputChange}
                    name="boardContent"
                  />
                </textarea>
              </div>
            </div>

            <div className="row g-2 mt-2 mb-2 mx-auto">
              <button
                onClick={saveReplyBoard}
                className="btn btn-outline-primary ms-2 col-md-2"
              >
                Submit
              </button>
            </div>
          </div>
        </>
      )}
    </div>
  );
}

export default AddReplyBoard;

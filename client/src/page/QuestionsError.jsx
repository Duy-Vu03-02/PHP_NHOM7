import React, { useState, useEffect } from "react";
import axios from "axios";
import "../resources/questionserror.css";
import { FiUser } from "react-icons/fi";
import { FiUsers } from "react-icons/fi";
import QuestionsTemplate from "../component/QuestionsTemplate";
import { IoMdArrowBack } from "react-icons/io";

export default function QuesitionsError(props) {
  const [qsUser, setQsUser] = useState(true);
  const [resTemplate, setResTemplate] = useState([false, false]);
  const [quesitonsUser, setQuestionsUser] = useState([]);
  const [quesitonsPeople, setQuestionsPeople] = useState([]);
  const [listDataUser, setListDataUser] = useState([]);
  const [listDataPeople, setListDataPeople] = useState([]);

  useEffect(() => {
    const fetch = async () => {
      const data = await JSON.parse(localStorage.getItem("question_err"));
      let listId = data.map((item) => item.id);
      const urlUser =
        "http://localhost/BaoCaoPHP/server/controllers/questionsError/getQuestionsErrorForUser.php";
      const responseUser = await axios.get(urlUser + "?action=" + listId);

      if (responseUser.status === 200) {
        setListDataUser(responseUser.data);
      }

      const urlPeople =
        "http://localhost/BaoCaoPHP/server/controllers/questionsError/getQuestionsErrorForPeople.php";
    };

    fetch();
  }, []);

  const YourQuestionsError = (
    <QuestionsTemplate
      dataQuestion={listDataUser}
      result={resTemplate[0]}
      handleReq={() => handleRes(0)}
    />
  );
  const PeopleQuestionsError = (
    <QuestionsTemplate
      dataQuestion={listDataPeople}
      result={resTemplate[1]}
      handleReq={() => handleRes(1)}
    />
  );

  const handleRes = (index) => {
    setResTemplate((prevState) => {
      const newState = [...prevState];
      newState[index] = !newState[index];
      return newState;
    });
  };
  const handleChangeType = (value) => {
    setQsUser(value);
  };
  const handleClick = () => {
    props.unComponent();
  };

  return (
    <>
      <div className="content-questionserror">
        <div className="box-exam">
          <div className="title-exam flex">
            <IoMdArrowBack onClick={handleClick} className="icon-back" />
            <h3 className="bold">top các câu sai</h3>
          </div>
          <div className="nav-list flex">
            <div
              className={`your-nav  flex ${qsUser ? "user-active" : ""}`}
              onClick={() => handleChangeType(true)}
            >
              <FiUser className="icon-user" />
              <p>Riêng bạn</p>
            </div>
            <div
              className={`people-nav flex ${qsUser ? "" : "user-active"}`}
              onClick={() => handleChangeType(false)}
            >
              <FiUsers className="icon-user" />
              <p className={qsUser ? "" : "user-active"}>Mọi người</p>
            </div>
            <hr className={qsUser ? "" : "hr-active"} />
          </div>
          <div className="title-intro">
            <p className={`infor-user ${qsUser ? "" : "none"}`}>
              Dưới đây là <b>10</b> câu hay sai nhất thuộc hạng <b>A1</b> của
              bạn.
            </p>
            <p className={`infor-people ${qsUser ? "none" : ""}`}>
              Dưới đây là <b>50</b> câu hay sai nhất thuộc hạng <b>A1</b> trên
              toàn hệ thống.
            </p>
          </div>
        </div>
        <div>{qsUser ? YourQuestionsError : PeopleQuestionsError}</div>
      </div>
    </>
  );
}

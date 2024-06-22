import React, { useEffect, useState } from "react";
import axios from "axios";
import QuestionTemplate from "../component/QuesitonTemplate";
import { IoBookOutline } from "react-icons/io5";
import "../resources/exam.css";
import { IoMdArrowBack } from "react-icons/io";

export default function Exam(props) {
  const [allExam, setAllExam] = useState([]);
  const [currentExam, setCurrentExam] = useState({
    state: false,
    id: null,
    index: null,
  });

  useEffect(() => {
    const fetch = async () => {
      const url =
        "http://localhost/BaoCaoPHP/Server/controllers/exam/titleExam.php";
      const data = await axios.get(url);
      if (data.status === 200) {
        setAllExam(data.data);
      }
    };
    fetch();
  }, []);
  const handleClick = () => {
    props.unComponent();
  };
  const handleShowExam = (id, index) => {
    setCurrentExam({
      id: id,
      state: true,
      index: index,
    });
  };
  const handleUnShow = () => {
    setCurrentExam({
      state: false,
      id: null,
      index: null,
    });
  };

  return (
    <>
      <div>
        <div>
          {!currentExam.state ? (
            <div className="box-exam">
              <div className="title-exam flex">
                <IoMdArrowBack onClick={handleClick} className="icon-back" />

                <h3 className="bold">danh sách đề thi hạng a1</h3>
              </div>
              <div>
                <ul className="wrap-list flex">
                  {allExam.length > 0 &&
                    allExam.map((data, index) => (
                      <li
                        key={index}
                        onClick={() => handleShowExam(data.id, index)}
                      >
                        <div className="exam-cart ">
                          <div className="flex">
                            <IoBookOutline className="book-icon" />
                            <p>đề số {index + 1}</p>
                          </div>
                          <p style={{ margin: "0 5px" }}>---</p>
                        </div>
                      </li>
                    ))}
                </ul>
              </div>
            </div>
          ) : currentExam.id ? (
            <ExamTopic
              btnTopic={handleUnShow}
              id={currentExam.id}
              index={currentExam.index}
            />
          ) : (
            <div></div>
          )}
        </div>
      </div>
    </>
  );
}

function ExamTopic({ btnTopic, id, index }) {
  const [dataQuestion, setDataQuestion] = useState("");
  useEffect(() => {
    const fetch = async () => {
      const url = `http://localhost/BaoCaoPHP/Server/controllers/exam/exam.php?id=${id}`;
      const data = await axios.get(url);
      if (data.status === 200) {
        setDataQuestion(data.data);
      }
    };
    fetch();
  }, []);

  const handleTopic = () => {
    btnTopic(false);
  };

  return (
    <>
      {dataQuestion && (
        <div>
          <div className="box-exam">
            <div className="title-exam flex">
              <IoMdArrowBack onClick={handleTopic} className="icon-back" />
              <h3 className="bold">đề số {index + 1} hạng a1</h3>
            </div>
            <div>
              <QuestionTemplate dataQuestion={dataQuestion} />
            </div>
          </div>
        </div>
      )}
    </>
  );
}

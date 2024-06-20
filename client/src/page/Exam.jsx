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
    name: null,
  });

  useEffect(() => {
    const fetch = async () => {
      const url =
        "http://localhost/BaoCaoPHP/Server/API/controllers/exam/titleExam.php";
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
  const handleShowExam = (id, name) => {
    setCurrentExam({
      id: id,
      name: name,
      state: true,
    });
  };
  const handleUnShow = () => {
    setCurrentExam({
      state: false,
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
                        onClick={() => handleShowExam(data.id, data.name)}
                      >
                        <div className="exam-cart ">
                          <div className="flex">
                            <IoBookOutline className="book-icon" />
                            <p>đề {data.name}</p>
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
              name={currentExam.name}
            />
          ) : (
            ""
          )}
        </div>
      </div>
    </>
  );
}

function ExamTopic({ btnTopic, id, name }) {
  const [dataQuestion, setDataQuestion] = useState("");
  useEffect(() => {
    const fetch = async () => {
      const url = `http://localhost/BaoCaoPHP/Server/API/controllers/exam/exam.php?id=${id}`;
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

              <h3 className="bold">đề {name} hạng a1</h3>
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

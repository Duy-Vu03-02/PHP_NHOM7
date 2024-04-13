import React, { useEffect, useState } from "react";
import logo from "../data/png/logo.png";
import { Link, useNavigate } from "react-router-dom";
import "../resources/component/header.css";
import { FiLogOut } from "react-icons/fi";
import { FiSettings } from "react-icons/fi";
import { IoMdClose } from "react-icons/io";
import { GoogleLogin } from "@react-oauth/google";
import { jwtDecode } from "jwt-decode";
import { FaFacebook } from "react-icons/fa";
import FacebookLogin from "react-facebook-login";
import axios from "axios";

export default function Header() {
  const navigate = useNavigate();
  const [boxLogin, setBoxLogin] = useState(false);
  const [checkbox, setCheckBox] = useState(false);
  const [dataUser, setDataUser] = useState(null);
  const [dataLocal, setDataLocal] = useState(null);
  const [showSetting, setShowSetting] = useState(false);

  // useEffect(() => {
  //   const fetch = () => {
  //     const data = {
  //       name: "Ngo duy vu",
  //       email: "vungovu00@gmail.com",
  //       picture: "http://localhost/description4.png",
  //     };
  //     localStorage.setItem("acc", JSON.stringify(data));
  //     data.provider = "facebook";
  //     console.log(data);
  //     storeDB(data);
  //   };

  //   fetch();
  // }, []);

  const storeLocal = (data) => {
    if (data !== null) {
      localStorage.setItem("acc", JSON.stringify(data));
    }
    setDataLocal(data);
  };
  const storeDB = async (data) => {
    const url =
      "http://localhost/BaoCaoPHP/server/controllers/user/loginUser.php";
    try {
      const response = await axios.post(url, data);
      if (response.data === null || response.data === undefined) {
        let resData = JSON.parse(response.data.questionerr);
        resData = resData.map((item) => ({ id: parseInt(item), count: 1 }));
        localStorage.setItem("questionerr", JSON.stringify(resData));
      } else {
        localStorage.setItem("questionerr", "");
      }
    } catch (err) {
      console.log(err);
    }
  };

  useEffect(() => {
    const fetch = async () => {
      const res = await JSON.parse(localStorage.getItem("showLogin"));
      const data = await JSON.parse(localStorage.getItem("acc"));
      if (data !== null) {
        setDataLocal(data);
      } else if (res === false) {
        setCheckBox(true);
        setBoxLogin(false);
      } else if (res !== false && dataLocal === null) {
        setBoxLogin(true);
      }
    };
    fetch();
  }, []);

  const handleCheckBox = () => {
    checkbox ? setCheckBox(false) : setCheckBox(true);
    handleDontShow(checkbox);
  };
  const handleBoxLogin = (value) => {
    setBoxLogin(value);
  };
  const handleDontShow = (value) => {
    localStorage.setItem("showLogin", JSON.stringify(value));
  };
  const handleLogout = () => {
    localStorage.clear();
    // navigate("/");
    window.history.go();
  };
  const handleShowSetting = (value) => {
    setShowSetting(value);
  };

  const handle = () => {};
  return (
    <>
      <div className="header-content">
        <div className={`${showSetting ? "screen-mask" : ""}`}></div>
        {showSetting ? (
          <div className="box-setting-user">
            <div className="header-setting flex">
              <div className="flex">
                <FiSettings className="icon-setting" />
                <h4>Quản lý tài khoản</h4>
              </div>
              <div>
                <IoMdClose
                  className="icon-close"
                  onClick={() => handleShowSetting(false)}
                />
              </div>
            </div>
            <div className="content-setting flex">
              <div className="info-user">
                <img src={dataLocal.picture} alt="" />
                <p>{dataLocal.name}</p>
              </div>
              <div className="change-info">
                <h4>Cập nhật thông tin cá nhân</h4>
                <div className="change-detail">
                  <div className="change-name flex">
                    <p>Họ và tên: </p>
                    <input
                      type="text"
                      name="name"
                      placeholder={dataLocal.name}
                    />
                  </div>
                  <div className="change-email flex">
                    <p>Email: </p>
                    <input
                      type="text"
                      name="email"
                      placeholder={
                        dataLocal.email ? dataLocal.email : "Nhập email"
                      }
                    />
                  </div>
                  <div className="change-avartar flex">
                    <p>Avatar: </p>
                    <input
                      type="text"
                      name="avatar"
                      placeholder="Nhập url avatar"
                    />
                  </div>
                  <div className="change-acount flex">
                    <p>Account: </p>
                    <input
                      type="text"
                      name="account"
                      placeholder="Nhập tài khoản"
                    />
                  </div>
                  <div className="change-password flex">
                    <p>Password: </p>
                    <input
                      type="text"
                      name="password"
                      placeholder="Nhập mật khẩu"
                    />
                  </div>
                </div>
              </div>
            </div>
            <div className="footer-setting">
              <div className="btn-close">
                <button onClick={() => handleShowSetting(false)}>
                  Cập nhật
                </button>
              </div>
            </div>
          </div>
        ) : (
          ""
        )}
        <div className="header flex">
          <div className="left-header flex">
            <img src={logo} alt="logo" />
            <Link to="/">Trang chủ</Link>
            <Link to="/">Tin Tức</Link>
            <Link to="/">Xốp hơi</Link>
            <Link to="/">PE foam</Link>
          </div>
          <div className="right-header flex">
            <button>Hạng GPLX: A1</button>
            {dataUser === null && dataLocal === null ? (
              <button onClick={() => handleBoxLogin(true)}>Đăng nhập</button>
            ) : (
              <div className="user-info flex">
                <img src={dataLocal.picture} alt="img-avatar" />
                <p>{dataLocal.name}</p>
                <div className="box-logout">
                  <div className="flex" onClick={() => handleShowSetting(true)}>
                    <FiSettings className="icon-setting" />
                    <p>Quản lý tài khoản</p>
                  </div>
                  <div className="flex" onClick={handleLogout}>
                    <FiLogOut className="icon-logout" />
                    <p>Đăng xuất</p>
                  </div>
                </div>
              </div>
            )}
          </div>
        </div>
        {boxLogin ? (
          <div className="screen-mask">
            <div className="box-login">
              <div className="bar-login flex">
                <p className="bold">Tài khoản</p>
                <IoMdClose
                  className="icon-close"
                  onClick={() => handleBoxLogin(false)}
                />
              </div>
              <div className="choie-login">
                <p>
                  Hãy đăng nhập để lưu kết quả ôn tập của bạn và đồng bộ trên
                  các thiết bị của bạn.
                </p>
                <div className="btn-gg flex">
                  <GoogleLogin
                    onSuccess={(credentialResponse) => {
                      if (credentialResponse.credential !== null) {
                        const decode = jwtDecode(credentialResponse.credential);
                        const data = {
                          provider: "email",
                          name: decode.name,
                          email: decode.email ? decode.email : null,
                          picture: decode.picture ? decode.picture : null,
                          userID: null,
                        };
                        setDataUser(data);
                        storeDB(data);
                        storeLocal({
                          provider: data.provider,
                          email: data.email,
                          name: data.name,
                          picture: decode.picture,
                          userID: null,
                        });
                        setBoxLogin(false);
                      }
                    }}
                    onError={() => {
                      setDataUser(null);
                      setBoxLogin(true);
                    }}
                  />
                </div>
                <div className="btn-face flex">
                  <FacebookLogin
                    appId="701802418590275"
                    autoLoad={false}
                    fields="name,email,picture"
                    icon={
                      <FaFacebook
                        style={{
                          background: "#3b5998",
                          color: "white",
                          margin: "0 5px",
                          fontSize: "25px",
                        }}
                      />
                    }
                    callback={(response) => {
                      if (
                        response.status !== "unknown" &&
                        response.data !== null
                      ) {
                        const data = {
                          provider: "facebook",
                          name: response.name,
                          email: null,
                          picture: response.picture
                            ? response.picture.data.url
                            : null,
                          userID: response.userID,
                        };
                        setDataUser(data);
                        storeDB(data);
                        storeLocal({
                          provider: data.provider,
                          email: null,
                          name: data.name,
                          picture: data.picture,
                          userID: data.userID,
                        });
                        setBoxLogin(false);
                      } else {
                        setDataUser(null);
                        setCheckBox(true);
                      }
                    }}
                    cssClass="my-facebook-button-class"
                  />
                </div>
                <div className="dont-show flex" onClick={handleCheckBox}>
                  <input
                    type="checkbox"
                    onChange={handle}
                    checked={checkbox ? true : false}
                  />
                  <p>Không tự động hiển thị trên thiết bị này.</p>
                </div>
              </div>
              <div className="btn-close">
                <button onClick={() => handleBoxLogin(false)}>Close</button>
              </div>
            </div>
          </div>
        ) : (
          ""
        )}
      </div>
    </>
  );
}

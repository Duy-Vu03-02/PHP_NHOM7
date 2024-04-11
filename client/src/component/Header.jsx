import React, { useEffect, useState } from "react";
import logo from "../data/png/logo.png";
import { Link, useNavigate } from "react-router-dom";
import "../resources/component/header.css";
import { FiLogOut } from "react-icons/fi";
import { FiSettings } from "react-icons/fi";
import { IoMdClose } from "react-icons/io";
import { FcGoogle } from "react-icons/fc";
import { RiFacebookBoxFill } from "react-icons/ri";
import { GoogleLogin } from "@react-oauth/google";
import { jwtDecode } from "jwt-decode";
import { FaFacebook } from "react-icons/fa";
import FacebookLogin from "react-facebook-login";

export default function Header() {
  const navigate = useNavigate();
  const [boxLogin, setBoxLogin] = useState(false);
  const [checkbox, setCheckBox] = useState(false);
  const [dataUser, setDataUser] = useState(null);
  const [dataLocal, setDataLocal] = useState(null);

  const storeLocal = (data) => {
    if (data !== null) {
      localStorage.setItem("acc", JSON.stringify(data));
    }
    setDataLocal(data);
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

  const handle = () => {};
  return (
    <>
      <div className="header-content">
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
                <img src={dataLocal.picture} />
                <p>{dataLocal.name}</p>
                <div className="box-logout">
                  <div className="flex">
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
                          provider: "gmail",
                          name: decode.name,
                          email: decode.email ? decode.email : null,
                          picture: decode.picture ? decode.picture : null,
                          userID: decode.userID,
                        };
                        setDataUser(data);
                        storeLocal({
                          name: data.name,
                          picture: decode.picture,
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
                    autoLoad={true}
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
                          email: response.email,
                          picture: response.picture
                            ? response.picture.data.url
                            : null,
                          userID: response.userID,
                        };
                        setDataUser(data);
                        storeLocal({
                          name: data.name,
                          picture: data.picture,
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

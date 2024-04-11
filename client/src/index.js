import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";
import App from "./App";
import { GoogleOAuthProvider } from "@react-oauth/google";

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
    <GoogleOAuthProvider clientId="874156047390-69uj8j7atb21r457inh8engdbbsijemh.apps.googleusercontent.com">
      <App />
    </GoogleOAuthProvider>
  </React.StrictMode>
);

import ReactDOM from "react-dom/client";
import "./styles/global.scss";
import { DataContent } from "./components/Data/DataContent";
import React from "react";

const root = ReactDOM.createRoot(
  document.getElementById("root") as HTMLElement
);
root.render(
  <React.StrictMode>
    <DataContent />
  </React.StrictMode>
);

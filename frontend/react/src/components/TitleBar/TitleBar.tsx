import React from "react";
import "./styles.scss";

interface TitleBarProps {
  title: string;
}

export const TitleBar: React.FC<TitleBarProps> = ({ title }) => {
  return (
    <div className="title-pages">
      <nav className="quadro">
        <h2>
          <span>{title}</span>
        </h2>
      </nav>
    </div>
  );
};

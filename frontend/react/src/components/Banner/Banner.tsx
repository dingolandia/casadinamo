import React from "react";
import "./styles.scss";

interface BannerProps {
  text?: string;
}

export const Banner: React.FC<BannerProps> = ({ text }) => {
  return (
    <div className="banner-area">
      <div className="quadro">
        <div className="dingAnimation">
          <ul></ul>
        </div>
      </div>
    </div>
  );
};

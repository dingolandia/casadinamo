import React from "react";
import "./styles.scss";

export const HeaderMenuMobile: React.FC = () => {
  const toggleCloseOpenMenuMobile = (): void => {
    //do something
  };

  return (
    <div
      className="icon-menu-mobile"
      onClick={() => toggleCloseOpenMenuMobile()}
    >
      <span className="material-symbols-rounded">menu</span>
    </div>
  );
};

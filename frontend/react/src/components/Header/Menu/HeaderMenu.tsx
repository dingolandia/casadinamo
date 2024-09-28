import React from "react";
import "./styles.scss";
import { Link, useLocation } from "react-router-dom";
import { ImainMenuItems } from "../../../types/iLink";

interface HeaderMenuProps {
  menuItems: ImainMenuItems[];
}

export const HeaderMenu: React.FC<HeaderMenuProps> = ({ menuItems }) => {
  const location = useLocation();
  return (
    <nav className="menu-topo">
      <ul>
        {menuItems.map((item) => (
          <li
            key={item.id}
            className={item.url === location.pathname ? "selecionado" : ""}
          >
            <Link to={item.url}>{item.descricao}</Link>
          </li>
        ))}
      </ul>
    </nav>
  );
};

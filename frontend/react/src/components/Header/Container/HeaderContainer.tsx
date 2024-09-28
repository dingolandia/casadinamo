import React from "react";
import "./styles.scss";

interface HeaderContainerProps {
  children?: React.ReactNode; // Defina o tipo de children
}

export const HeaderContainer: React.FC<HeaderContainerProps> = ({ children }) => {
  return (
      <div className="cabecalho quadro">{children}</div>
  );
};

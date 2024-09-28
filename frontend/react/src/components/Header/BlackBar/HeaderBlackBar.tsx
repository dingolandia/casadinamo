import React from "react";
import "./styles.scss";

interface HeaderBlackBarProps {
  warnings: string;
}

export const HeaderBlackBar: React.FC<HeaderBlackBarProps> = ({ warnings }) => {
  return (
    <>
      <div className="linha-topo-cinza-1">&nbsp;</div>
      <div className="linha-topo-preta-1">&nbsp;</div>
      <div className="text-cabecalho">
        <div
          dangerouslySetInnerHTML={{
            __html: "<p><span>" + warnings + "</p></span>",
          }}
        ></div>
      </div>
      <div className="acabamento-topo-preto">
        <div className="triangulo-preto">&nbsp;</div>
      </div>
    </>
  );
};

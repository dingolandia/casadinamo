import React from "react";
import { paymentWaysTitle } from "../../constants/global";
import PaymentImage from "../../assets/images/credit_cards_logos.png";
import "./styles.scss";

export const Footer:React.FC<{descriptionTxt:string}> = ({descriptionTxt}) => {
  return (
    <div className="rodape">
      <div className="fx2">
        <div className="md">
          <ul className="colTb md100pc">
            <li>
              <span>
                2021 - {(new Date()).getFullYear()} • {descriptionTxt}
              </span>
            </li>
            <li>
              <img
                src={PaymentImage}
                width="200"
                alt={paymentWaysTitle}
                title={paymentWaysTitle}
              />
            </li>
          </ul>
        </div>
      </div>
    </div>
  );
};

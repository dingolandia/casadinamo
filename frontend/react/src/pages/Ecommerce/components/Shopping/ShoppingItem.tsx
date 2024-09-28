import React from "react";
import { IMedia } from "../../../../types/iEcommerce";
import { Link } from "react-router-dom";
import { fullUrl } from "../../../../constants/uriEndPoints";
import { image, unavailable } from "../../../../constants/global";
import "./styles.scss";
import { currencyFormat } from "../../../../utils/formatter";

interface ShoppingItemProps {
  preco: number;
  itemTitle?: string;
  idCategoria: number;
  idProduto: number;
  media?: IMedia[];
}

export const ShoppingItem: React.FC<ShoppingItemProps> = ({
  preco,
  itemTitle,
  idCategoria,
  idProduto,
  media,
}) => {
  

  return (
    <div className="shop-item">
      <Link to={`/produto/${idProduto}`}>
        <div className="itemLoja">
          <div className="titItemLoja">
            <h2 className="cor-preco">{currencyFormat(preco, "pt-BR", "BRL")}</h2>
          </div>
          <div className="corpoItemLoja">
            {media && media[0] ? (
              <img src={fullUrl + media[0].url} alt={itemTitle} />
            ) : (
              <p>{`${image} ${unavailable}`}</p>
            )}
          </div>
          <div className="precoItemLoja">{itemTitle}</div>
          <div className="rodapeItemLoja">&nbsp;</div>
        </div>
      </Link>
    </div>
  );
};

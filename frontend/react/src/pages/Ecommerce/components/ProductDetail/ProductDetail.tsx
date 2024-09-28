import React from "react";
import "./styles.scss";
import { IItem } from "../../../../types/iEcommerce";
import { currencyFormat } from "../../../../utils/formatter";
import {
  add,
  byUnit,
  minimalQuantity,
  quantity,
} from "../../../../constants/global";

interface ProductDetailProps {
  item: IItem;
}

export const ProductDetail: React.FC<ProductDetailProps> = ({ item }) => {
  const [qtde, setQtde] = React.useState<number>(0);
  const [minQuantity, setMinQuantity] = React.useState<number | undefined>(0);

  React.useEffect(() => {
    setMinQuantity(item.quantidadeMinima);
  }, [item.quantidadeMinima]);

  return (
    <div className="infoProduto">
      <h1>{item.tituloProduto}</h1>

      <div className="separador">
        <span className="precoItem selecionado">
          {currencyFormat(item.preco, "pt-BR", "BRL")}
        </span>
        <span> {byUnit}. </span>
      </div>

      <div className="linhaQtde">
        <span>{quantity}: </span>
        <input
          type="number"
          name="quantidadeFixa"
          title={minimalQuantity}
          alt={minimalQuantity}
          value={minQuantity}
          key={minQuantity}
          disabled={true}
        />
        <span> + </span>
        <input
          type="number"
          name="quantidade"
          maxLength={3}
          value={qtde}
          onChange={(e) => {
            setQtde(parseInt(e.currentTarget.value));
          }}
        />
      </div>
      <div className="totalCompraItem">
        <ul>
          <li>
            <input
              type="button"
              value={add}
              onClick={() => "adicionarCarrinho()"}
            />
          </li>
          <li>
            <span id="valTotalProd">
              {currencyFormat(
                (item.quantidadeMinima + qtde) * item.preco,
                "pt-BR",
                "BRL"
              )}
            </span>
          </li>
        </ul>
      </div>

      <div
        className="descricaoItemLoja"
        dangerouslySetInnerHTML={{ __html: item.descricao || "" }}
      ></div>
    </div>
  );
};

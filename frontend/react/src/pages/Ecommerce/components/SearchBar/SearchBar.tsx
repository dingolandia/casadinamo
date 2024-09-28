import React from "react";
import cartImage from "../../../../assets/images/cart_blue.png";
import { IRefOptions } from "../../../../types/iEcommerce";
import "./styles.scss";

interface SearchBarProps {
  pecas: IRefOptions[];
  marcas: IRefOptions[];
}

export const SearchBar: React.FC<SearchBarProps> = ({ pecas, marcas }) => {
  return (
    <div className="filtros-loja">
      <ul>
        <li>
          <select id="pecasFiltro" onChange={() => "montaQuery()"}>
            <option value="0">Todas as peças</option>
            {pecas.map((peca) => (
              <option key={peca.id} value={peca.id}>
                {peca.descricao}
              </option>
            ))}
          </select>
        </li>
        <li>
          <select id="marcasFiltro" onChange={() => "montaQuery()"}>
            <option value="0">Todas as marcas</option>
            {marcas.map((marca) => (
              <option key={marca.id} value={marca.id}>
                {marca.descricao}
              </option>
            ))}
          </select>
        </li>
        <li>
          <input
            type="text"
            name="busca"
            id="busca"
            placeholder="Texto a buscar"
            onKeyUp={() => "callIfEnterPressed(event)"}
          />
        </li>
        <li>
          <input type="button" value="Buscar" onChange={() => "montaQuery()"} />
        </li>
        <li>
          <div className="cart-loja">
            <a href="/finalizar">
              <img src={cartImage} alt="Carrinho de compras" />
            </a>
            <div className="cart-items">0</div>
          </div>
        </li>
      </ul>
    </div>
  );
};

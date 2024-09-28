import { useEffect, useRef, useState } from "react";
import { TemplateDefault } from "../../components/Templates/TemplateDefault";
import { ecommerceTitle } from "../../constants/global";
import { IItem, IRefOptions } from "../../types/iEcommerce";
import {
  fetchEcommerceBrandsAsync,
  fetchEcommerceCarPartsAsync,
  fetchEcommerceItemsAsync,
} from "../../api/ecommerceApi/api";
import { SearchBar } from "./components/SearchBar/SearchBar";
import { ShoppingItem } from "./components/Shopping/ShoppingItem";
import "./styles.scss";

interface EcommerceProps {
  isLoading: boolean;
  setLoading?: React.Dispatch<React.SetStateAction<boolean>>;
}

export const Ecommerce: React.FC<EcommerceProps> = ({
  isLoading,
  setLoading,
}) => {
  const [storeItems, setStoreItems] = useState<IItem[]>([]);
  const [pecas, setPecas] = useState<IRefOptions[]>([]);
  const [marcas, setMarcas] = useState<IRefOptions[]>([]);

  const fetchOnce = useRef(false);
  //fetchEcommerceBrandsAsync
  //fetchEcommerceCarPartsAsync

  useEffect(() => {
    const fetchItems = async () => {
      if (setLoading) {
        setLoading(true);
      }

      try {
        const [itemStore, carParts, brands] = await Promise.all([
          fetchEcommerceItemsAsync(),
          fetchEcommerceCarPartsAsync(),
          fetchEcommerceBrandsAsync(),
        ]);

        setStoreItems(itemStore);
        setPecas(carParts);
        setMarcas(brands);
      } catch (error) {
        console.log(error);
      } finally {
        console.log("DEVERIA TER FINALIZADO O LOADING");
        if (setLoading) {
          setLoading(false);
        }
      }
    };
    if (!fetchOnce.current) {
      fetchOnce.current = true;
      fetchItems();
    }
  }, [setLoading]);

  return (
    <TemplateDefault title={ecommerceTitle} isLoading={isLoading}>
      <SearchBar marcas={marcas} pecas={pecas} />

      <div className="shopping">
        {storeItems.map((item) => (
          <ShoppingItem
            key={item.id}
            idCategoria={0}
            idProduto={item.id}
            preco={item.preco}
            media={item.media}
            itemTitle={item.tituloProduto}
          />
        ))}
      </div>
    </TemplateDefault>
  );
};

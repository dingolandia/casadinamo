import { useEffect, useRef, useState } from "react";
import { TemplateDefault } from "../../../../components/Templates/TemplateDefault";
import { fetchEcommerceOneItemAsync } from "../../../../api/ecommerceApi/api";
import { IItem } from "../../../../types/iEcommerce";
import { useParams } from "react-router-dom";
import { NavigationBar } from "../../components/NavigationBar/NavigationBar";
import { CarouselPhotoZoom } from "../../../../components/CarouselPhotoZoom/CarouselPhotoZoom";
import { ProductDetail } from "../../components/ProductDetail/ProductDetail";
import "./styles.scss";

interface ProductProps {
  isLoading: boolean;
  setLoading?: React.Dispatch<React.SetStateAction<boolean>>;
}
export const Product: React.FC<ProductProps> = ({ isLoading, setLoading }) => {
  const [storeItem, setStoreItem] = useState<IItem>({} as IItem);
  const fetchOnce = useRef(false);
  const { id } = useParams();

  useEffect(() => {
    if (!fetchOnce.current && id) {
      fetchOnce.current = true;
      if (setLoading) {
        setLoading(true);
      }

      fetchEcommerceOneItemAsync(parseInt(id))
        .then((data) => {
          setStoreItem(data);
          console.log(data);
        })
        .catch((error) => {
          console.log(error);
        })
        .finally(() => {
          if (setLoading) {
            setLoading(false);
          }
        });
    }
  }, [id, setLoading]);

  return (
    <TemplateDefault title={storeItem.tituloProduto || ""} isLoading={isLoading}>
      <NavigationBar />
      <div className="container-prod-details">
        <CarouselPhotoZoom media={storeItem.media || []} />
        <ProductDetail item={storeItem} />
      </div>
    </TemplateDefault>
  );
};

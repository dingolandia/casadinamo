import React from "react";
import { Route, Routes } from "react-router-dom";
import { TemplateDefault } from "../components/Templates/TemplateDefault";
import { Home } from "../pages/Home";
import { ImainMenuItems } from "../types/iLink";
import { NotFoundPage } from "../pages/404";
import { Contact } from "../pages/Contact";
import { Ecommerce } from "../pages/Ecommerce";
import { Catalog } from "../pages/Catalogo";
import { Product } from "../pages/Ecommerce/pages/products/product";

interface menuItemsProps {
  items: ImainMenuItems[];
  isLoading: boolean;
  setLoading?: React.Dispatch<React.SetStateAction<boolean>>;
}

export const MainRouter: React.FC<menuItemsProps> = ({
  items,
  isLoading,
  setLoading,
}) => {
  const routes = [];

  for (const item of items) {
    if (item.conteudo.length > 0) {
      routes.push(
        <Route
          key={item.id}
          path={item.url}
          element={
            <TemplateDefault
              title={item.descricao}
              contentId={item.conteudo[0].id}
              isHTML={true}
              isLoading={isLoading}
              setLoading={setLoading}
            />
          }
        />
      );
    }
  }

  return (
    <Routes>
      {routes}
      <Route path="/" element={<Home isLoading={isLoading} />} />
      <Route path="/home" element={<Home isLoading={isLoading} />} />
      <Route path="/contato" element={<Contact isLoading={isLoading} />} />
      <Route path="/loja" element={<Ecommerce isLoading={isLoading} setLoading={setLoading} />}/>
      <Route path="/produto/:id" element={<Product isLoading={isLoading} setLoading={setLoading} />}/>
      <Route path="/catalogo" element={<Catalog isLoading={isLoading} />} />
      <Route path="*" element={<NotFoundPage isLoading={isLoading} />} />
    </Routes>
  );
};

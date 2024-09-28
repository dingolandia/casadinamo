import { TemplateDefault } from "../../components/Templates/TemplateDefault";
import { catalogTitle } from "../../constants/global";

export const Catalog: React.FC<{ isLoading: boolean }> = ({ isLoading }) => {
  return (
    <TemplateDefault title={catalogTitle} isLoading={isLoading}>
      <h2>Página de catálogo</h2>
    </TemplateDefault>
  );
};

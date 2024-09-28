import { TemplateDefault } from "../../components/Templates/TemplateDefault";
import { contactFormTitle } from "../../constants/global";

export const Contact: React.FC<{ isLoading: boolean }> = ({ isLoading }) => {
  return (
    <TemplateDefault title={contactFormTitle} isLoading={isLoading}>
      <h2>Página de contatos</h2>
    </TemplateDefault>
  );
};

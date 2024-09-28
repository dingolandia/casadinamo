import { Link } from "react-router-dom";
import { TemplateDefault } from "../../components/Templates/TemplateDefault";
import { catalogTitle, ecommerceTitle, homeTitle, servicesTitle } from "../../constants/global";
import "./styles.scss";
import serviceImage from "../../assets/images/servicos.jpg";
import catalogoImage from "../../assets/images/catalogo.jpg";
import lojaImage from "../../assets/images/loja.jpg";

export const Home: React.FC<{ isLoading: boolean }> = ({ isLoading }) => {
  return (
    <TemplateDefault title={homeTitle} isLoading={isLoading}>
      <div className="component-home">
        <div className="bloco-item-home">
          <Link to="/servicos">
            <div className="img-block">
              <img src={serviceImage} alt="serviços" />
            </div>
            <div className="bloco-descricao">
              <span>{servicesTitle}</span>
            </div>
          </Link>
        </div>

        <div className="bloco-item-home">
          <Link to="/catalogo">
            <div className="img-block">
              <img src={catalogoImage} alt="Catálogo" />
            </div>
            <div className="bloco-descricao">
              <span>{catalogTitle}</span>
            </div>
          </Link>
        </div>

        <div className="bloco-item-home">
          <Link to="/loja">
            <div className="img-block">
              <img src={lojaImage} alt="Loja Virtual Online" />
            </div>
            <div className="bloco-descricao">
              <span>{ecommerceTitle}</span>
            </div>
          </Link>
        </div>
      </div>
    </TemplateDefault>
  );
};

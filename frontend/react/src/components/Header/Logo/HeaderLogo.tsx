import "./styles.scss";
import logoImage from "../../../assets/images/logo-casadinamo.png";

export const HeaderLogo = () => {
    return (
        <div className="logo">
		    <a href="/"><img src={logoImage} alt="Casa dinamo" title="Casa dinamo"/></a>
	    </div>
    );
};

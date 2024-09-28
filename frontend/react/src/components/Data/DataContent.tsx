import { useEffect, useState } from "react";
import { HeaderMenu } from "../Header/Menu/HeaderMenu";
import { MainRouter } from "../../router/mainRouter";
import { fetchMenuDataAsync } from "../../api/menuApi/api";
import { ImainMenuItems } from "../../types/iLink";
import { BrowserRouter } from "react-router-dom";
import { HeaderBlackBar } from "../Header/BlackBar/HeaderBlackBar";
import { HeaderContainer } from "../Header/Container/HeaderContainer";
import { HeaderLogo } from "../Header/Logo/HeaderLogo";
import { HeaderMenuMobile } from "../Header/MenuMobile/HeaderMenuMobile";
import { HeaderRedBar } from "../Header/RedBar/HeaderRedBar";
import { Banner } from "../Banner/Banner";
import { Isettings } from "../../types/iSettings";
import { fetchSettingsAsync } from "../../api/settingsApi/api";
import { Footer } from "../Footer/Footer";
import { LoadingSpinner } from "../Loading/Spinner";

export const DataContent = () => {
  const [menuItems, setMenuItems] = useState<ImainMenuItems[]>([]);
  const [isLoading, setIsLoading] = useState(false);
  const [menuLoadedOnce, setMenuLoadedOnce] = useState(false);
  const [settings, setSettings] = useState<Isettings>();
  const [isLoadingMenuSetting, setIsLoadingMenuSetting] = useState(true);

  useEffect(() => {
    if (menuItems.length === 0 && !menuLoadedOnce) {
      const fetchMenuAndSettings = async () => {
        setMenuLoadedOnce(true);
        setIsLoadingMenuSetting(true);

        try {
          const [menu, setting] = await Promise.all([
            fetchMenuDataAsync(),
            fetchSettingsAsync(),
          ]);

          setMenuItems(menu);
          console.log("Dados do menu", menu);
          setSettings(setting);
          console.log("Dados do setting", setting);
        } catch (error) {
          console.error(error);
        } finally {
          setIsLoadingMenuSetting(false);
        }
      };

      fetchMenuAndSettings();
    }
  }, [menuItems, menuLoadedOnce]);

  return (
    <BrowserRouter>
      <HeaderBlackBar warnings={settings?.avisos || ""} />
      <HeaderContainer>
        <HeaderLogo />
        <HeaderMenuMobile />
        <HeaderMenu menuItems={menuItems} />
      </HeaderContainer>
      <HeaderRedBar />
      <Banner />
      <MainRouter
        items={menuItems}
        isLoading={isLoading}
        setLoading={setIsLoading}
      />
      <Footer descriptionTxt={settings?.textoRodape || ""} />
      {<LoadingSpinner isLoading={isLoadingMenuSetting} />}
    </BrowserRouter>
  );
};

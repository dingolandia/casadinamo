import axios from "axios";
import { Isettings } from "../../types/iSettings";
import { errorfinding, ofSettings } from "../../constants/global";
import { fullUrl, settingsEndpoint } from "../../constants/uriEndPoints";

export const fetchSettingsAsync = async (): Promise<Isettings> => {
  try {
    const response = await axios.get(fullUrl + settingsEndpoint);
    return response.data?.data;
  } catch (error) {
    throw new Error(errorfinding + ofSettings);
  }
};

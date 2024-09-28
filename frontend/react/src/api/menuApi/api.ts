import axios from "axios";
import { ImainMenuItems } from "../../types/iLink";
import { fullUrl, menuItemsEndpoint } from "../../constants/uriEndPoints";
import { errorfinding, ofMenu } from "../../constants/global";

export const fetchMenuDataAsync = async (): Promise<ImainMenuItems[]> => {
  try {
    const response = await axios.get(fullUrl + menuItemsEndpoint);
    return response.data?.data;
  } catch (error) {
    throw new Error(errorfinding + ofMenu);
  }
};

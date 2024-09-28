import axios from "axios";
import { Icontent } from "../../types/iContent";
import { fullUrl, pageContentEndpoint } from "../../constants/uriEndPoints";
import { errorfinding, ofContent } from "../../constants/global";

export const fetchPageDataAsync = async (id:number): Promise<Icontent> => {
  try {
    const response = await axios.get(
      fullUrl + pageContentEndpoint + id
    );
    return response.data?.data;
  } catch (error) {
    throw new Error(errorfinding + ofContent);
  }
};

import axios from "axios";
import {
  errorfinding,
  ofStore,
} from "../../constants/global";
import { IItem, IRefOptions } from "../../types/iEcommerce";
import { allStoreItemsEndpoint, fullUrl } from "../../constants/uriEndPoints";

export const fetchEcommerceItemsAsync = async (): Promise<IItem[]> => {
  try {
    const response = await axios.get(fullUrl + allStoreItemsEndpoint);
    return response.data?.data;
  } catch (error) {
    throw new Error(errorfinding + ofStore + error);
  }
};

export const fetchEcommerceOneItemAsync = async (
  id: number
): Promise<IItem> => {
  try {
    const fullApiEndpoint = fullUrl + `/api/lojas/${id}?populate=*`;
    const response = await axios.get(fullApiEndpoint);
    return response.data?.data;
  } catch (error) {
    throw new Error(errorfinding + ofStore + error);
  }
};

export const fetchEcommerceBrandsAsync = async (): Promise<IRefOptions[]> => {
  try {
    const response = await axios.get(fullUrl + `/api/loja-marcas`);
    return response.data?.data;
  } catch (error) {
    throw new Error(errorfinding + ofStore + error);
  }
};

export const fetchEcommerceCarPartsAsync = async (): Promise<IRefOptions[]> => {
  try {
    const response = await axios.get(fullUrl + `/api/loja-pecas`);
    return response.data?.data;
  } catch (error) {
    throw new Error(errorfinding + ofStore + error);
  }
};

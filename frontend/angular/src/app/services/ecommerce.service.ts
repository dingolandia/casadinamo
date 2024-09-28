import { Injectable, inject } from '@angular/core';
import { IItem, IRefOptions } from '../models/interfaces/shop.item.interface';
import { Observable, catchError, map } from 'rxjs';
import {
  ALL_BRANDS_ENDPOINT,
  ALL_CAR_PARTS_ENDPOINT,
  ALL_STORE_ITEMS_ENDPOINT,
  ONE_STORE_ITEM_ENDPOINT,
} from '../constants/endpoints';
import { ERROR_FINDING, OF_STORE, FULL_URL } from '../constants/constants';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class EcommerceService {
  private http = inject(HttpClient);

  fetchEcommerceItems(): Observable<IItem[]> {
    return this.http
      .get<{ data: IItem[] }>(FULL_URL + ALL_STORE_ITEMS_ENDPOINT)
      .pipe(
        map((response: { data: IItem[] }) => response.data),
        catchError((error) => {
          console.error(error);
          throw new Error(ERROR_FINDING + OF_STORE);
        })
      );
  }

  fetchEcommerceOneItem(id: number): Observable<IItem[]> {
    return this.http
      .get<{ data: IItem[] }>(
        FULL_URL + `${ONE_STORE_ITEM_ENDPOINT + id}?populate=*`
      )
      .pipe(
        map((response: { data: IItem[] }) => response.data),
        catchError((error) => {
          console.error(error);
          throw new Error(ERROR_FINDING + OF_STORE);
        })
      );
  }

  fetchEcommerceBrands(): Observable<IRefOptions[]> {
    return this.http
      .get<{ data: IRefOptions[] }>(FULL_URL + ALL_BRANDS_ENDPOINT)
      .pipe(
        map((response: { data: IRefOptions[] }) => response.data),
        catchError((error) => {
          console.error(error);
          throw new Error(ERROR_FINDING + OF_STORE);
        })
      );
  }

  fetchEcommerceCarParts(): Observable<IRefOptions[]> {
    return this.http
      .get<{ data: IRefOptions[] }>(FULL_URL + ALL_CAR_PARTS_ENDPOINT)
      .pipe(
        map((response: { data: IRefOptions[] }) => response.data),
        catchError((error) => {
          console.error(error);
          throw new Error(ERROR_FINDING + OF_STORE);
        })
      );
  }
}

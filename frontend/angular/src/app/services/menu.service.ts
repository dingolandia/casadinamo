import { Injectable, inject } from '@angular/core';
import { ImainMenuItems } from '../models/interfaces/menu.interface';
import { Observable, catchError, map, of } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { MENU_ITEMS_ENDPOINT } from '../constants/endpoints';
import { FULL_URL } from '../constants/constants';

@Injectable({ providedIn: 'root' })
export class MenuService {
  private menuItems: ImainMenuItems[] = [];

  private http = inject(HttpClient);

  loadMenu(): Observable<ImainMenuItems[]> {
    return this.http
      .get<{ data: ImainMenuItems[] }>(FULL_URL + MENU_ITEMS_ENDPOINT)
      .pipe(
        map((response: { data: ImainMenuItems[] }) => response.data),
        catchError((error) => {
          console.error('Erro ao carregar as configurações:', error);
          return [];
        })
      );
  }

  getMenu(): Observable<ImainMenuItems[]> {
    if (this.menuItems && this.menuItems.length > 0) {
      return of(this.menuItems);
    } else {
      return this.loadMenu();
    }
  }
}

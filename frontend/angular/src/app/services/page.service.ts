import { Injectable, inject } from '@angular/core';
import { Icontent } from '../models/interfaces/page.interface';
import { Observable, catchError, map, of } from 'rxjs';
import { PAGE_CONTENT_ENDPOINT } from '../constants/endpoints';
import { HttpClient } from '@angular/common/http';
import { FULL_URL } from '../constants/constants';

@Injectable({
  providedIn: 'root',
})
export class PageService {
  private pageContent: Icontent | undefined;
  private http = inject(HttpClient);

  loadPageContent(id: number): Observable<Icontent> {
    return this.http
      .get<{ data: Icontent }>(FULL_URL + PAGE_CONTENT_ENDPOINT + id)
      .pipe(
        map((response: { data: Icontent }) => response.data),
        catchError((error) => {
          console.error('Erro ao carregar as configurações:', error);
          return [];
        })
      );
  }

  getPageContent(id: number): Observable<Icontent> {
    if (this.pageContent) {
      return of(this.pageContent);
    } else {
      return id ? this.loadPageContent(id) : of({} as Icontent);
    }
  }
}

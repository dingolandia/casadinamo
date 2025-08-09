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

  private mockContent = {
    id: 1,
    conteudo:
      '<p><strong>Texto da empresa, e mais alguns detalhes para teste</strong></p><p><strong>E algum lipsum: </strong>Nullam ac urna est. Ut sodales purus sagittis accumsan suscipit. Aenean rutrum erat ac lorem accumsan condimentum. Maecenas tempor, tortor quis tincidunt ornare, neque mauris volutpat justo, id aliquet nulla mi vel sem. Ut sem purus, hendrerit et dignissim id, feugiat id est. Duis fringilla fermentum nisi vel venenatis. Donec nunc arcu, ultricies vel commodo cursus, blandit eu eros. Integer auctor, mauris non feugiat posuere, justo orci consectetur dui, nec elementum purus massa et mauris. Aliquam erat volutpat. Ut tempor molestie ligula, in porta tellus elementum sed. Etiam vel laoreet ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet erat vitae lectus hendrerit volutpat. Nam semper felis enim, sit amet fermentum libero auctor ut. Ut sem sem, aliquet vitae gravida id, luctus nec lacus. Etiam maximus, augue quis congue aliquam, lorem nunc mattis leo, a lacinia metus arcu id eros.</p><p style="-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:&quot;Open Sans&quot;, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 15px;orphans:2;padding:0px;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;">Cras at nisi justo. Phasellus tincidunt fringilla dui nec sodales. Praesent porttitor quam a est blandit mattis. Aenean sit amet quam porttitor, viverra metus vel, placerat dui. In a neque odio. Vestibulum at felis libero. Pellentesque efficitur porttitor accumsan. Aenean id leo a lectus imperdiet viverra nec lobortis ipsum. Donec vulputate metus at interdum tempor.</p>',
    createdAt: '2023-10-14T09:54:37.986Z',
    updatedAt: '2023-10-16T17:45:33.598Z',
    locale: 'pt-BR',
    titulo: 'Empresa',
  };

  loadPageContent(id: number): Observable<Icontent> {
    return of(this.mockContent);

    /*return this.http
      .get<{ data: Icontent }>(FULL_URL + PAGE_CONTENT_ENDPOINT + id)
      .pipe(
        map((response: { data: Icontent }) => response.data),
        catchError((error) => {
          console.error('Erro ao carregar as configurações:', error);
          return [];
        })
      );*/
  }

  getPageContent(id: number): Observable<Icontent> {
    if (this.pageContent) {
      return of(this.pageContent);
    } else {
      return id ? this.loadPageContent(id) : of({} as Icontent);
    }
  }
}

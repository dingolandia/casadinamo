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

  mockMenuData = [
    {
      id: 3,
      ordem: 1,
      descricao: 'Home',
      url: '/home',
      ativo: true,
      createdAt: '2023-10-13T09:13:20.819Z',
      updatedAt: '2023-10-13T09:13:20.819Z',
      tipo_link: {
        id: 3,
        descricao: 'componente',
      },
      conteudo: [],
    },
    {
      id: 1,
      ordem: 2,
      descricao: 'Empresa',
      url: '/empresa',
      ativo: true,
      createdAt: '2023-10-13T09:10:09.866Z',
      updatedAt: '2023-10-14T15:50:39.410Z',
      tipo_link: {
        id: 1,
        descricao: 'interno',
      },
      conteudo: [
        {
          id: 1,
          titulo: 'Empresa',
          locale: 'pt-BR',
        },
      ],
    },
    {
      id: 2,
      ordem: 3,
      descricao: 'Serviços',
      url: '/servicos',
      ativo: true,
      createdAt: '2023-10-13T09:12:15.723Z',
      updatedAt: '2023-10-13T09:12:15.723Z',
      tipo_link: {
        id: 1,
        descricao: 'interno',
      },
      conteudo: [
        {
          id: 2,
          titulo: 'Serviço',
          locale: 'pt-BR',
        },
      ],
    },
    {
      id: 4,
      ordem: 4,
      descricao: 'Contato',
      url: '/contato',
      ativo: true,
      createdAt: '2023-10-13T09:13:49.752Z',
      updatedAt: '2023-10-13T09:13:49.752Z',
      tipo_link: {
        id: 3,
        descricao: 'componente',
      },
      conteudo: [],
    },
    {
      id: 5,
      ordem: 5,
      descricao: 'Loja',
      url: '/loja',
      ativo: true,
      createdAt: '2023-10-13T09:16:19.076Z',
      updatedAt: '2023-10-14T09:30:42.382Z',
      tipo_link: {
        id: 3,
        descricao: 'componente',
      },
      conteudo: [],
    },
  ];

  loadMenu(): Observable<ImainMenuItems[]> {
    return of(this.mockMenuData);
    /*return this.http
      .get<{ data: ImainMenuItems[] }>(FULL_URL + MENU_ITEMS_ENDPOINT)
      .pipe(
        map((response: { data: ImainMenuItems[] }) => response.data),
        catchError((error) => {
          console.error('Erro ao carregar as configurações:', error);
          return [];
        })
      );*/
  }

  getMenu(): Observable<ImainMenuItems[]> {
    if (this.menuItems && this.menuItems.length > 0) {
      return of(this.menuItems);
    } else {
      return this.loadMenu();
    }
  }
}

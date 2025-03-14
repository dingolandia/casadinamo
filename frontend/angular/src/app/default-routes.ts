import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { ContactComponent } from './pages/contact/contact.component';
import { CatalogComponent } from './pages/catalog/catalog.component';
import { P404Component } from './pages/p404/p404.component';
import { UserLoginComponent } from './components/forms/user-login/user-login.component';
import { UserSignupComponent } from './components/forms/user-signup/user-signup.component';
import { OrderListComponent } from './pages/user/order-list/order-list.component';
import { ProfilerComponent } from './components/profiler/profiler.component';
import { UserProfileComponent } from './pages/user/user-profile/user-profile.component';
import { AddressComponent } from './pages/user/address/address.component';
import { SecurityComponent } from './pages/user/security/security.component';
import { StoreComponent } from './ecommerce/pages/store/store.component';
import { ProductsComponent } from './ecommerce/pages/products/products.component';

export const defaultRoutes: Routes = [
  {
    path: 'home',
    component: HomeComponent,
    data: { titleText: 'Home' },
    title: 'Home',
  },
  {
    path: 'contato',
    component: ContactComponent,
    data: { titleText: 'Contato' },
    title: 'Contato',
  },
  {
    path: 'loja',
    component: StoreComponent,
    data: { titleText: 'Loja' },
    title: 'Loja',
  },
  {
    path: 'produto/:id',
    component: ProductsComponent,
    data: { titleText: 'Produto' },
    title: 'Produto',
  },
  {
    path: 'catalogo',
    component: CatalogComponent,
    data: { titleText: 'Catálogo' },
    title: 'Catálogo',
  },
  {
    path: 'login',
    component: UserLoginComponent,
    data: { titleText: 'Login' },
    title: 'Login',
  },
  {
    path: 'perfil',
    component: ProfilerComponent,
    data: { titleText: 'Perfil do usuário' },
    title: 'Perfil do usuário',
    children: [
      {
        path: '',
        component: UserProfileComponent,
        data: { titleText: 'Dados do usuário' },
        title: 'Dados do usuário',
      },
      {
        path: 'dados',
        component: UserSignupComponent,
        data: { titleText: 'Dados do usuário', loadData: true },
        title: 'Dados do usuário',
      },
      {
        path: 'pedidos',
        component: OrderListComponent,
        data: { titleText: 'Dados do usuário' },
        title: 'Pedidos do usuário',
      },
      {
        path: 'enderecos',
        component: AddressComponent,
        data: { titleText: 'Dados do usuário' },
        title: 'Endereços de entrega',
      },
      {
        path: 'seguranca',
        component: SecurityComponent,
        data: { titleText: 'Dados do usuário' },
        title: 'Autenticação',
      },
    ],
  },
  {
    path: '404',
    component: P404Component,
    data: { titleText: 'Página não encontrada' },
    title: 'Página não encontrada',
  },
];

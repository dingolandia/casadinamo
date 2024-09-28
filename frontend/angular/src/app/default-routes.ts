import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { ContactComponent } from './pages/contact/contact.component';
import { StoreComponent } from './pages/ecommerce/pages/store/store.component';
import { ProductsComponent } from './pages/ecommerce/pages/products/products.component';
import { CatalogComponent } from './pages/catalog/catalog.component';
import { P404Component } from './pages/p404/p404.component';
import { UserLoginComponent } from './components/forms/user-login/user-login.component';
import { UserSignupComponent } from './components/forms/user-signup/user-signup.component';
import { OrderListComponent } from './pages/user/order-list/order-list.component';
import { ProfilerComponent } from './components/profiler/profiler.component';
import { UserProfileComponent } from './pages/user/user-profile/user-profile.component';

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
        data: { titleText: 'Pedidos do usuário' },
        title: 'Perfil do usuário',
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

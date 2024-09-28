//app.module.ts

import {
  APP_INITIALIZER,
  CUSTOM_ELEMENTS_SCHEMA,
  NgModule,
} from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HeadModule } from './modules/head/head.module';
import { ContentModule } from './modules/content/content.module';
import { FooterModule } from './modules/footer/footer.module';
import { AppComponent } from './app.component';
import { SettingsService } from './services/settings.service';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { HomeComponent } from './pages/home/home.component';
import { ContactComponent } from './pages/contact/contact.component';
import { CatalogComponent } from './pages/catalog/catalog.component';
import { ProductsComponent } from './pages/ecommerce/pages/products/products.component';
import { StoreComponent } from './pages/ecommerce/pages/store/store.component';
import { NavigationBarComponent } from './pages/ecommerce/components/navigation-bar/navigation-bar.component';
import { ProductDetailComponent } from './pages/ecommerce/components/product-detail/product-detail.component';
import { SearchBarComponent } from './pages/ecommerce/components/search-bar/search-bar.component';
import { ShoppingComponent } from './pages/ecommerce/components/shopping/shopping.component';
import { P404Component } from './pages/p404/p404.component';
import { RouteInitService } from './services/route-init.service';
import { AppRoutingModule } from './app-routing.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatDialogModule } from '@angular/material/dialog';
import { MatMenuModule } from '@angular/material/menu';
import { MatButtonModule } from '@angular/material/button';
import { NgxSpinnerModule } from 'ngx-spinner';
import { DialogBoxComponent } from './components/dialog-box/dialog-box.component';
import { UserLoginComponent } from './components/forms/user-login/user-login.component';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { ReactiveFormsModule } from '@angular/forms';
import { MatIconModule } from '@angular/material/icon';
import { CookieService } from 'ngx-cookie-service';
import { UserProfileComponent } from './pages/user/user-profile/user-profile.component';
import { ModalUserLoginComponent } from './components/modal/modal-user-login/modal-user-login.component';
import { ModalHeaderComponent } from './components/modal/modal-header/modal-header.component';
import { UserSignupComponent } from './components/forms/user-signup/user-signup.component';
import { Routes } from '@angular/router';
import { ApiInterceptor } from './interceptors/api.interceptor';
import { ProfilerComponent } from './components/profiler/profiler.component';
import { OrderListComponent } from './pages/user/order-list/order-list.component';

export function initializeApp(routerInitService: RouteInitService) {
  return (): Promise<Routes> => {
    return routerInitService.initAsync();
  };
}

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ContactComponent,
    CatalogComponent,
    ProductsComponent,
    StoreComponent,
    NavigationBarComponent,
    ProductDetailComponent,
    SearchBarComponent,
    ShoppingComponent,
    P404Component,
    DialogBoxComponent,
    UserLoginComponent,
    UserProfileComponent,
    ModalUserLoginComponent,
    ModalHeaderComponent,
    UserSignupComponent,
    ProfilerComponent,
    OrderListComponent,
  ],
  imports: [
    NgxSpinnerModule,
    BrowserAnimationsModule,
    BrowserModule,
    HeadModule,
    ContentModule,
    FooterModule,
    HttpClientModule,
    AppRoutingModule,
    MatDialogModule,
    MatMenuModule,
    MatButtonModule,
    MatFormFieldModule,
    MatInputModule,
    ReactiveFormsModule,
    MatIconModule,
  ],
  providers: [
    RouteInitService,
    SettingsService,
    CookieService,
    { provide: HTTP_INTERCEPTORS, useClass: ApiInterceptor, multi: true },
    {
      provide: APP_INITIALIZER,
      useFactory: initializeApp,
      multi: true,
      deps: [RouteInitService],
    },
  ],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
  bootstrap: [AppComponent],
})
export class AppModule {}

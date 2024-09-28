import { Component } from '@angular/core';
import { CookieService } from 'ngx-cookie-service';

@Component({
  selector: 'app-catalog',
  templateUrl: './catalog.component.html',
  styleUrls: ['./catalog.component.scss']
})
export class CatalogComponent {

  constructor(private cookieService: CookieService) { }

  ngOnInit(): void {

    console.log("user token:", this.cookieService.get('jwtToken'));

  }
}

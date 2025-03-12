import { Component, Input } from '@angular/core';
import { IItem } from 'src/app/models/interfaces/shop.item.interface';
import { EcommerceService } from 'src/app/services/ecommerce.service';

@Component({
  selector: 'app-store',
  templateUrl: './store.component.html',
  styleUrls: ['./store.component.scss']
})
export class StoreComponent {
  public items: Array<IItem> = [];

  constructor(private ecommerceService: EcommerceService) { }

  ngOnInit() {
    this.ecommerceService.fetchEcommerceItems().subscribe({
      next: (items) => {
        this.items = items;
      }
    })
  }


}

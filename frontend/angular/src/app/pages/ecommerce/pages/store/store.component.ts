import { Component, Input } from '@angular/core';
import { IItem } from 'src/app/models/interfaces/shop.item.interface';

@Component({
  selector: 'app-store',
  templateUrl: './store.component.html',
  styleUrls: ['./store.component.scss']
})
export class StoreComponent {
  @Input() itemShop: IItem | undefined;

}

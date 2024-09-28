import { inject } from '@angular/core';
import { MenuService } from './menu.service';
import { ImainMenuItems } from '../models/interfaces/menu.interface';
import { Observable } from 'rxjs';

export class MenuItemsResolverService {
  private menuService = inject(MenuService);

  resolve():
    | ImainMenuItems[]
    | Observable<ImainMenuItems[]>
    | Promise<ImainMenuItems[]> {
    return this.menuService.getMenu();
  }
}

import { settingsMock } from './api/settings.mock';
import { menuItemsMock } from './api/menu-items.mock';
import { pageContentMockId1, pageContentMockId2 } from './api/page-content.mock';
import {
  MENU_ITEMS_ENDPOINT,
  PAGE_CONTENT_ENDPOINT,
  SETTINGS_ENDPOINT,
} from '../constants/endpoints';

export const mockMap = new Map<string, object>([
  [SETTINGS_ENDPOINT, settingsMock],
  [MENU_ITEMS_ENDPOINT, menuItemsMock],
  [PAGE_CONTENT_ENDPOINT+1, pageContentMockId1],
  [PAGE_CONTENT_ENDPOINT+2, pageContentMockId2],
]);

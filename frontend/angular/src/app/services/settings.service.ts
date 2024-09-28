import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { map, catchError } from 'rxjs/operators';
import { SETTINGS_ENDPOINT } from '../constants/endpoints';
import { Isettings } from '../models/interfaces/settings.interface';
import { ERROR_FINDING, OF_SETTINGS, FULL_URL } from '../constants/constants';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class SettingsService {
  private settings: Isettings | undefined;

  constructor(private http: HttpClient) {}

  loadSettings(): Observable<Isettings> {
    return this.http
      .get<{ data: Isettings }>(FULL_URL + SETTINGS_ENDPOINT)
      .pipe(
        map((response) => {
          return response.data;
        }),
        catchError((error) => {
          console.error(error);
          throw new Error(ERROR_FINDING + OF_SETTINGS);
        })
      );
  }

  getSettings(): Observable<Isettings | undefined> {
    if (this.settings) {
      return of(this.settings);
    } else {
      return this.loadSettings();
    }
  }
}

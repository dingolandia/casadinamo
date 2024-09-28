import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { catchError, map, of, tap } from 'rxjs';
import { FULL_URL } from '../constants/constants';
import { SETTINGS_ENDPOINT } from '../constants/endpoints';

@Injectable({ providedIn: 'root' })
export class AvailabilityCheckService {
  private apiAvailable: boolean | null = null;

  constructor(private http: HttpClient) {}

  private testUrl = FULL_URL + SETTINGS_ENDPOINT;

  isApiAvailable() {
    if (this.apiAvailable !== null) {
      return of(this.apiAvailable);
    }

    return this.http.get(this.testUrl, { headers: { 'Skip-Interceptor': 'true' } }).pipe(
      map(() => true),
      catchError(() => of(false)),
      tap((isAvailable: boolean) => this.apiAvailable = isAvailable)
    );
  }
}

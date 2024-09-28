import { Injectable } from '@angular/core';
import {
  HttpInterceptor,
  HttpRequest,
  HttpHandler,
  HttpEvent,
  HttpResponse,
} from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { switchMap } from 'rxjs/operators';
import { AvailabilityCheckService } from '../services/availability-check.service';
import { mockMap } from '../mocks';

@Injectable()
export class ApiInterceptor implements HttpInterceptor {
  constructor(private availabilityCheckService: AvailabilityCheckService) {}

  intercept(
    req: HttpRequest<object>,
    next: HttpHandler
  ): Observable<HttpEvent<object>> {
    if (req.url.includes('/api/')) {
      return this.handleApiRequests(req, next);
    }
    return next.handle(req);
  }

  private findMockData(url: string): object | undefined {
    let mockData;
    mockMap.forEach((value, key) => {
      if (url.includes(key)) {
        mockData = value;
      }
    });
    return mockData;
  }

  private handleApiRequests(
    req: HttpRequest<object>,
    next: HttpHandler
  ): Observable<HttpEvent<object>> {
    if (req.headers.has('Skip-Interceptor')) {
      const newReq = req.clone({
        headers: req.headers.delete('Skip-Interceptor'),
      });
      return next.handle(newReq);
    }

    return this.availabilityCheckService.isApiAvailable().pipe(
      switchMap((isAvailable) => {
        if (!isAvailable) {
          const mockData = this.findMockData(req.url);
          return of(new HttpResponse({ status: 200, body: mockData }));
        }
        return next.handle(req);
      })
    );
  }
}

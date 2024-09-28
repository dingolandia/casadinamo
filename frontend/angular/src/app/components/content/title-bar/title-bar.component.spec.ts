import { TestBed } from '@angular/core/testing';

import { TitleBarComponent } from './title-bar.component';
import { ActivatedRoute, NavigationEnd, Router, RouterEvent } from '@angular/router';
import { Subject } from 'rxjs';

describe('TitleBarComponent', () => {
  let routerEvents: Subject<RouterEvent>;

  interface ActivatedRouteMock {
    snapshot: { data: { titleText: string } } | null;
    firstChild: ActivatedRouteMock | null;
  }

  beforeEach(() => {
    routerEvents = new Subject();
  });

  function setupTestBed(activatedRouteMock:ActivatedRouteMock) {
    TestBed.configureTestingModule({
      declarations: [TitleBarComponent],
      providers: [
        { provide: Router, useValue: { events: routerEvents.asObservable() } },
        { provide: ActivatedRoute, useValue: activatedRouteMock },
      ],
    }).compileComponents();

    const fixture = TestBed.createComponent(TitleBarComponent);
    const component = fixture.componentInstance;
    fixture.detectChanges();
    return { fixture, component };
  }

  it('Should capture the title from the route', () => {
    const mockFirstChild = {
      snapshot: { data: { titleText: 'Nested Route Title' } },
      firstChild: null,
    };

    const activatedRouteMock = {
      snapshot: null,
      firstChild: mockFirstChild,
    };

    const { component, fixture } = setupTestBed(activatedRouteMock);

    routerEvents.next(new NavigationEnd(1, '/nested-route', '/nested-route'));
    fixture.detectChanges();

    expect(component.title).toEqual('Nested Route Title');
  });

  it('Should return an empty string if snapshot is not defined', () => {
    const activatedRouteMock = {
      snapshot: null,
      firstChild: null,
    };

    const { component, fixture } = setupTestBed(activatedRouteMock);

    routerEvents.next(
      new NavigationEnd(1, '/route-without-snapshot', '/route-without-snapshot')
    );
    fixture.detectChanges();

    expect(component.title).toEqual('');
  });

  it('should create', () => {
    const { component } = setupTestBed({} as ActivatedRouteMock);
    expect(component).toBeTruthy();
  });
});

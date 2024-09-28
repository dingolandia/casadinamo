import { ComponentFixture, TestBed } from '@angular/core/testing';
import { RouterTestingModule } from '@angular/router/testing';
import { ContentsLoaderComponent } from './content.loader.component';
import { HttpClient } from '@angular/common/http';
import { MockService } from 'ng-mocks';
import { LoadingService } from 'src/app/services/loading.service';
import { PageService } from 'src/app/services/page.service';
import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { Router } from '@angular/router';
import { Icontent } from 'src/app/models/interfaces/page.interface';
import { of, throwError } from 'rxjs';

describe('ContentLoaderComponent', () => {
  let component: ContentsLoaderComponent;
  let fixture: ComponentFixture<ContentsLoaderComponent>;
  let router: Router;
  let currentRoute: string;
  let loadingServiceMock: jasmine.SpyObj<LoadingService>;
  let getHtmlContentFromRouteSpy: jasmine.Spy;
  let pageService: PageService;
  const mockPageContent: Icontent = {
    id: 1,
    titulo: 'Teste',
    locale: 'pt-BR',
    conteudo:
      'Lipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum',
  };

  beforeEach(() => {
    loadingServiceMock = jasmine.createSpyObj('LoadingService', ['setLoading']);

    TestBed.configureTestingModule({
      declarations: [ContentsLoaderComponent],
      imports: [
        RouterTestingModule.withRoutes([
          {
            path: 'test',
            component: ContentsLoaderComponent,
            data: { htmlContent: 1, titleText: 'Dynamic test content' },
            title: 'Dynamic test content',
          },
        ]),
      ],
      providers: [
        { provide: HttpClient, useValue: MockService(HttpClient) },
        {
          provide: PageService,
          useValue: MockService(PageService),
        },
        {
          provide: LoadingService,
          useValue: loadingServiceMock,
        },
      ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    }).compileComponents();

    fixture = TestBed.createComponent(ContentsLoaderComponent);
    component = fixture.componentInstance;
    pageService = TestBed.inject(PageService);
    router = TestBed.inject(Router);
  });

  beforeEach(async () => {
    await router.navigateByUrl('/test');
    await fixture.whenStable();
    getHtmlContentFromRouteSpy = spyOn(
      component,
      'getHtmlContentFromRoute'
    ).and.returnValue(router.config[0].data?.['htmlContent']);
  });

  it('should receive route data and update component state', () => {
    currentRoute = router.url;
    expect(currentRoute).toBe('/test');
    const config = router.config[0];
    expect(config.data?.['htmlContent']).toBe(1);
    expect(config.data?.['titleText']).toBe('Dynamic test content');
  });

  it('Should call method getHtmlContentFromRoute', () => {
    getHtmlContentFromRouteSpy.and.callThrough();
    component.ngOnInit();
    expect(getHtmlContentFromRouteSpy).toHaveBeenCalled();
  });

  it('Should call loadingService.setLoading', () => {
    spyOn(pageService, 'getPageContent').and.returnValue(of(mockPageContent));
    component.ngOnInit();
    expect(loadingServiceMock.setLoading).toHaveBeenCalled();
    expect(loadingServiceMock.setLoading).toHaveBeenCalledWith(true);
  });

  it('Should call service PageService.getPageContent', () => {
    const getPageContentSpy = spyOn(
      pageService,
      'getPageContent'
    ).and.returnValue(of(mockPageContent));
    component.ngOnInit();
    const idContent = router.config[0].data?.['htmlContent'];

    fixture.detectChanges();
    expect(getPageContentSpy).toHaveBeenCalledWith(idContent);

    getPageContentSpy(idContent).subscribe((data) => {
      expect(data).toEqual(mockPageContent);
    });
  });

  it('Should handle error in PageService.getPageContent', () => {
    const getPageContentSpy = spyOn(
      pageService,
      'getPageContent'
    ).and.returnValue(throwError(() => new Error('Simulated error')));

    component.ngOnInit();
    fixture.detectChanges();
    expect(getPageContentSpy).toHaveBeenCalled();
  });
});

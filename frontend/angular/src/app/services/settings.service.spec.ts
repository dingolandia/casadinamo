import { TestBed } from '@angular/core/testing';
import { SettingsService } from './settings.service';
import {
  HttpClientTestingModule,
  HttpTestingController,
} from '@angular/common/http/testing';
import { SETTINGS_ENDPOINT } from '../constants/endpoints';
import { ERROR_FINDING, OF_SETTINGS, FULL_URL } from '../constants/constants';
import { settingsMock } from '../mocks/api/settings.mock';

describe('SettingsService', () => {
  let service: SettingsService;
  let httpMock: HttpTestingController;

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [SettingsService],
      imports: [HttpClientTestingModule],
    });
    service = TestBed.inject(SettingsService);
    httpMock = TestBed.inject(HttpTestingController);
  });

  it('should fetch settings', () => {
    service.loadSettings().subscribe({
      next: (settings) => {
        expect(settings).toEqual(settingsMock.data);
      },
    });

    const req = httpMock.expectOne(FULL_URL + SETTINGS_ENDPOINT);
    expect(req.request.method).toBe('GET');
    req.flush(settingsMock);
  });

  it('should throw an error to fetch settings if the server returns a 404', () => {
    service.loadSettings().subscribe({
      next: () => {
        fail('should have failed with the 404 error');
      },
      error: (error) => {
        expect(error).toEqual(new Error(ERROR_FINDING + OF_SETTINGS));
      },
    });

    const req = httpMock.expectOne(FULL_URL + SETTINGS_ENDPOINT);
    req.flush('404 error: Not Found', {
      status: 404,
      statusText: 'Not Found',
    });
  });

  it('should use correct URL to fetch settings', () => {
    service.getSettings().subscribe();
    const expectedURL = `http://localhost:1337/api/configuracaos/1`;
    const req = httpMock.expectOne(
      (request) => request.url === FULL_URL + SETTINGS_ENDPOINT
    );
    expect(req.request.url).toBe(expectedURL);
    req.flush(settingsMock);
  });

  it('should call getSettings with no error', () => {
    const callGetSettings = service.getSettings();
    expect(callGetSettings).toBeTruthy();
  });

  it('should return settings from this.settings if already loaded', () => {
    // Chama loadSettings() para definir this.settings
    service.loadSettings().subscribe((settings) => {
      expect(settings).toEqual(settingsMock.data);

      // Chama getSettings() e verifica se retorna this.settings
      service.getSettings().subscribe((cachedSettings) => {
        expect(cachedSettings).toBe(settingsMock.data);

        // Verifica se nenhuma nova chamada HTTP é feita
        httpMock.expectNone(FULL_URL + SETTINGS_ENDPOINT);
      });
    });

    // Simula a resposta do servidor para loadSettings()
    const reqLoadSettings = httpMock.expectOne(FULL_URL + SETTINGS_ENDPOINT);
    reqLoadSettings.flush(settingsMock);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});

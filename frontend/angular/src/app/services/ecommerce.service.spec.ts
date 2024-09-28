import { TestBed } from '@angular/core/testing';

import { EcommerceService } from './ecommerce.service';
import {
  HttpClientTestingModule,
  HttpTestingController,
} from '@angular/common/http/testing';
import { IItem, IRefOptions } from '../models/interfaces/shop.item.interface';
import {
  ALL_BRANDS_ENDPOINT,
  ALL_CAR_PARTS_ENDPOINT,
  ALL_STORE_ITEMS_ENDPOINT,
  ONE_STORE_ITEM_ENDPOINT,
} from '../constants/endpoints';
import { ERROR_FINDING, OF_STORE, FULL_URL } from '../constants/constants';

describe('EcommerceService', () => {
  let service: EcommerceService;
  let httpMock: HttpTestingController;
  const mockItems: IItem[] = [
    {
      id: 1,
      tituloProduto: 'tituloProduto',
      preco: 1,
      quantidadeMinima: 1,
      descricao: 'descricao',
      media: [
        {
          id: 1,
          name: 'name',
          alternativeText: 'alternativeText',
          caption: 'caption',
          width: 1,
          height: 1,
          formats: {
            thumbnail: {
              name: 'name',
              hash: 'hash',
              ext: 'ext',
              mime: 'mime',
              path: 'path',
              width: 1,
              height: 1,
              size: 1,
              url: 'url',
            },
          },
          hash: 'hash',
          ext: 'ext',
          mime: 'mime',
          size: 1,
          url: 'url',
          previewUrl: 'previewUrl',
          provider: 'provider',
        },
      ],
      loja_categoria_aplicacao: {
        id: 1,
        descricao: 'descricao',
      },
      loja_marca: {
        id: 1,
        descricao: 'descricao',
      },
      loja_peca: {
        id: 1,
        descricao: 'descricao',
      },
      opcional: {
        id: 1,
        descricao: 'descricao',
      },
    },
  ];

  const mockOptions: IRefOptions[] = [
    {
      id: 1,
      descricao: 'Teste 1',
    },
    {
      id: 2,
      descricao: 'Teste 2',
    },
  ];

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [EcommerceService],
      imports: [HttpClientTestingModule],
    });
    service = TestBed.inject(EcommerceService);
    httpMock = TestBed.inject(HttpTestingController);
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should fetch ECOMMERCE items', () => {
    service.fetchEcommerceItems().subscribe({
      next: (items) => {
        expect(items.length).toBeGreaterThan(0);
        expect(items).toEqual(mockItems);
      },
    });

    const req = httpMock.expectOne(FULL_URL + ALL_STORE_ITEMS_ENDPOINT);
    expect(req.request.method).toBe('GET');
    req.flush({ data: mockItems });
  });

  it('should throw an error to fetch ECOMMERCE if the server returns a 404', () => {
    service.fetchEcommerceItems().subscribe({
      next: () => {
        fail('should have failed with the 404 error');
      },
      error: (error) => {
        expect(error).toEqual(new Error(ERROR_FINDING + OF_STORE));
      },
    });

    const req = httpMock.expectOne(FULL_URL + ALL_STORE_ITEMS_ENDPOINT);
    req.flush('404 error: Not Found', {
      status: 404,
      statusText: 'Not Found',
    });
  });

  it('should use correct URL to fetch ECOMMERCE items', () => {
    service.fetchEcommerceItems().subscribe();
    const expectedURL = `http://localhost:1337/api/lojas?populate=*`;
    const req = httpMock.expectOne(
      (request) => request.url === FULL_URL + ALL_STORE_ITEMS_ENDPOINT
    );
    expect(req.request.url).toBe(expectedURL);
    req.flush({ data: mockItems });
  });

  it('should fetch ECOMMERCE ONE item', () => {
    const itemId: number = 1;
    service.fetchEcommerceOneItem(itemId).subscribe({
      next: (items) => {
        expect(items.length).toEqual(1);
        expect(items).toEqual(mockItems);
      },
    });

    const req = httpMock.expectOne(
      `${FULL_URL + ONE_STORE_ITEM_ENDPOINT + itemId}?populate=*`
    );
    expect(req.request.method).toBe('GET');
    req.flush({ data: mockItems });
  });

  it('should throw an error to fetch ECOMMERCE ONE item if the server returns a 404', () => {
    const itemId: number = 1;
    service.fetchEcommerceOneItem(itemId).subscribe({
      next: () => {
        fail('should have failed with the 404 error');
      },
      error: (error) => {
        expect(error).toEqual(new Error(ERROR_FINDING + OF_STORE));
      },
    });

    const req = httpMock.expectOne(
      `${FULL_URL + ONE_STORE_ITEM_ENDPOINT + itemId}?populate=*`
    );
    req.flush('404 error: Not Found', {
      status: 404,
      statusText: 'Not Found',
    });
  });

  it('should use correct URL to fetch ECOMMERCE ONE item', () => {
    const itemId: number = 1;
    service.fetchEcommerceOneItem(itemId).subscribe();
    const expectedURL = `http://localhost:1337/api/lojas/${itemId}?populate=*`;
    const req = httpMock.expectOne(
      (request) =>
        request.url ===
        `${FULL_URL + ONE_STORE_ITEM_ENDPOINT + itemId}?populate=*`
    );
    expect(req.request.url).toBe(expectedURL);
    req.flush({ data: mockItems });
  });

  it('should fetch ECOMMERCE Brands', () => {
    service.fetchEcommerceBrands().subscribe({
      next: (brands) => {
        expect(brands.length).toBeGreaterThan(0);
        expect(brands).toEqual(mockOptions);
      },
    });

    const req = httpMock.expectOne(FULL_URL + ALL_BRANDS_ENDPOINT);
    expect(req.request.method).toBe('GET');
    req.flush({ data: mockOptions });
  });

  it('should throw an error to fetch ECOMMERCE Brands if the server returns a 404', () => {
    service.fetchEcommerceBrands().subscribe({
      next: () => {
        fail('should have failed with the 404 error');
      },
      error: (error) => {
        expect(error).toEqual(new Error(ERROR_FINDING + OF_STORE));
      },
    });

    const req = httpMock.expectOne(FULL_URL + ALL_BRANDS_ENDPOINT);
    req.flush('404 error: Not Found', {
      status: 404,
      statusText: 'Not Found',
    });
  });

  it('should use correct URL to fetch ECOMMERCE Brands', () => {
    service.fetchEcommerceBrands().subscribe();
    const expectedURL = `http://localhost:1337/api/loja-marcas`;
    const req = httpMock.expectOne(
      (request) => request.url === FULL_URL + ALL_BRANDS_ENDPOINT
    );
    expect(req.request.url).toBe(expectedURL);
    req.flush({ data: mockOptions });
  });

  it('should fetch ECOMMERCE Car Parts', () => {
    service.fetchEcommerceCarParts().subscribe({
      next: (carParts) => {
        expect(carParts.length).toBeGreaterThan(0);
        expect(carParts).toEqual(mockOptions);
      },
    });

    const req = httpMock.expectOne(FULL_URL + ALL_CAR_PARTS_ENDPOINT);
    expect(req.request.method).toBe('GET');
    req.flush({ data: mockOptions });
  });

  it('should throw an error to fetch ECOMMERCE Car Parts if the server returns a 404', () => {
    service.fetchEcommerceCarParts().subscribe({
      next: () => {
        fail('should have failed with the 404 error');
      },
      error: (error) => {
        expect(error).toEqual(new Error(ERROR_FINDING + OF_STORE));
      },
    });

    const req = httpMock.expectOne(FULL_URL + ALL_CAR_PARTS_ENDPOINT);
    req.flush('404 error: Not Found', {
      status: 404,
      statusText: 'Not Found',
    });
  });

  it('should use correct URL to fetch ECOMMERCE Car Parts', () => {
    service.fetchEcommerceCarParts().subscribe();
    const expectedURL = `http://localhost:1337/api/loja-pecas`;
    const req = httpMock.expectOne(
      (request) => request.url === FULL_URL + ALL_CAR_PARTS_ENDPOINT
    );
    expect(req.request.url).toBe(expectedURL);
    req.flush({ data: mockOptions });
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});

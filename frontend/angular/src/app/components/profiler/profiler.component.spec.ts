import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ProfilerComponent } from './profiler.component';

describe('UserProfilerComponent', () => {
  let component: ProfilerComponent;
  let fixture: ComponentFixture<ProfilerComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ProfilerComponent]
    });
    fixture = TestBed.createComponent(ProfilerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

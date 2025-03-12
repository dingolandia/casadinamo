import { Component } from '@angular/core';
import { BIRTH_TITLE, DOCUMENT_TITLE, EMAIL_TITLE, GENDER_TITLE, NAME_TITLE } from 'src/app/constants/constants';

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.scss']
})
export class UserProfileComponent {
  public nameTitle = NAME_TITLE;
  public emailTitle = EMAIL_TITLE;
  public genderTitle = GENDER_TITLE;
  public documentTitle = DOCUMENT_TITLE;
  public birthTitle = BIRTH_TITLE;

  nameValue = '';
  emailValue = '';
  genderValue = '';
  documentValue = '';
  birthValue = '';
}


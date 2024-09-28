import { Component, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatMenuTrigger } from '@angular/material/menu';
import { DialogBoxComponent } from '../../dialog-box/dialog-box.component';
import { ModalUserLoginComponent } from '../../modal/modal-user-login/modal-user-login.component';
import { UserAuthenticationService } from 'src/app/services/user-authentication.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-user-menu',
  templateUrl: './user-menu.component.html',
  styleUrls: ['./user-menu.component.scss'],
})
export class UserMenuComponent {
  @ViewChild('menuTrigger')
  menuTrigger!: MatMenuTrigger;
  public isLogged: boolean = false;

  constructor(
    private dialog: MatDialog,
    private userAuthenticationService: UserAuthenticationService,
    private router: Router
  ) {
    userAuthenticationService.isAuthenticated$.subscribe((arg) => {
      this.isLogged = arg;
    });
  }

  public logout() {
    this.userAuthenticationService.logout();
    this.router.navigateByUrl('home');
  }

  openDialogLogin() {
    this.dialog.open(ModalUserLoginComponent, {
      width: '500px',
      height: '380px',
      restoreFocus: false,
      disableClose: true,
    });
  }

  openDialogSignup() {
    const dialogRef = this.dialog.open(DialogBoxComponent, {
      restoreFocus: false,
    });
    dialogRef.afterClosed().subscribe(() => this.menuTrigger.focus());
  }
}

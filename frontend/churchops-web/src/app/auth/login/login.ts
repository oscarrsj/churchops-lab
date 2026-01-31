import { Component } from '@angular/core';
import { Auth } from '../../core/auth';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-login',
  imports: [CommonModule, FormsModule],
  templateUrl: './login.html',
  styleUrl: './login.css',
})
export class Login {
  email= '';
  password = '';
  error?: string;
  loading = false;

  constructor(private auth: Auth) { }

  async login() {
    this.loading = true;
    this.error = undefined;

    const { error } = await this.auth.signIn(this.email, this.password);

    if(error) {
      this.error = error.message;
    }

    this.loading = false;
  }
}

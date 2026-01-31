import { Injectable } from '@angular/core';
import { supabase } from './supabase.client';

@Injectable({
  providedIn: 'root',
})
export class Auth {
  async signIn(email: string, password: string) {
    return supabase.auth.signInWithPassword({
      email,
      password
    });
  }
}

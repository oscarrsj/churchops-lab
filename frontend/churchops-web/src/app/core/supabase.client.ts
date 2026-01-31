import { createClient } from '@supabase/supabase-js';
import { environment } from '../../environments/environment.local';

if (!environment.supabaseUrl || !environment.supabaseAnonKey) {
  throw new Error('Supabase environment variables are missing');
}

export const supabase = createClient(
  environment.supabaseUrl,
  environment.supabaseAnonKey
);

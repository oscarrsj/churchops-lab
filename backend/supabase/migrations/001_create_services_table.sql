-- Create services table
create table if not exists public.services (
    id uuid primary key default gen_random_uuid(),
    service_date date not null,
    service_time time not null,
    service_type text not null,
    notes text,
    created_at timestamp with time zone default now(),
    created_by uuid not null references auth.users(id)
);

-- Index for performance
create index if not exists idx_services_created_by
on public.services(created_by);

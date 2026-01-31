-- Enable Row Level Security
alter table public.services enable row level security;

-- Policy: users can read their own services
create policy "Users can read own services"
on public.services
for select
using (auth.uid() = created_by);

-- Policy: users can insert services
create policy "Users can insert services"
on public.services
for insert
with check (auth.uid() = created_by);

-- Policy: users can update their own services
create policy "Users can update own services"
on public.services
for update
using (auth.uid() = created_by);

-- Policy: users can delete their own services
create policy "Users can delete own services"
on public.services
for delete
using (auth.uid() = created_by);

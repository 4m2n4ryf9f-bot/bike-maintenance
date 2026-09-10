-- GARAGE WORKS v2.3
-- Supabase SQL Editorで、このファイルを丸ごと実行してください。
create table if not exists public.garage_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.garage_data enable row level security;

drop policy if exists "garage_data_select_own" on public.garage_data;
drop policy if exists "garage_data_insert_own" on public.garage_data;
drop policy if exists "garage_data_update_own" on public.garage_data;
drop policy if exists "garage_data_delete_own" on public.garage_data;

create policy "garage_data_select_own" on public.garage_data
  for select using (auth.uid() = user_id);
create policy "garage_data_insert_own" on public.garage_data
  for insert with check (auth.uid() = user_id);
create policy "garage_data_update_own" on public.garage_data
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "garage_data_delete_own" on public.garage_data
  for delete using (auth.uid() = user_id);

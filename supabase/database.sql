create table if not exists public.workspaces (owner uuid primary key references auth.users(id) on delete cascade, payload jsonb not null);
alter table public.workspaces enable row level security;
create policy "private workspace" on public.workspaces for all to authenticated using (owner = auth.uid()) with check (owner = auth.uid());
grant select, insert, update, delete on public.workspaces to authenticated;
revoke all on public.workspaces from anon;

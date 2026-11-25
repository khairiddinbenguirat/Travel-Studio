create table if not exists public.workspaces (owner uuid primary key references auth.users(id) on delete cascade, payload jsonb not null);
alter table public.workspaces add column if not exists revision bigint not null default 0;
alter table public.workspaces enable row level security;
drop policy if exists "private workspace" on public.workspaces;
create policy "private workspace" on public.workspaces for all to authenticated using (owner = auth.uid()) with check (owner = auth.uid());
grant select, insert, update, delete on public.workspaces to authenticated;
revoke all on public.workspaces from anon;

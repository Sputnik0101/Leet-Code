select distinct a.email from Person a where exists(
    select 1 from Person b where a.email=b.email and a.id <> b.id
)

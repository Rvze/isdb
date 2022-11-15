select count(*) != 0
from "Н_ЛЮДИ"
where "Н_ЛЮДИ"."ИД" IN (
    select "ЧЛВК_ИД"
    from "Н_УЧЕНИКИ"
    where "Н_УЧЕНИКИ"."ГРУППА" = '3102'
)
and "Н_ЛЮДИ"."ИНН" is null
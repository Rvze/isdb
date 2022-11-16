create index on "Н_ВЕДОМОСТИ" using hash ("ИД");
create index on "Н_ВЕДОМОСТИ" using btree ("ЧЛВК_ИД");
create index on "Н_ТИПЫ_ВЕДОМОСТЕЙ" using btree ("ИД");

explain analyze
select nv."ИД", "Н_ТИПЫ_ВЕДОМОСТЕЙ"
from "Н_ВЕДОМОСТИ" nv
         left join "Н_ТИПЫ_ВЕДОМОСТЕЙ" on nv."ТВ_ИД" = "Н_ТИПЫ_ВЕДОМОСТЕЙ"."ИД" and "Н_ТИПЫ_ВЕДОМОСТЕЙ"."ИД" =1
where nv."ЧЛВК_ИД" = 117219;






create index on "Н_ЛЮДИ" using btree ("ИД");
create index on "Н_ОБУЧЕНИЯ" using btree ("НЗК");
create index on "Н_УЧЕНИКИ" using btree ("ИД");

explain analyze
select *
from "Н_ЛЮДИ"
         right join "Н_ОБУЧЕНИЯ" no on "ИД" = no."ЧЛВК_ИД"
         right join "Н_УЧЕНИКИ" ny on "Н_ЛЮДИ"."ИД" = ny."ЧЛВК_ИД"
where "Н_ЛЮДИ"."ИД" > 163484
  and no."НЗК" = '111437'
  and ny."ИД" > 150308
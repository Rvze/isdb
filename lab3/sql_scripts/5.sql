select "ГРУППА", avg(age("ДАТА_РОЖДЕНИЯ"))
from "Н_ЛЮДИ"
         inner join "Н_УЧЕНИКИ" НУ on НУ."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"

group by "ГРУППА"
having avg(extract(year from "ДАТА_РОЖДЕНИЯ")) > (select min(extract(year from "ДАТА_РОЖДЕНИЯ"))
                                                  from "Н_ЛЮДИ"
                                                  where "Н_ЛЮДИ"."ИД" in (
                                                      select "ЧЛВК_ИД"
                                                      from "Н_УЧЕНИКИ"
                                                      where "Н_УЧЕНИКИ"."ГРУППА" = '1100'
                                                  ))



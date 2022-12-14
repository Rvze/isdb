select distinct "Н_ЛЮДИ"."ИМЯ",
                "Н_ЛЮДИ"."ФАМИЛИЯ",
                "Н_ЛЮДИ"."ОТЧЕСТВО",
                "Н_ВЕДОМОСТИ"."ЧЛВК_ИД",
                "Н_СЕССИЯ"."ЧЛВК_ИД"
from "Н_ЛЮДИ"
         inner join "Н_ВЕДОМОСТИ"
                    on "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"
         inner join "Н_СЕССИЯ"
                    on "Н_СЕССИЯ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"
where "Н_ЛЮДИ"."ОТЧЕСТВО" > 'Александрович'
  and "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" < 117958
select lt."ИД", lt."ТВ_ИД"
from "Н_ВЕДОМОСТИ" lt
         inner join "Н_ТИПЫ_ВЕДОМОСТЕЙ" rt on rt."ИД" < 102 and
                                              lt."ЧЛВК_ИД" = 142390 and
                                              lt."ЧЛВК_ИД" = 105590


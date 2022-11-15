select "ПРИЗНАК"
from "Н_УЧЕНИКИ"
where exists(
              select "Н_УЧЕНИКИ"
              from "Н_УЧЕНИКИ"
              where "Н_УЧЕНИКИ"."ПРИЗНАК" = 'отчисл'
                and extract(year from "Н_УЧЕНИКИ"."КОНЕЦ") >= 2012
          )

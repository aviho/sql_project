
# get id,  FIRST_NAME,  LAST_NAME,  reason#
select t1.*,ASASON.COSTUMERSERVICE.reason from (select c.id, c.FIRST_NAME, c.LAST_NAME
from gruenspe.costumers c, ASASON.BLACKLIST bl
 where c.id = bl.costumerid ) t1
 LEFT JOIN  ASASON.COSTUMERSERVICE on COSTUMERSERVICE.costumerid = t1.id
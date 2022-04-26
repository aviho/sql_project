
select c.id, c.FIRST_NAME, c.LAST_NAME, bl.reason
from COSTUMERS c, ASASON.BLACKLIST bl
where c.id = bl.costumerid

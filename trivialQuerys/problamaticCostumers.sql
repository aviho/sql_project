select 'Not enough expirience' AS reason, c.id as COSTUMERID
from COSTUMERS c
where c.years_expirience < 5

union

select 'Not enough money deposited' AS REASON, c.id as COSTUMERID
from COSTUMERS c
where c.security_deposit < '100'

union

select 'To old' AS REASON, c.id as COSTUMERID
from COSTUMERS c
where c.birthday < to_date('20/12/1960', 'DD/MM/YYYY')

union

select * from ASASON.BLACKLIST


# get id,  FIRST_NAME,  LAST_NAME,  reason#
select t1.*,ASASON.COSTUMERSERVICE.reason from (select c.id, c.FIRST_NAME, c.LAST_NAME
from gruenspe.costumers c, ASASON.BLACKLIST bl
 where c.id = bl.costumerid ) t1
 LEFT JOIN  ASASON.COSTUMERSERVICE on COSTUMERSERVICE.costumerid = t1.id

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



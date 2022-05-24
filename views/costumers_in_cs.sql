create view costumers_in_cs as
select *
from costumers c
where c.id in
      (select costumerid
       from asason.costumerservice)

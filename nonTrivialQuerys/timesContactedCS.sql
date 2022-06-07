select c.id, count(*) as times_contacted_cs
from costumers c, asason.costumerservice costs
where c.id = costs.costumerid
group by (c.id)

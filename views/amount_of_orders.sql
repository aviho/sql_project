create view amount_of_orders as
select o.costumer_id, count(o.costumer_id) as times_ordered 
from elafishe.orders o
group by o.costumer_id

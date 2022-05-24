create view payment_per_order as
select c.id, (c.security_deposit + o.payments*p.price) as total_payment_for_order
from costumers c, elafishe.orders o, elafishe.pricing p
where c.id = o.costumer_id and p.pricing_id = o.pricing_id

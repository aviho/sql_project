select unique c.id, c.license_id, c.years_expirience
from costumers c, elafishe.orders o, elafishe.pricing p
where c.id = o.costumer_id and p.name = 'new_driver' and o.pricing_id = p.pricing_id

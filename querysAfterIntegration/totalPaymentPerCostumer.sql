select ppo.id, sum(ppo.total_payment) as total_payment
from payment_per_order ppo
group by ppo.id

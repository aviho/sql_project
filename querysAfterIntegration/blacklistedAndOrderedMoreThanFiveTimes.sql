select bl.costumerid, bl.reason, aoo.times_ordered
from asason.blacklist bl, amount_of_orders aoo
where bl.costumerid = aoo.costumer_id and aoo.times_ordered > '5'

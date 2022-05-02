select  *
from gruenspe.costumers WHERE id NOT IN  ( SELECT costumerid FROM ASASON.BLACKLIST)
 

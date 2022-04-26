Select costs.WORKERID, costs.COMPLAINTID, costs.REASON
from ASASON.COSTUMERSERVICE costs
where costs.datecomplaint < to_date('01/01/1980', 'DD/MM/YYYY') AND costs.dealtwith ='NO'

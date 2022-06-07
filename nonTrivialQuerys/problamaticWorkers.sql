SELECT c.id, c.first_name, c.last_name, costs.workerid, costs.datecomplaint
FROM ASASON.COSTUMERSERVICE costs, COSTUMERS c
Where c.id = costs.costumerid and costs.dealtwith = 'NO' and costs.reason = 'Complaint about a worker'

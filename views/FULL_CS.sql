CREATE OR REPLACE VIEW FULL_CS AS
SELECT costumerid, first_name, last_name, gender, citizenship, birthday, email, phone_number, complaintid, datecomplaint, reason
from costumers c JOIN asason.costumerservice costs on (costs.costumerid = c.id);

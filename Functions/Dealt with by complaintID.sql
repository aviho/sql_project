CREATE OR REPLACE FUNCTION is_dealt_with(comp_id IN number)
RETURN char
IS res char(3);
BEGIN
select costs.dealtwith into res from asason.costumerservice costs where costs.complaintid = comp_id;
RETURN res;
END;

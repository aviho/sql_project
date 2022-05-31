CREATE OR REPLACE FUNCTION why_blacklisted(cost_id IN number)
RETURN char
IS res char(50);
BEGIN
SELECT bl.reason into res from asason.blacklist bl where bl.costumerid = cost_id; 
RETURN res; 
END;

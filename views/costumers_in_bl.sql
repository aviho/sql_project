create view costumers_in_bl as
select t1.*,ASASON.COSTUMERSERVICE.reason from (select c.id,
                                                       c.first_name,
                                                       c.last_name,
                                                       c.license_id,
                                                       c.gender,
                                                       c.citizenship,
                                                       c.birthday,
                                                       c.phone_number,
                                                       c.years_expirience,
                                                       c.security_deposit,
                                                       c.email,
                                                       c.license_expiration
from gruenspe.costumers c, ASASON.BLACKLIST bl
 where c.id = bl.costumerid ) t1
 LEFT JOIN  ASASON.COSTUMERSERVICE on COSTUMERSERVICE.costumerid = t1.id

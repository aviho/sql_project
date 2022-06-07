create or replace view costumers_in_bl as
select t1."ID",t1."FIRST_NAME",t1."LAST_NAME",t1."LICENSE_ID",t1."GENDER",t1."CITIZENSHIP",t1."BIRTHDAY",t1."PHONE_NUMBER",t1."YEARS_EXPIRIENCE",t1."SECURITY_DEPOSIT",t1."EMAIL",t1."LICENSE_EXPIRATION",ASASON.BLACKLIST.reason from (select c.id,
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
 LEFT JOIN  ASASON.BLACKLIST on ASASON.BLACKLIST.COSTUMERID = t1.id;

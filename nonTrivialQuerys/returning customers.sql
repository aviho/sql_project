select * from COSTUMERS where 
 id in ( SELECT COSTUMERID FROM ASASON.COSTUMERSERVICE
    GROUP BY COSTUMERID  
    HAVING COUNT(*)>1 )
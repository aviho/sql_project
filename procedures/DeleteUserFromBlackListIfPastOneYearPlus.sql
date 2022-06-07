create or replace procedure DeleteUserFromBlackListIfPastOneYearPlus(Userid in Int ) is begin
delete from asason.blacklist WHERE CostumerID=Userid and NOT EXISTS  (SELECT *
    FROM CostumerService
    WHERE COSTUMER_ID=Userid and date  < DATE_SUB(NOW(),INTERVAL 1 YEAR));
END;
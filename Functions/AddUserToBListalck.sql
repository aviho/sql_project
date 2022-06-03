create or replace procedure AddUserToBListalck(Userid in Int ,reason in char) is begin
insert into asason.blacklist  (CostumerID, Reason) VALUES  (Userid,reason);
END;

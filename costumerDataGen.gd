
[General]
Version=1

[Preferences]
Username=
Password=2642
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=GRUENSPE
Name=COSTUMER
Count=2500

[Record]
Name=LISCENCEEXP
Type=DATE
Size=
Data=Random('1.1.2022', '31.12.2060')
Master=

[Record]
Name=GENDER
Type=CHAR
Size=6
Data=List('MALE', 'FEMALE')
Master=

[Record]
Name=DRIVINGEXPIRIENCE
Type=NUMBER
Size=
Data=Random(2, 50)
Master=

[Record]
Name=BIRTHDAY
Type=DATE
Size=
Data=Random('1.1.1960', '31.12.2005')
Master=

[Record]
Name=NAME
Type=CHAR
Size=20
Data=FirstName + ' ' + LastName
Master=

[Record]
Name=ID
Type=NUMBER
Size=
Data=Random(1, 99999999)
Master=


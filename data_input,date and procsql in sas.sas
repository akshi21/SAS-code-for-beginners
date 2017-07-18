data money;
input money $ ;
datalines;
"50000"
50,000
$50000
50000
50000.00
;
run;

proc print data=money;
run;

proc print data=money (obs=4);
run;

data money;
set  money;
money=translate(money,'','"');
money=translate(money,'',',');
money=translate(money,'','$');
Run;

data ajay;
format dob date9. b date9.;
dob=input("7jun1977",date9.);
b=today();
c=dob-b;
run;
data ajay2;
a="1234567";
run;
proc contents data=ajay2;
run;
data ajay21;
set ajay2;
a2=1*a;
run;

proc contents data=ajay21;
Run;

data cars;
set sashelp.cars;
run;
proc print data=cars (obs=5);
run;
proc sql;
select distinct(origin)
from cars;
run;
proc sql;
select count(origin),origin
from cars
group by origin;
run;
proc sql;
select count(type),type
from cars
group by type;
run;
proc sql;
select count(type),type,origin
from cars
group by type ,origin;
Run;

proc sql;
select avg(mpg_city),origin
from cars
group by origin;
Run;

proc sql;
select max(mpg_city),origin
from cars
group by origin;
run;

proc sql;
select min(mpg_city),origin
from cars
group by origin;
run;

proc sql;
create table test1
as  select avg(mpg_city),origin from cars
group by origin;
run;


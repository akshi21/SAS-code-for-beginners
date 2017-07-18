data second;     	
input m n;
datalines;
6 2.13
5 5.6
4 6.6
4 4.5
6 7.8
;
run;
data ajaydata;
input ajay;
datalines ;
10
20
30
40
;
run;
data third;
input m n o$;
datalines;
6 2.13 apple
5 5.6 banana
4 6.6 orange
4 4.5 pineapple
6 7.8 raspberry
;
run;
/* In SAS the data entered is not in form of vectors as in R. */
data ajaydata2;
input age names $;
cards;
50 ajay
60 vijay
60 john
80 ram
;
run;
/* To make string enter we use to give a $ sign after the column name. */
data temp;
infile DATALINES dsd missover;
input a b c d;
CARDS;
1, 2, 3, 4
, 3, , 5
, 3
;
run;
/* The MISSOVER option prevents the DATA step from going to the next line */
/* if it does not find values in the current record for all of  the variables in the INPUT statement. */
data temp2; 
infile DATALINES dsd ;
input a b c d;
CARDS;
1, 2, 3, 4
, 3, , 5
, 3
;
run;

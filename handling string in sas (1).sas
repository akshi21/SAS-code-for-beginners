

data string;
   LENGTH string1 $ 6 String2 $ 5;
   /*String variables of length 6 and 5 */
   String1 = 'hi';
   String2 = 'user';
   combined_string =  String1||String2 ;
 run;
 


proc print data = string ;
run;

/* using substring in SAS */
data substring;
   LENGTH string1 $ 6 ;
   String1 = 'Hello';
   string1 = substrn(String1,2,4) ; /*Extract from position 2 to 4 */
   string2 = substrn(String1,3) ;/*Extract from position 3 onwards */
   run;
proc print data = substring ;
run;

/* using trimn function in SAS */
data string;
   LENGTH string1 $ 7  ;
   str1='Hello  ';
   length1 = lengthc(String1);
   length_trim2 = lengthc(TRIMN(str1));
run;


DATA names;
INPUT name $30.;
DATALINES; /* here we have used to seperate the first name, middlename ,last name */
a b c
akshay pal roy
lora Marie     
;
Run;

/* concatenation of string in sas */
DATA abc;
INPUT abc1 $char3. abc2 $char3. ;
DATALINES;
ab cd
;
DATA result;
SET abc;
concate=abc1||abc2;
run;





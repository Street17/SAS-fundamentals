/*IMPORTING DATASET*/
proc import
/*Specifying the location of data*/
datafile = "/folders/myshortcuts/My_folders/Myfolder/SAS data CBAPR/SAS Fundamentals/malad.xls"
/* File format is xls and store incoming data in first2*/
dbms = xls out=first2;
/*Fetch data from sheet malad*/
sheet = "malad";
/* Pull variable names from the first line of the file */getnames = yes;
run;




/*UNDERSTANDING DATASET*/
/*To find the information about the data set*/
proc contents data = first2;
run;
/*To maintain the order as per data set in contents we can use varnum function*/
proc contents data = first2 varnum;
run;
/*To get results in output window instead of result window*/
proc contents data = first2 out=ctout;
run;




/*PRINTING DATASET*/
/*To print entire data set*/
proc print data = first2;
run; 
/*To print first five observations*/
proc print data = first2 (obs=5);
run;
/*To print with column of observations serial number*/
proc print data = first2 (obs=5) noobs;
run;
/*To print with name = R for observation column*/
proc print data = first2 (obs=5) obs = "R";
run;
/*To display only some varaibles with print statement. Note- we pass format statement with proc print only*/
proc print data=first2 (obs=5) noobs;
varnum week strategy shampoo;
run;




/*MODIFYING DATASET*/
/*To clone the dataset*/
data first2_copy;
set first2;
run;
/*Subsetting dataset as per observations*/
data first2_filtered;
set first2(firstobs=3 obs=12);
run;
/*Subsetting dataset as per variables*/
data first2_keep;
set first2 (keep = week strategy shampoo firstobs=3 obs=12);
run; 
/*Renaming variables*/
data first2_rename;
set first2_keep (rename=(week = Time strategy = Technique));
run;
/*Conditional subsetting*/
data first2_where;
set first2 (rename=(week = Time shampoo = conditioner) firstobs=3 obs=12);
where conditioner>100000;
run;
/*Using multiple condtion*/
data first2_wmult;
set first2 (rename=(shampoo = conditioner) firstobs=3 obs=12);
where conditioner>100000 and strategy="Free Products";
run;
/*Using or statement to combine*/
data first2_comb;
set first2 (rename=(shampoo = conditioner) firstobs=3 obs=12);
where (conditioner>100000 or strategy="Free Products");
run;
/*Adding variable to the data set*/
data first2_comb;
set first2(keep = week strategy shampoo firstobs=3 obs=12);
new = week+shampoo;
run;
/*Adding conditional variable to the data set using if-else*/
data first2_cond;
set first2;
length additional $8;
if strategy = "Free Products" and shampoo > 100000 then additional = "yes";
else if strategy = "Free Products" and shampoo > 0 then additional = "not sure";
else additional = "no";
run;
/*Nested condition using if-then-do*/
data first2_nested;
set first2;
length new1 $8;
if strategy = "discounts" then do;
if shampoo > 100000 then new1 = 1;
else new1 = 0;
end;
else do;
if shampoo > 100000 then new1 = 2;
else new1 = 3;
end;
run;
/*Sorting the data set*/
proc sort data = first2 out = first2_sorted;
by descending shampoo;
run;
/*Multiple sorting first data will be divided in group as per shampoo and then Cooking_Oil*/
proc sort data=first2 out=first2_sorted;
by shampoo descending Cooking_Oil;
run;





/*Creating dataset*/
data R;
infile datalines;
input key1 $ r_m r_h;
datalines;
r1 10 90
r2 50 50
r3 20 80
;
run;
/*Creating another data set*/
data K;
infile datalines;
input key1 $ r_p $ r_a $;
datalines;
r2 love love
r5 breakup love
;
run;
/*Combining datasets as per columns*/
data fine;
set R K;
run;
/*Combining the same datasets as per rows*/
data truth;
set R;
set K;
run;
/*Merging the datasets it is actually combining the datasets based on key*/
/*Make sure before we merge two datasets by keys, datasets being merged need to be in sorted state by the said key*/
/*Sorting first dataset*/
proc sort data = R;
by key1;
run;
/*Sorting second dataset*/
proc sort data = K;
by key1;
run;
/*Combing the two data sets above as per key*/
data merged;
merge R K;
by key1;
run;
/*Merging as per non common keys in the datasets R and K*/
data merged2;
merge R(in=x) K(in=y);
/*Here x and y are temporary indicator created for all the keys present in the program. They takes value 1 and 0*/
by key1;
/*If x=1 and y=1 then only those keys which are common to both the data sets will be published*/
if x=1 and y=1;
run;




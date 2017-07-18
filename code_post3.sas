proc import
/*Specifying the location of data*/
datafile = "/folders/myshortcuts/My_folders/Myfolder/SAS data CBAPR/SAS Fundamentals/malad.xls"
/* File format is xls and store incoming data in first2*/
dbms = xls out=first2;
/*Fetch data from sheet malad*/
sheet = "malad";
/* Pull variable names from the first line of the file */getnames = yes;
run;



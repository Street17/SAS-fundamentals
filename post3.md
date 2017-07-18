Hi guys!
This is my third post in SAS fundamentals series and the aim of this post is to make you familiar with the concept of importing - standard format files in excel. 
Let us start with an example of importing a sheet from an excel file. 
I have mentioned in my first post that SAS has two types of programs 
data and procedure (where procedures are pre written codes to make it easier for us to perform daily tasks). 
Let us see how we can use proc import, a procedure to import standard file format.
For the codes here please check attached file with this post

Note - all procedures program start with "proc" then procedure name follows followed with relevant options and companion statements which are different for every procedure. In the above written codes "datafile" is the complete file path from which we are trying to import the data, dbms tells SAS the format of the incoming file. Out option is used to mention the SAS data set which will contain the incoming data from the file. Sheet statement will tell which excel file sheet to fetch the data. Getnames is used to tell SAS to pull variable names from the first line of the file. 
We can also import csv file using the same codes in that case dbms = csv
Remember that all proc codes are previously written and we don't have much control over them. Like passing our own column names while using proc import, assigning lengths to variables and so on.




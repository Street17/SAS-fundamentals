Hi friends, 
This is the last post in SAS fundamentals series. In my earlier posts I have mentioned how we can import data into SAS now we will learn how to look at the data in SAS after importing. 

As soon as we get any data our first aim should be to understand variables and observations which are important for our business. We can use proc content to read information about the dataset in the "Results" window (see code_post4 for details under proc content). 

To print data on our result window we can use proc print command (see code_post4 for details under proc print). 

After looking at data we will do our best to modify the data as per need (to understand how to subset the data set, see code_post4 under modifying data set). 
In SAS we can subset data based on condition, to subset a statement based on condition we can use if statement or where statement. We use "where statement" while working with incoming data and "if statement" while working with outgoing data however, the end result of both is same :) (I use where statement in codes. Check code_post4 under modifying data set.)

We can also create new variables to add to the dataset we have. We can do this by putting the variables names and value they are going to take in the data set program. These entries are made after data and set statements. We can also create new variables based on condition using if-else (Check code_post4 under modifying data set). 

We can also have nested conditions where next condition is checked only if the condition at top is true. We use if-then-do for nested conditions example of this is shown in code_post4 under modifying dataset. 

Sometimes we need sort our data set as per our need in ascending or descending order. In SAS sorted dataset is out putted with the name mentioned in "out" option and default sorting option is ascending.  We use proc sort program for this (for detail information check code_post4 under modifying data set). If we omit out option original dataset will get sorted.

We can also create datasets in SAS for practice and combine them (Please check code_post4 under creating dataset). 

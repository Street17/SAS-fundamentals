Hi folks, 
So today I will be talking about importing data in SAS. I will be using First_import text file for this post, the link to download this file is attached.
So lets get started :)
If you look closely to the First_post data file you will find there are multiple delimiters and missing values in this file and we actually want the result to look in best structured format for our work. 
Let us call the data set, “R”. Please see the required codes with the file attached with this post.

Note 

1.	I have not passed a library reference therefore my data will not get created in the mentioned library but in the working library by default.

2.	I have put $ sign in front of variable whose values are of character type.

3.	I have used firstobs=2 to tell SAS to read observation from second row.

4.	I have delimiter "|" in third row of my data set but SAS by default assumes entire row as just one value and goes over to next row, to stop it from doing this, I have used "missover" in infile statement.

5.	I have few values with quotes around in my data set to get rid of this I have added dsd (delimiter sensitive data) in my infile statement

6.	I have use dlm=",|" to tell SAS that I have multiple delimiters in my file

7.	I have use informat and format statement to tell SAS to store and represent date in mmddyy10 format.

8.	Label is use to add label name to column instead of column name

So, folks! 
This is how we import flat data file in SAS, by flat data file, I mean csv, txt type file. I will write a new post to let you know how to import standard format file like xls 

I want you to get familiar with few more things so keep reading on 

Advantages of dsd (delimiter sensitive data)

1) It strips " " from the data values

2) It tells SAS to treat continuous occurrence of delimiters as missing values

3) It by default assumes delimiter is "," if it is not we shall use dlm

4) It also guide SAS to ignore any delimiter which appears inside " " 

How SAS store values?

SAS stores dates as numbers. SAS attains this by storing them as change in number of days from 1 January 1960. Therefore, to store the data in right way, we would like SAS to show them in proper data format. We use format statement for this as I have shown above.

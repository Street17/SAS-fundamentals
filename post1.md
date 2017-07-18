Hi folks,

This is my first post about SAS, I have started this series for anyone who is willing to learn SAS from scratch. 
The aim of this post is to make you familiar with basics of SAS Programming Language.

Even though doing analysis on SAS cost a lot in contrast to open source languages like R, Python etc. SAS still has many advantages over them such as data security, technical support, data control etc because of which banking and some other industries still uses SAS.
At present, SAS is majorly used in enterprises as many important functions for analysis are paid however, we can still learn a lot in SAS using SAS University Edition. 
So, let us start learning with some basic fundamentals 
1.	Syntax of the language is independent of case. In other words, SAS is not case sensitive for example DATA or Data or data are same things.
2.	All statements in SAS close using ";"
3.	Every statement has a "name" in SAS programming language and they do the task they are assigned to do. We can learn SAS easily if we understand what each statement is meant for and how it functions.
4.	We can add comment in a SAS program using /* ... */
SAS has two types of programs 
1.	Data step programs - These are basic forms of programs. 
2.	Proc step programs - These are pre defined programs to make our life simpler while performing routine tasks.
We can create library in SAS using libname function for example 
libname Harsh "library path"; 
Note – only SAS format datasets will be shown up under the library you just created therefore, if there is some file you want to analysis on and it is not in SAS dataset format then you first need to convert it in SAS format.
In SAS multiple libraries can point to same address or one library can point of different locations. 

SAS has 4 windows code, log, result, and output. We write code in code window and if code is correct output window gives us output but, if code is wrong then log window show us error.
Note - SAS does not support a library name of more than 8 characters.
In a SAS dataset we define rows as observation and columns as variables here variables has many properties such as name, label (It shows name of the variable which will not be used in coding but only used for display and doesn't need to follow any naming restrictions), type (numeric or character), Length, Informat (it is used to tell SAS how to interpret incoming data), Format (This tells SAS how to display the data that is stored).
In SAS we have following naming restrictions for both Datasets and Variables
1) Should not exceed 32 characters.
2) Should not start with a number however, number can be part of the name.
3) Should not contain any special character except underscore ("_").
Remember –I will make a next post on importing text file in SAS there we will be using whatever we have learn here  


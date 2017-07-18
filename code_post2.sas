/* filename is used to address the file */
filename import "/folders/myshortcuts/My_folders/Learning/First_import.txt";
 /*Name of the data*/
data R;
/* Infile statement is used to tell SAS about data */
/* first obs =2 becase first obseravation line contains name of the variables */
infile import dlm=",|" missover firstobs =2 dsd;
/* dlm telling SAS about delimiters, dsd getting rid of quotes, missover to know there are missing vales*/
retain numVar charVar dateVar deciVar;
length charVar $15;
input numVar charVar $ dateVar deciVar;
label numVar="Numeric_variable";
informat dateVar mmddyy10.;
format dateVar mmddyy10.;
run;

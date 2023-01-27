# sparkADA

Question 1
In this question we consider time as given by hours, minutes and seconds, where seconds and
minutes are numbers in the range 0 ...59. The goal is to add two times together by working
directly on the hours, minutes and seconds:
You first add the seconds together. If the result is <60 the number of seconds in the result
is this sum and the carry is 0, otherwise the resulting number of seconds is this sum minus
60 and the carry is 1.
Next you add the minutes together and add the carry you obtained before. If the sum is
<60, then the minutes of the result is this value, and you have a new carry of 0. Otherwise,
the minutes of the result is this value minus 60, and you have a new carry of 1.
The hours of the result is the sum of the input hours plus the carry obtained in the 2nd step.
The result should be obtained by working directly with the individual seconds, minutes and hours
rather than the overall number of seconds. The verification conditions can however refer to the
overall number of seconds which is if hours, minutes, seconds are the 3 values hours ∗3600 +
minutes ∗60 + seconds.
(a) Define a procedure which adds two times together using the algorithm stated above. The
input times and output time should be given by 3 variables each for hours, minutes and
seconds.
[4 marks]
(b) Add a main procedure which asks the user for the 3 numbers of the two input executes the
procedure from (a), and displays the result obtained by applying the procedure. The main
procedure should run in a loop, which at the end asks whether the user wants to continue
with another example or wants to terminate. It should only accept user inputs which are
valid number i.e. the seconds and minutes should be in the range from 0 to 59.
If you follow the example in the example collections
criticalhighintegritysystems/sparkAdaCodeLecture/misc/
conversion24hrClock12hrAMPMClock/withIO/vers02OnlyAdaWithIOIntegersNoLibrary/
your program will raise an exception, if the user instead of an integer inputs something else.
You can ignore this problem at this stage. When using SPARK Ada later, we will use a
library, which takes care of this problem. [7 marks]
(c) Adapt the solution from (b) so that minutes and seconds are given as an element of a type
of the range from 0 to 59.
[5 marks]
(d) Adapt the solution from (c) so that numbers are given as elements of a record type consisting
of three fields for hours, minutes and seconds. [5 marks]
(e) Adapt the solution from (d) by adding a function, which has the same functionality as the
procedure, but which takes as inputs the input given as a record of three digits and returns
the result as a record of three digits. The main procedure should allow to execute the function
and the procedure. [6 marks]
(f) Add to your solution from (e) a depends clauses to the procedure, and replace (if you haven’t
done so yet) the use of Ada.Text Io and Ada.Integer Text IO by using the aslibrary available
in the lecture example in asLibraryIO (the files were included as well in most of the examples
in
sparkAdaCodeLecture/misc/conversion24hrClock12hrAMPMClock/withIO/
Make sure that your code passes the data flow and information flow analysis of SPARK Ada.
[8 marks]
(g) Add verification conditions to the procedure and function of (e) expressing the correctness.
The verification conditions should express that if one converts the input and the output into
number of seconds the number of seconds of the output is the sum of the numbers of seconds
of the inputs. Show that your program passes the verification conditions of SPARK Ada,
including any range conditions. In order to fulfil the range conditions you need to restrict
the hours of the input to a reasonable range (and you need to demand that the user inputs
are in that range). [10 marks]
(h) In addition 5 marks are reserved for signing off the last subquestion you have submitted in
the lab (minimum 1). If you submit more questions then you signed off you will get partial
marks for the proportion of questions you signed off. [5 marks]
Question 2
Preliminary remarks Originally a version of the following question was published which was
identical to an example in the git repository. Therefore the following rules apply:
If you have started working on example 2 before the annoucement about the problem was
made in the lecture on 2 November 2022 (9:00 - 10:00), you can finish working on it as long
as you don’t look at the current loop example, or look only at the loop example once it has
been modified (you will be informed once this has been updated). When you submit it you
need to add in the comment box a statement:
– “I declare that I have answered question 2 without referring to the loop example in the
git repository and started working on it before the announcement regarding the problem
with question 2 was made in the lecture on 2 Nov 2022”
or
– “I declare that I have answered question 2 by only referring to the revised loop example
in the git repository, and started working on this question before the announcement
regarding the problem with question 2 was made in the lecture on 2 Nov 2022”
Otherwise you should answer the revised version of the question 2 as specified below.
Consider the following fragment of code:
Aux := 0;
Z := X
loop
exit when Aux = Y;
Aux := Aux + 1;
Z := Z + 1;
end loop;
This code has as input X and Y with the assumption (which will become part of the precondition)
X,Y ≥0. At the end Aux = Y and Z= X + Y. Of course you can calculate the sum in a single
statement, but small piece of code is well suitable to explore basic features of SPARK Ada.
(a) Define a procedure which has X and Y as inputs and computes Z using the code above
[12 marks]
(b) Add as in Question 1 (b) a main procedure asking for the inputs X, Y and returning the
output Z and asks whether the user wants to continue or not. [9 marks]
(c) Add to your solution from (b) depends clauses, and replace as in 1 (f) the use of Ada.Text Io
and Ada.Integer Text IO by using the aslibrary (if you haven’t yet done so). Make sure that
your code passes the data flow and information flow analysis of SPARK Ada. [6 marks]
(d) Add meaningful verification conditions to your solution in (c) including a loop invariant, and
prove in SPARK Ada that your program fulfils these conditions. The verification conditions
should express that the value of Z at the end of the procedure is X + Y [9 marks]
(e) Adapt your solution in (d) so that the range conditions are as well fulfilled. If good verification
conditions were chosen in (d), no modification of your program and verification conditions
may be needed. [9 marks]
(f) In addition 5 marks are reserved for signing off the last subquestion you submitted in the lab
(minimum 1). If you submit more questions then you signed off you will get partial marks
for the proportion of questions you signed off.

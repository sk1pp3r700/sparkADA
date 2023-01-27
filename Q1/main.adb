pragma SPARK_Mode (On);

--OG_SKIPP3R--

with AS_IO_Wrapper;  use AS_IO_Wrapper; 
with timer; use timer; 

procedure Main is
   
   --hr1,min1,sec1,hr2,min2,sec2,hr,min,sec : Integer;
   --min, sec : String(0 .. 59);
   
   --hr1,hr2 : Integer;
   --min1 : minutes;
   --min2 : minutes;
   --sec1 : seconds;
   --sec2 : seconds;
   --sec : HMS;
   --min : HMS;
   --hr : HMS;
   
   
TA, TB, TR : HMS;
User_Input_Int : Integer;
User_Input : String(1 .. 20);
Last : Integer;
   
   
--begin
   -- Do a loop to get something in range
   --AS_Get(User_Input);
   
   -- After you have a valid input, set the relevant variable in the 
   --A.Minutes := User_Input;
   --loop
      --loop
	 --AS_Put("Enter a number in second from 0 .. 59: ");   
    --AS_Get(sec1);
    --exit when sec1 in 0 .. 59;
    --AS_Put_Line("Please Enter a number between 0 and 59");
      --end loop;
      --New_Line;
      --looploop
         --As_Put("Do you want to try again (y/n)? ");
         --As_Get_Line(User_Input, Last);
         --exit when Last > 0;
         --As_Put_Line("Please enter a non-empty string");
      --end loop;
      --exit when User_Input(1 .. 1) = "n";
    --As_Put("Enter the second number in second from 0 .. 59: ");   
	 --AS_Get(sec2);    
	 --exit when sec2 in 0 .. 59;
	 --Put_Line("Please Enter a number between 0 and 60");
      --end loop;     
      --New_Line;  
      --loop
	 --AS_Put("Enter a number in minute from 0 .. 59: ");   
    --AS_Get(min1);
    --exit when min1 in 0 .. 59;
      --end loop;
    --New_Line;
      --loop
    --AS_Put("Enter the second number in minute from 0 .. 59: ");   
	 --AS_Get(min2);    
	 --exit when min2 in 0 .. 59;
	 --Put_Line("Please Enter a number between 0 and 60");
      --end loop;  
      --New_Line;
      --loop
	 --AS_Put("Enter a number in hour from 0 .. 59: ");   
    --AS_Get(hr1);
    --exit when hr1 in 0 .. 59;
      --end loop;
      --New_Line;
      --loop
    --AS_Put("Enter the second number in hour from 0 .. 59: ");   
	 --AS_Get(hr2);    
	 --exit when hr2 in 0 .. 59;
	 --Put_Line("Please Enter a number between 0 and 60");
      --end loop;
      --To60Proc(hr1, min1, sec1, hr2, min2, sec2, hr, min, sec);
      --AS_Put("The result of the procedure is "); 
      --AS_Put(sec);
      --AS_Put(min);
      --AS_Put(hr);  
      --Put(To59(min, sec, hr));
      --Put("The result of the function is "); 
      --Put(sec);
      --Put(min);
      --Put(hr);
  --end loop;    
   
   
begin
   
   -- First initialise standard_input and standard output
   
AS_Init_Standard_Output;
AS_Init_Standard_Input;   
   loop
      loop
         AS_Put("Enter a number in hour from 0 .. 59: ");   
         AS_Get(User_Input_Int,"Please type in an integer; please try again");
         exit when User_Input_Int in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      TA.Seconds := User_Input_Int;
      loop
         AS_Put("Enter a number in hour from 0 .. 59: ");   
         AS_Get(User_Input_Int,"Please type in an integer; please try again");
         exit when User_Input_Int in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      TB.Seconds := User_Input_Int;
      loop
         AS_Put("Enter a number in hour from 0 .. 59: ");   
         AS_Get(User_Input_Int,"Please type in an integer; please try again");
         exit when User_Input_Int in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      TA.Minutes := User_Input_Int;
      loop
         AS_Put("Enter a number in hour from 0 .. 59: ");   
         AS_Get(User_Input_Int,"Please type in an integer; please try again");
         exit when User_Input_Int in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      TB.Minutes := User_Input_Int;
      loop
         AS_Put("Enter a number in hour from 0 .. 59: ");   
         AS_Get(User_Input_Int,"Please type in an integer; please try again");
         exit when User_Input_Int in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      TA.Hours := User_Input_Int;
      loop
         AS_Put("Enter a number in hour from 0 .. 59: ");   
         AS_Get(User_Input_Int,"Please type in an integer; please try again");
         exit when User_Input_Int in 0 .. 59;
         AS_Put_Line("Please Enter a number between 0 and 59");
      end loop;
      TB.Hours := User_Input_Int;
     
      TR:= To59(TA, TB);
      AS_Put("The result of the function  is ");
      AS_Put_Line(TR.Seconds);
      AS_Put_Line(TR.Minutes);
      AS_Put_Line(TR.Hours);
      
      To60Proc(TA, TB, TR);
      AS_Put("The result of the procedure is "); 
      AS_Put_Line(TR.Seconds); 
      AS_Put_Line(TR.Minutes); 
      AS_Put_Line(TR.Hours); 
      loop
         As_Put("Do you want to try again (y/n)? ");
         As_Get_Line(User_Input, Last);
         exit when Last > 0;
         As_Put_Line("Please enter a non-empty string");
      end loop;
      exit when User_Input(1 .. 1) = "n";
   end loop;        

--OG_SKIPP3R--   
   
end Main;

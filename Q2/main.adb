pragma SPARK_Mode;

--OG_SKIPP3R--

with AS_IO_Wrapper;  use AS_IO_Wrapper; 
with looper; use  looper;

procedure Main is
   
   X, Y, Z : Integer;
  User_Input : String(1 .. 20);
   Last : Integer;
   
begin
   
   -- Initialise standard_input and standard output
   
   AS_Init_Standard_Output;
   AS_Init_Standard_Input;   
   
  loop   
      -- display "Type in a number"
      
      AS_Put("Type in a number: ");
      loop
         
     -- request an  integer (in variable X) until an integer has been entered
     -- if something else has been entered ask again
     
      AS_Get(X,"Please type in an integer; please try again");
      exit when X in 1 .. 1000;
      AS_Put_Line("Please enter a number in 1 .. 1000");
      end loop;
      
      -- Print on screen "Type in some number"
      
      AS_Put("Type in a number: ");
      loop
         
     -- ask for an  integer (in variable Y) until an integer has been entered
     --   if something else has been entered ask again
     
      AS_Get(Y,"Please type in an integer; please try again");
      exit when Y in 1 .. 1000;
      AS_Put_Line("Please enter a number in 1 .. 1000");
      end loop;
      looperproc(X,Y,Z);
      AS_Put("Z = ");
      AS_Put_Line(Z);
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

--OG_SKIPP3R--

pragma SPARK_Mode (On);

with train_signal;
use train_signal;

--code by OG_SKIPP3R--

procedure Main
is
begin Init;
   
loop
      pragma 
        
      Loop_Invariant (Is_Safe(Status_System));
      Read_criteria;
      monitor_train_signal_System;
      Print_Status;
      
   end loop;
end Main;
      
      

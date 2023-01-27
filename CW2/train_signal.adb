--OG_SKIPP3R--

pragma SPARK_Mode (On);

with AS_IO_Wrapper;  use AS_IO_Wrapper; 


package body train_signal is
   
   
procedure Init is
   begin
      
      AS_Init_Standard_Input; 
      AS_Init_Standard_Output;
      Status_System := (criteria_Measured  => 0, Status_train_signal_system => Wait);
      
   end Init;
   
   procedure Read_criteria is
      
      criteria : Integer;
      
   begin
      AS_Put_Line("Insert current criteria read by your sensor");
      
      loop
	 AS_Get(criteria,"Enter an integer");
	 exit when (criteria >=0) and (criteria <= Maximum_criteria_Possible);
	 AS_Put("Please type in a value between 0 and ");
	 AS_Put(Maximum_criteria_Possible);
	 AS_Put_Line("");
      end loop;
      Status_System.criteria_Measured := criteria_Range(criteria);
      
   end Read_criteria;
   
   
   
   --code by OG_SKIPP3R--
   
   
   
procedure monitor_train_signal_System  is
   begin
      
      if Integer(status_system.criteria_Measured) = Critical_criteria1
       then status_system.Status_train_signal_System := Green;
         
      elsif Integer(status_system.criteria_Measured) = Critical_criteria2
         then status_system.status_train_signal_System := Yellow;
           
      elsif Integer(status_system.criteria_Measured) = Critical_criteria3
      then status_system.status_train_signal_System := Red;
         
             else status_system.status_train_signal_System := Wait;
     end if; 
     
   end monitor_train_signal_System;
   
   
  --code by OG_SKIPP3R-- 
   
   
   function Status_train_signal_To_String ( Status_train_signal_System  : Status_train_signal_Type) return String is
      begin
     
      if (Status_train_signal_System = Green)
      then return "Green";
         
      elsif (Status_train_signal_System = Yellow)
      then return "Yellow";
         
      elsif (Status_train_signal_System = Red)
      then return "Red";
         
      else return "Wait";
         
      end if;
      
   end Status_train_signal_To_String;
            
   
   procedure Print_Status is
   begin
      AS_Put("criteria = ");
      AS_Put(Integer(Status_System.criteria_Measured));
      AS_Put_Line("");
      AS_Put("train_signal_system = ");

      AS_Put_Line(Status_train_signal_To_String (Status_System.Status_train_signal_System));
   end Print_Status;     
     
end train_signal;  

--code by OG_SKIPP3R--

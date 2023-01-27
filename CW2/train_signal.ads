--OG_SKIPP3R--

pragma SPARK_Mode (On);

with SPARK.Text_IO; use  SPARK.Text_IO;


package train_signal is
   
   
   Maximum_criteria_Possible : constant Integer := 5;
   
   
   Critical_criteria1 : constant Integer := 1;
   Critical_criteria2 : constant Integer := 2;
   Critical_criteria3 : constant Integer := 3;
   Critical_criteria4 : constant Integer := 4;
   
   
   -- criteria range that can exist 
   type criteria_Range is new Integer range 0 .. Maximum_criteria_Possible;
   
   
   -- different train signal status
   type Status_train_signal_Type is (Red, Yellow, Green, Wait);  
   
      
   type Status_System_Type  is 
      record
        criteria_Measured   : criteria_Range;
	      Status_train_signal_System : Status_train_signal_Type;
      end record;
   
   Status_System : Status_System_Type;
   
 
   procedure Read_criteria with
     Global => (In_Out => (Standard_Output, Standard_Input,Status_System)),
     Depends => (Standard_Output => (Standard_Output,Standard_Input),
     Standard_Input  => Standard_Input,
     Status_System   => (Status_System, Standard_Input));
  
   
   function Status_train_signal_To_String ( Status_train_signal_System  : Status_train_signal_Type) return String;
      
   --code by OG_SKIPP3R--
   
   procedure Print_Status with
     Global => (In_Out => Standard_Output, Input  => Status_System),
     Depends => (Standard_Output => (Standard_Output,Status_System));
 
   
   function Is_Safe (Status : Status_System_Type) return Boolean is
      (if Integer(Status.criteria_Measured) = Critical_criteria1
       then Status.Status_train_signal_System = Green
         
       elsif Integer(Status.criteria_Measured) = Critical_criteria2
         then Status.Status_train_signal_System = Yellow
           
           elsif Integer(Status.criteria_Measured) = Critical_criteria3
       then Status.Status_train_signal_System = Red
         
       else Status.Status_train_signal_System = Wait);
   
   
   procedure monitor_train_signal_System  with
     Global  => (In_Out => Status_System),
     Depends => (Status_System => Status_System),
     Post    => Is_Safe(Status_System);
	      
   
      procedure Init with
     Global => (Output => (Standard_Output,Standard_Input,Status_System)),
     Depends => ((Standard_Input,Standard_Output,Status_System) => null),
     Post    => Is_Safe(Status_System);
   
      
end  train_signal;

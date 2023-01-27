pragma SPARK_Mode;

--OG_SKIPP3R--

package body looper is 
   
   procedure looperproc (X, Y : in Integer; Z : out Integer) is
   AUX : Integer;
   begin
   AUX := 0;
   Z := X;
      
   loop
   pragma Loop_Invariant (Z = X + AUX  and  AUX  in 0 .. Y -1);
   AUX := AUX + 1;
   Z := Z + 1;  
   exit when AUX = Y;
   end loop;
   end looperproc;

      
--OG_SKIPP3R--     
   
end looper;   
     

pragma SPARK_Mode;

--OG_SKIPP3R--

package body timer is
   
   function To59(TA, TB : HMS) return HMS is
      TR:HMS;
      carrys : Integer;
      carrym : Integer;
   begin
      if TA.Seconds + TB.Seconds < 60 then TR.Seconds := TA.Seconds + TB.Seconds;
      carrys:=0;
      else TR.Seconds := TA.Seconds + TB.Seconds - 60;
      carrys:=1;
      end if;
      if TA.Minutes + TB.Minutes + carrys < 60 then TR.Minutes := TA.Minutes + TB.Minutes + carrys;
      carrym := 0;
      else TR.Minutes := TA.Minutes + TB.Minutes + carrys - 60;     
      carrym := 1;
      end if;
      TR.Hours := TA.Hours + TB.Hours + carrym;
      return TR;
   end To59;
   
  
   --procedure To60Proc( hr1: in Integer; min1: in Integer; sec1: in Integer; hr2: in Integer; min2: in Integer; sec2: in Integer; hr : out Integer; min : out Integer; sec : out Integer) is
        --carrys : Integer;
        --carrym : Integer;
    --begin  
      --if sec1 + sec2 < 60 then sec := sec1 + sec2;
      --carrys:=0;
      --else sec := sec1 + sec2 - 59;
      --carrys:=1;
      --end if;
      --min := min1 + min2 + carrys;
      --if min < 60 then min := min1 + min2 + carrys;
      --carrym := 0;
      --else min := min - 59;      
      --carrym := 1;
      --end if;
      --hr := hr1 + hr2 + carrym;
    --end To60Proc;
    
   --procedure To60Proc( hr1: in Integer; min1: in minutes; sec1: in seconds; hr2: in Integer; min2: in minutes; sec2: in seconds; hr : out Integer; min : out minutes59; sec : out seconds59) is
        --carrys : Integer;
        --carrym : Integer;
     
     --begin
      --if sec1 + sec2 < 60 then sec := seconds59(sec1 + sec2);
      --carrys:=0;
      --else sec := seconds59(sec1 + sec2 - 59);
      --carrys:=1;
      --end if;
      --min := min1 + min2 + carrys;
      --if min < 60 then min := minutes59(min1 + min2 + carrys);
      --carrym := 0;
      --else min := minutes59(min - 59);      
      --carrym := 1;
      --end if;
      --hr := hr1 + hr2 + carrym;
     --end To60Proc;

   procedure To60Proc(TA, TB: in HMS; TR : out HMS) is
   
      carrys : Integer;
      carrym : Integer;
     begin
        
      if TA.Seconds + TB.Seconds < 60 then TR.Seconds := TA.Seconds + TB.Seconds;
      carrys:=0;
      else TR.Seconds := TA.Seconds + TB.Seconds - 60;
      carrys:=1;
      end if;
      if TA.Minutes + TB.Minutes + carrys < 60 then TR.Minutes := TA.Minutes + TB.Minutes + carrys;
      carrym := 0;
      else TR.Minutes := TA.Minutes + TB.Minutes + carrys - 60;     
      carrym := 1;
      end if;
      TR.Hours := TA.Hours + TB.Hours + carrym;
   end To60Proc;
   
--OG_SKIPP3R--   
   
end timer;
     
     
   
     
   

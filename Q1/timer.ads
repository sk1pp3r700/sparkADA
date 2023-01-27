pragma SPARK_Mode;

--OG_SKIPP3R--

package  timer is
   
   subtype minutes is  Integer range 0 .. 59;
   subtype seconds is Integer range 0 .. 59;
   subtype minutes59 is  Integer range 0 .. 59;
   subtype seconds59 is  Integer range 0 .. 59;
    
   
   type HMS is record
    Hours   : Integer;
    Minutes : minutes59;
    Seconds : seconds59;
   end record;
   
   
   function To59(TA, TB : HMS) return HMS with
     
   Pre => (TA.Seconds >=0 and TA.Seconds < 60 and
   TB.Seconds >=0 and TB.Seconds < 60 and
   TA.Minutes >=0 and TA.Minutes < 60 and
   TB.Minutes >=0 and TB.Minutes < 60 and
   TA.Hours >=0 and TA.Hours < 60 and
   TB.Hours >=0 and TB.Hours < 60),
       
   Post => (((TA.Hours*3600+TB.Hours*3600)+(TA.Minutes*60+TB.Minutes*60)+(TA.Seconds+TB.Seconds)) = To59'Result.Hours*3600+To59'Result.Minutes*60+To59'Result.Seconds);
     
--procedure To60Proc( hr1: in Integer; min1: in Integer; sec1: in Integer; hr2: in Integer; min2: in Integer; sec2: in Integer; hr : out Integer; min : out Integer; sec : out Integer);
   
--procedure To60Proc( hr1: in Integer; min1: in minutes; sec1: in seconds; hr2: in Integer; min2: in minutes; sec2: in seconds; hr : out Integer; min : out minutes59; sec : out seconds59);
   
   
   
   
   procedure To60Proc(TA, TB : in HMS; TR : out HMS) with
     Depends => (TR => (TA,TB)),
     Pre => (TA.Seconds >=0 and TA.Seconds < 60 and
     TB.Seconds >=0 and TB.Seconds < 60 and
     TA.Minutes >=0 and TA.Minutes < 60 and
     TB.Minutes >=0 and TB.Minutes < 60 and
     TA.Hours >=0 and TA.Hours < 60 and
     TB.Hours >=0 and TB.Hours < 60),
     Post    => ((TA.Hours*3600+TB.Hours*3600)+(TA.Minutes*60+TB.Minutes*60)+(TA.Seconds+TB.Seconds)=(TR.Hours*3600+TR.Minutes*60+TR.Seconds));
   

--OG_SKIPP3R--
   
end timer;
   
     
   

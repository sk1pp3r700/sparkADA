pragma SPARK_Mode;

--OG_SKIPP3R--

package looper is 
   
procedure looperproc (X, Y : in Integer; Z : out Integer)
with
         Depends => (Z => (X,Y)),
         Pre  => (X in 1 .. 1300 and Y in 1 .. 1300), 
         Post => (X + Y = Z);
   
   
end looper;

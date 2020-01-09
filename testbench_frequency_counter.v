//`timescale 10 ms / 1 ms
//module testbench_frequency_counter;
//reg vol, reset, clear;
//wire [5:0] q;
//frequency_counter q1(vol, reset, clear, q);
//initial 
//$monitor($time, "vol = %b, reset = %b, q = %b", vol, reset, q);
//initial
////begin
//reset = 1'b1;
//#2 reset = 1'b0;                                                  
//end
//initial
//clear = 1'b0;
//initial
//begin
//vol = 1'b0;
//forever #1 vol = ~vol;
//end
//initial
//#100 $stop;
//endmodule

`timescale 10 ms / 1 ms
module testbench_frequency_counter;
reg vol ,reset;
wire [15:0] count;
frequency_counter q1(vol, reset, count);
initial 
$monitor($time, "vol = %b, reset=%b, count=%b", vol, reset, count);
initial
begin
vol = 1'b1;
forever #1 vol = ~vol;
end
initial
begin
reset = 1'b1;
#2 reset = 1'b0;
#98 reset = 1'b1;
#2 reset = 1'b0;
end
initial
#200 $stop;
endmodule
//module frequency_counter(input vol, reset, clear, 
//output [5:0] q);
//t_ffc tff0(vol, reset, clear, q[0]); 
//t_ffc tff1(q[0], reset, clear, q[1]); 
//t_ffc tff2(q[1], reset, clear, q[2]);
//t_ffc tff3(q[2], reset, clear, q[3]); 
//t_ffc tff4(q[3], reset, clear, q[4]);
//t_ffc tff5(q[4], reset, clear, q[5]); 
//or (clear,q[5],q[4]);
//endmodule 
//module t_ffc(input clk, reset, clear,
//output q);   
//wire d; 
//d_ff dff0(d, clk, reset, clear, q); 
//not n1(d, q); 
//endmodule
//module d_ff(input d, clk, reset, clear,
//output reg q);  
// always @(posedge reset or negedge clk)
//begin
// if (reset||clear)     
//q <= 1'b0; 
//else    
// q <= d;  
//end
//endmodule    
module frequency_counter(input vol, reset,
output reg [15:0] count);
always @(posedge vol)
if(reset)
count <= 15'b0;
else
count <= count + 1;  
 always @(posedge vol)
if($time==1000)
begin
count = count + 1;
$display("%d , In %m frequency = %d Hz ", $time, count); 
end
endmodule
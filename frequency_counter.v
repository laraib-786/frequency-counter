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

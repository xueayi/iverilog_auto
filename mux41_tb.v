`timescale 1ns/1ns
module mux41_tb();
reg [3:0]a;
reg [1:0]sel;
mux41 top(.sel(sel),.a(a),.y(y));

initial
	begin
	a=4'b0001;
	#100 sel=2'b00;
	#100 sel=2'b01;
	#100 sel=2'b10;
	#100 sel=2'b11;
	
	#200 a=4'b0010;
	#100 sel=2'b00;
	#100 sel=2'b01;
	#100 sel=2'b10;
	#100 sel=2'b11;
	
	#200 a=4'b0100;
	#100 sel=2'b00;
	#100 sel=2'b01;
	#100 sel=2'b10;
	#100 sel=2'b11;
	
	#200 a=4'b1000;
	#100 sel=2'b00;
	#100 sel=2'b01;
	#100 sel=2'b10;
	#100 sel=2'b11;
	
	#100 $finish; 
	end

initial begin
	$dumpfile("wave.vcd");  			// 指定VCD波形文件的名字为wave.vcd，仿真信息将记录到此文件，wave.vcd文件将存储在当前目录下
	$dumpfile("./simulation/wave.vcd");  	// wave.vcd文件将存储在当前目录下的simulation文件夹下
	$dumpvars(0, mux41_tb);  				// 指定层次数为0，则tb模块及其下面各层次的所有信号将被记录，我们需要所有信号都被记录,tb为模块名称
	#300 $finish;						// 一定要设置一个仿真停止时间
end

endmodule
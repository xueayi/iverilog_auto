rd /s /q simulation		%删除仿真文件夹%
del *.vcd *.out *.txt	%删除忘记加代码生成的文件%
md simulation		%重建仿真文件夹%
iverilog -o "wave.out" *_rtl.v *_tb.v    %编译rtl和tb生成中间文件%
vvp wave.out     %用中间文件进行仿真，根据tb的dump指令生成波形文件vcd%
move wave.out ./simulation		%移动中间文件到仿真文件夹%
gtkwave ./simulation/wave.vcd     %打开波形文件%

@if 1==0 (
initial begin
	$dumpfile("wave.vcd");  			// 指定VCD波形文件的名字为wave.vcd，仿真信息将记录到此文件，wave.vcd文件将存储在当前目录下
	$dumpfile("./simulation/wave.vcd");  	// wave.vcd文件将存储在当前目录下的simulation文件夹下
	$dumpvars(0, tb);  				// 指定层次数为0，则tb模块及其下面各层次的所有信号将被记录，我们需要所有信号都被记录,tb为模块名称
	#3000 $finish;						// 一定要设置一个仿真停止时间
end

注意：
1.rtl命名
2.tb加代码
)
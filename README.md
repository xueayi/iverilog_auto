# iverilog_auto
基于iverilog实现rtl和tb文件的自动编译和仿真，并打开gtkwave查看波形

3A07
# 使用方法：
1. 启动bat以进行编译、仿真和查看波形
2. rtl模块代码文件文件命名为*_rtl.v
3. tb模块代码文件文件命名为*_tb.v
（*为任意合法字符串）
4. tb模块加人以下代码：

initial begin
	$dumpfile("wave.vcd");  			// 指定VCD波形文件的名字为wave.vcd，仿真信息将记录到此文件，wave.vcd文件将存储在当前目录下
	$dumpfile("./simulation/wave.vcd");  	// wave.vcd文件将存储在当前目录下的simulation文件夹下
	$dumpvars(0, tb);  				// 指定层次数为0，则tb模块及其下面各层次的所有信号将被记录，我们需要所有信号都被记录,tb为模块名称，按情况调整
	#3000 $finish;						// 一定要设置一个仿真停止时间，按情况调整
end
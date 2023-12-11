rd /s /q simulation		%删除仿真文件夹%
del *.vcd *.out *.txt	%删除忘记加代码生成的文件%
md simulation		%重建仿真文件夹%
iverilog -o "wave.out" *_rtl.v *_tb.v    %编译rtl和tb生成中间文件%
vvp wave.out     %用中间文件进行仿真，根据tb的dump指令生成波形文件vcd%
move wave.out ./simulation		%移动中间文件到仿真文件夹%
gtkwave ./simulation/wave.vcd     %打开波形文件%
%version1.3%

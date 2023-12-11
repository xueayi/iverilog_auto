rd /s /q simulation		%ɾ�������ļ���%
del *.vcd *.out *.txt	%ɾ�����ǼӴ������ɵ��ļ�%
md simulation		%�ؽ������ļ���%
iverilog -o "wave.out" *_rtl.v *_tb.v    %����rtl��tb�����м��ļ�%
vvp wave.out     %���м��ļ����з��棬����tb��dumpָ�����ɲ����ļ�vcd%
move wave.out ./simulation		%�ƶ��м��ļ��������ļ���%
gtkwave ./simulation/wave.vcd     %�򿪲����ļ�%
pause
%version1.3%

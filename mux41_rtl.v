module mux41(a,sel,y);
input [3:0]a;
input [1:0]sel;
output y;
reg y;
always @ (a or sel)
begin
	case(sel)
		2'b00:	y=a[0];
		2'b01:	y=a[1];
		2'b10:	y=a[2];
		2'b11:	y=a[3];
		default:	y=1'bx;
	endcase
end
endmodule
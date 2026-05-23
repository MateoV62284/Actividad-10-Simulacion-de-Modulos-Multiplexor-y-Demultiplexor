module Act10_DEMUX_tb ();
reg [1:0] sel;
reg i;
wire y0,y1,y2,y3;

Act10_DEMUX DUT (
.sel (sel),
.i (i),
.y0 (y0),
.y1 (y1),
.y2 (y2),
.y3 (y3)
);
initial 
begin   
    sel = 2'b00; i = 1'b0; #10;
    sel = 2'b00; i = 1'b1; #10;
    sel = 2'b01; i = 1'b0; #10;
    sel = 2'b01; i = 1'b1; #10;
    sel = 2'b10; i = 1'b0; #10;
    sel = 2'b10; i = 1'b1; #10;
    sel = 2'b11; i = 1'b0; #10;
    sel = 2'b11; i = 1'b1; #10;
    $stop;
    $finish;
end

initial
begin
    $monitor("En el tiempo de simulación %0t, Entrada: sel = %2b, i = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b", $time, sel, i, y0, y1, y2, y3);
end

endmodule
module Act10_MUX_tb ();
reg [1:0] sel;
reg [3:0] i;
wire y; 
Act10_MUX DUT (
.sel(sel),
.i(i),
.y(y)         
);
initial 
begin
    repeat (100) 
    begin
        sel = $random % 2; 
        i = $random % 4; 
        #10; 
    end
    $stop;
    $finish;
end
initial
begin
    $monitor("En el tiempo de simulación %0t, Entrada: sel = %2b, i = %4b, Salida: y = %b", $time, sel, i, y);
end
endmodule

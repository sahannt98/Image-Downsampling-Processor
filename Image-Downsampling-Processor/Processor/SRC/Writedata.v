module Writedata(input wren,
                 input wire [7:0] data,
                 input clock,             
                 input wire [7:0] IRAM_address
                 );

integer file;
reg [15:0] Check; 



initial begin 
Check=0;
file = $fopen("C:\\Users\\anjan\\OneDrive\\Desktop\\New folder\\Downsampling-Processor\\Processor\\SRC\\output.txt","w");
end

always@(negedge clock)
begin  
    case (wren)
        1:
        begin
         if (IRAM_address == 80)
          begin
		   $fdisplay(file,"%d",data);
		   Check=Check+1;
		  end 
		end
	 endcase
end

//initial
//$fclose(file);

endmodule
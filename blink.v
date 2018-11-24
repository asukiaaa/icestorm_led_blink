module top
  (
   input clk,
   output [7:0] LED
   );

   parameter TOGGLE_TIMER_BIT = 23;

   reg [31:0]   counter = 32'd0;
   reg [7:0]    led_state = 8'd0;

   assign LED = led_state;

   always @(posedge clk)
     begin
        if (counter[TOGGLE_TIMER_BIT] == 1'b1)
          begin
             counter <= 32'd0;
             if (led_state == 8'd1)
               begin
                  led_state <= 8'd2;
               end
             else
               begin
                  led_state <= 8'd1;
               end
          end
        else
          begin
             counter <= counter + 1'd1;
          end
     end // always @ (posedge CLK)

endmodule // top

// Code your design here
module RTC(input clk,rst, output reg EW_RED,EW_YELLOW,EW_GREEN,NS_RED,NS_YELLOW,NS_GREEN);
  reg[2:0]state;
  reg[3:0] count;
  parameter s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100, s5=3'b101;
  parameter sec_15 =15, sec_3=3;
  always @(posedge clk)
  if(rst)
    begin
    state <= s0;
    count <= 4'd0;
  end
  else
    begin
    case(state)
      s0:begin
        if(count<sec_15)
          begin
            count <= count +1'b1;
            state <= s0;
          end
        else
          begin
          count <= 0;
          state <= s1;
        end
      end
        s1:begin
        if(count<sec_3)
          begin
            count <= count +1'b1;
            state <= s1;
          end
        else
          begin
          count <= 0;
          state <= s2;
        end
      end
        s2:begin
        if(count<sec_3)
          begin
            count <= count +1'b1;
            state <= s2;
          end
        else
          begin
          count <= 0;
          state <= s3;
        end
      end
        s3:begin
        if(count<sec_15)
          begin
            count <= count +1'b1;
            state <= s3;
          end
        else
          begin
          count <= 0;
          state <= s4;
        end
      end
        s4:begin
        if(count<sec_3)
          begin
            count <= count +1'b1;
            state <= s4;
          end
        else
          begin
          count <= 0;
          state <= s5;
        end
      end
        s5:begin
        if(count<sec_3)
          begin
            count <= count +1'b1;
            state <= s5;
          end
        else
          begin
          count <= 0;
          state <= s0;
        end
      end
      endcase
    end
      always @(state)
      case(state)
        s0:begin
          EW_RED <= 1'b1;
          EW_YELLOW <= 1'b0;
          EW_GREEN <= 1'b0;
          NS_RED <= 1'b0;
          NS_YELLOW <= 1'b0;
          NS_GREEN <= 1'b1;
        end
        s1:begin
          EW_RED <= 1'b1;
          EW_YELLOW <= 1'b0;
          EW_GREEN <= 1'b0;
          NS_RED <= 1'b0;
          NS_YELLOW <= 1'b1;
          NS_GREEN <= 1'b0;
        end
        s2:begin
          EW_RED <= 1'b1;
          EW_YELLOW <= 1'b0;
          EW_GREEN <= 1'b0;
          NS_RED <= 1'b1;
          NS_YELLOW <= 1'b0;
          NS_GREEN <= 1'b0;
        end
        s3:begin
          EW_RED <= 1'b0;
          EW_YELLOW <= 1'b0;
          EW_GREEN <= 1'b1;
          NS_RED <= 1'b1;
          NS_YELLOW <= 1'b0;
          NS_GREEN <= 1'b0;
        end
        s4:begin
          EW_RED <= 1'b0;
          EW_YELLOW <= 1'b1;
          EW_GREEN <= 1'b0;
          NS_RED <= 1'b1;
          NS_YELLOW <= 1'b0;
          NS_GREEN <= 1'b0;
        end
        s5:begin
          EW_RED <= 1'b1;
          EW_YELLOW <= 1'b0;
          EW_GREEN <= 1'b0;
          NS_RED <= 1'b1;
          NS_YELLOW <= 1'b0;
          NS_GREEN <= 1'b0;
        end
      endcase
    endmodule

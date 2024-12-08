module binary_counter (
    input wire clk,           // สัญญาณนาฬิกา
    input wire reset,         // สัญญาณรีเซ็ตแบบ Asynchronous
    output reg [3:0] count    // เอาต์พุตขนาด 4 บิต
);

    // กระบวนการนับ
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // รีเซ็ตแบบ Asynchronous
            count <= 4'b0000;
        end
        else begin
            // นับขึ้นทุกขอบขาขึ้นของสัญญาณนาฬิกา
            count <= count + 1;
        end
    end

endmodule

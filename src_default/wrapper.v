`default_nettype none
/* verilator lint_off DECLFILENAME */
module Toplevel (
    input wire ap_clk,
    input wire ap_rst_n,
    input wire s_axi_control_ARVALID,
    output wire s_axi_control_ARREADY,
    input wire [11:0] s_axi_control_ARADDR,
    input wire s_axi_control_RREADY,
    output wire s_axi_control_RVALID,
    output wire [31:0] s_axi_control_RDATA,
    output wire [1:0] s_axi_control_RRESP,
    input wire s_axi_control_AWVALID,
    output wire s_axi_control_AWREADY,
    input wire [11:0] s_axi_control_AWADDR,
    input wire s_axi_control_WVALID,
    output wire s_axi_control_WREADY,
    input wire [31:0] s_axi_control_WDATA,
    input wire s_axi_control_BREADY,
    output wire s_axi_control_BVALID,
    output wire [1:0] s_axi_control_BRESP,
    input wire m0_axi_ARREADY,
    output wire m0_axi_ARVALID,
    output wire [7:0] m0_axi_ARID,
    output wire [63:0] m0_axi_ARADDR,
    output wire [7:0] m0_axi_ARLEN,
    output wire [2:0] m0_axi_ARSIZE,
    input wire m0_axi_RVALID,
    output wire m0_axi_RREADY,
    input wire [7:0] m0_axi_RID,
    input wire [511:0] m0_axi_RDATA,
    input wire [1:0] m0_axi_RRESP,
    input wire m0_axi_RLAST,
    input wire m0_axi_AWREADY,
    output wire m0_axi_AWVALID,
    output wire [7:0] m0_axi_AWID,
    output wire [63:0] m0_axi_AWADDR,
    output wire [7:0] m0_axi_AWLEN,
    output wire [2:0] m0_axi_AWSIZE,
    input wire m0_axi_WREADY,
    output wire m0_axi_WVALID,
    output wire [7:0] m0_axi_WID,
    output wire [511:0] m0_axi_WDATA,
    output wire [63:0] m0_axi_WSTRB,
    output wire m0_axi_WLAST,
    input wire m0_axi_BVALID,
    output wire m0_axi_BREADY,
    input wire [7:0] m0_axi_BID,
    input wire [1:0] m0_axi_BRESP,
    input wire m1_axi_ARREADY,
    output wire m1_axi_ARVALID,
    output wire [7:0] m1_axi_ARID,
    output wire [63:0] m1_axi_ARADDR,
    output wire [7:0] m1_axi_ARLEN,
    output wire [2:0] m1_axi_ARSIZE,
    input wire m1_axi_RVALID,
    output wire m1_axi_RREADY,
    input wire [7:0] m1_axi_RID,
    input wire [511:0] m1_axi_RDATA,
    input wire [1:0] m1_axi_RRESP,
    input wire m1_axi_RLAST,
    input wire m1_axi_AWREADY,
    output wire m1_axi_AWVALID,
    output wire [7:0] m1_axi_AWID,
    output wire [63:0] m1_axi_AWADDR,
    output wire [7:0] m1_axi_AWLEN,
    output wire [2:0] m1_axi_AWSIZE,
    input wire m1_axi_WREADY,
    output wire m1_axi_WVALID,
    output wire [7:0] m1_axi_WID,
    output wire [511:0] m1_axi_WDATA,
    output wire [63:0] m1_axi_WSTRB,
    output wire m1_axi_WLAST,
    input wire m1_axi_BVALID,
    output wire m1_axi_BREADY,
    input wire [7:0] m1_axi_BID,
    input wire [1:0] m1_axi_BRESP,
    input wire m2_axi_ARREADY,
    output wire m2_axi_ARVALID,
    output wire [7:0] m2_axi_ARID,
    output wire [63:0] m2_axi_ARADDR,
    output wire [7:0] m2_axi_ARLEN,
    output wire [2:0] m2_axi_ARSIZE,
    input wire m2_axi_RVALID,
    output wire m2_axi_RREADY,
    input wire [7:0] m2_axi_RID,
    input wire [511:0] m2_axi_RDATA,
    input wire [1:0] m2_axi_RRESP,
    input wire m2_axi_RLAST,
    input wire m2_axi_AWREADY,
    output wire m2_axi_AWVALID,
    output wire [7:0] m2_axi_AWID,
    output wire [63:0] m2_axi_AWADDR,
    output wire [7:0] m2_axi_AWLEN,
    output wire [2:0] m2_axi_AWSIZE,
    input wire m2_axi_WREADY,
    output wire m2_axi_WVALID,
    output wire [7:0] m2_axi_WID,
    output wire [511:0] m2_axi_WDATA,
    output wire [63:0] m2_axi_WSTRB,
    output wire m2_axi_WLAST,
    input wire m2_axi_BVALID,
    output wire m2_axi_BREADY,
    input wire [7:0] m2_axi_BID,
    input wire [1:0] m2_axi_BRESP
);
    wire ap_start;
    wire ap_done;
    wire [31:0] timeout;
    wire [63:0] A0;
    wire [63:0] B0;
    wire [63:0] v0;
    wire reset;
    assign reset = ~ap_rst_n;
    Control_axi inst_control_axi (
        .A0(A0),
        .ACLK(ap_clk),
        .ARADDR(s_axi_control_ARADDR),
        .ARESET(reset),
        .ARREADY(s_axi_control_ARREADY),
        .ARVALID(s_axi_control_ARVALID),
        .AWADDR(s_axi_control_AWADDR),
        .AWREADY(s_axi_control_AWREADY),
        .AWVALID(s_axi_control_AWVALID),
        .B0(B0),
        .BREADY(s_axi_control_BREADY),
        .BRESP(s_axi_control_BRESP),
        .BVALID(s_axi_control_BVALID),
        .RDATA(s_axi_control_RDATA),
        .RREADY(s_axi_control_RREADY),
        .RRESP(s_axi_control_RRESP),
        .RVALID(s_axi_control_RVALID),
        .WDATA(s_axi_control_WDATA),
        .WREADY(s_axi_control_WREADY),
        .WVALID(s_axi_control_WVALID),
        .ap_done(ap_done),
        .ap_start(ap_start),
        .timeout(timeout),
        .v0(v0)
    );
    wire A0_copy;
    wire A0_copy_done;
    wire A0_send;
    wire A0_send_done;
    wire B0_copy;
    wire B0_copy_done;
    wire B0_send;
    wire B0_send_done;
    wire v0_copy;
    wire v0_copy_done;
    wire v0_send;
    wire v0_send_done;
    wire memories_copied;
    reg [2:0] memories_sent;
    assign memories_copied = A0_copy_done && B0_copy_done && v0_copy_done;
    always @(posedge ap_clk) begin
        if(host_txn_state == 3) begin
            memories_sent[0] <= A0_send_done;
            memories_sent[1] <= B0_send_done;
            memories_sent[2] <= v0_send_done;
        end else memories_sent <= 0;
    end
    reg [1:0] host_txn_state;
    reg [1:0] host_txn_next;
    always @(posedge ap_clk) begin
        if(reset) begin
            host_txn_state <= 0;
        end else begin
            host_txn_state <= host_txn_next;
        end
    end
    assign A0_copy = host_txn_state == 1;
    assign B0_copy = host_txn_state == 1;
    assign v0_copy = host_txn_state == 1;
    assign kernel_start = host_txn_state == 2;
    assign A0_send = host_txn_state == 3;
    assign B0_send = host_txn_state == 3;
    assign v0_send = host_txn_state == 3;
    always @(*) begin
        case (host_txn_state)
            0 : begin
                if(ap_start) begin
                    host_txn_next = 1;
                end else host_txn_next = 0;
            end
            1 : begin
                if(memories_copied) begin
                    host_txn_next = 2;
                end else host_txn_next = 1;
            end
            2 : begin
                if(kernel_done) begin
                    host_txn_next = 3;
                end else host_txn_next = 2;
            end
            3 : begin
                if(memories_sent) begin
                    host_txn_next = 0;
                end else host_txn_next = 3;
            end
            default : begin
                host_txn_next = 0;
            end
        endcase
    end
    wire [31:0] A0_write_data;
    wire [31:0] A0_read_data;
    wire [4:0] A0_addr0;
    wire A0_write_en;
    wire A0_done;
    Memory_controller_axi_0 inst_mem_controller_axi_0 (
        .ACLK(ap_clk),
        .ADDR(A0_addr0),
        .ARADDR(m0_axi_ARADDR),
        .ARESET(reset || memories_sent),
        .ARID(m0_axi_ARID),
        .ARLEN(m0_axi_ARLEN),
        .ARREADY(m0_axi_ARREADY),
        .ARSIZE(m0_axi_ARSIZE),
        .ARVALID(m0_axi_ARVALID),
        .AWADDR(m0_axi_AWADDR),
        .AWID(m0_axi_AWID),
        .AWLEN(m0_axi_AWLEN),
        .AWREADY(m0_axi_AWREADY),
        .AWSIZE(m0_axi_AWSIZE),
        .AWVALID(m0_axi_AWVALID),
        .BASE_ADDRESS(A0),
        .BID(m0_axi_BID),
        .BREADY(m0_axi_BREADY),
        .BRESP(m0_axi_BRESP),
        .BVALID(m0_axi_BVALID),
        .COPY_FROM_HOST(A0_copy),
        .COPY_FROM_HOST_DONE(A0_copy_done),
        .DONE(A0_done),
        .RDATA(m0_axi_RDATA),
        .READ_DATA(A0_read_data),
        .RID(m0_axi_RID),
        .RLAST(m0_axi_RLAST),
        .RREADY(m0_axi_RREADY),
        .RRESP(m0_axi_RRESP),
        .RVALID(m0_axi_RVALID),
        .SEND_TO_HOST(A0_send),
        .SEND_TO_HOST_DONE(A0_send_done),
        .WDATA(m0_axi_WDATA),
        .WE(A0_write_en),
        .WID(m0_axi_WID),
        .WLAST(m0_axi_WLAST),
        .WREADY(m0_axi_WREADY),
        .WRITE_DATA(A0_write_data),
        .WSTRB(m0_axi_WSTRB),
        .WVALID(m0_axi_WVALID)
    );
    wire [31:0] B0_write_data;
    wire [31:0] B0_read_data;
    wire [4:0] B0_addr0;
    wire B0_write_en;
    wire B0_done;
    Memory_controller_axi_1 inst_mem_controller_axi_1 (
        .ACLK(ap_clk),
        .ADDR(B0_addr0),
        .ARADDR(m1_axi_ARADDR),
        .ARESET(reset || memories_sent),
        .ARID(m1_axi_ARID),
        .ARLEN(m1_axi_ARLEN),
        .ARREADY(m1_axi_ARREADY),
        .ARSIZE(m1_axi_ARSIZE),
        .ARVALID(m1_axi_ARVALID),
        .AWADDR(m1_axi_AWADDR),
        .AWID(m1_axi_AWID),
        .AWLEN(m1_axi_AWLEN),
        .AWREADY(m1_axi_AWREADY),
        .AWSIZE(m1_axi_AWSIZE),
        .AWVALID(m1_axi_AWVALID),
        .BASE_ADDRESS(B0),
        .BID(m1_axi_BID),
        .BREADY(m1_axi_BREADY),
        .BRESP(m1_axi_BRESP),
        .BVALID(m1_axi_BVALID),
        .COPY_FROM_HOST(B0_copy),
        .COPY_FROM_HOST_DONE(B0_copy_done),
        .DONE(B0_done),
        .RDATA(m1_axi_RDATA),
        .READ_DATA(B0_read_data),
        .RID(m1_axi_RID),
        .RLAST(m1_axi_RLAST),
        .RREADY(m1_axi_RREADY),
        .RRESP(m1_axi_RRESP),
        .RVALID(m1_axi_RVALID),
        .SEND_TO_HOST(B0_send),
        .SEND_TO_HOST_DONE(B0_send_done),
        .WDATA(m1_axi_WDATA),
        .WE(B0_write_en),
        .WID(m1_axi_WID),
        .WLAST(m1_axi_WLAST),
        .WREADY(m1_axi_WREADY),
        .WRITE_DATA(B0_write_data),
        .WSTRB(m1_axi_WSTRB),
        .WVALID(m1_axi_WVALID)
    );
    wire [31:0] v0_write_data;
    wire [31:0] v0_read_data;
    wire [4:0] v0_addr0;
    wire v0_write_en;
    wire v0_done;
    Memory_controller_axi_2 inst_mem_controller_axi_2 (
        .ACLK(ap_clk),
        .ADDR(v0_addr0),
        .ARADDR(m2_axi_ARADDR),
        .ARESET(reset || memories_sent),
        .ARID(m2_axi_ARID),
        .ARLEN(m2_axi_ARLEN),
        .ARREADY(m2_axi_ARREADY),
        .ARSIZE(m2_axi_ARSIZE),
        .ARVALID(m2_axi_ARVALID),
        .AWADDR(m2_axi_AWADDR),
        .AWID(m2_axi_AWID),
        .AWLEN(m2_axi_AWLEN),
        .AWREADY(m2_axi_AWREADY),
        .AWSIZE(m2_axi_AWSIZE),
        .AWVALID(m2_axi_AWVALID),
        .BASE_ADDRESS(v0),
        .BID(m2_axi_BID),
        .BREADY(m2_axi_BREADY),
        .BRESP(m2_axi_BRESP),
        .BVALID(m2_axi_BVALID),
        .COPY_FROM_HOST(v0_copy),
        .COPY_FROM_HOST_DONE(v0_copy_done),
        .DONE(v0_done),
        .RDATA(m2_axi_RDATA),
        .READ_DATA(v0_read_data),
        .RID(m2_axi_RID),
        .RLAST(m2_axi_RLAST),
        .RREADY(m2_axi_RREADY),
        .RRESP(m2_axi_RRESP),
        .RVALID(m2_axi_RVALID),
        .SEND_TO_HOST(v0_send),
        .SEND_TO_HOST_DONE(v0_send_done),
        .WDATA(m2_axi_WDATA),
        .WE(v0_write_en),
        .WID(m2_axi_WID),
        .WLAST(m2_axi_WLAST),
        .WREADY(m2_axi_WREADY),
        .WRITE_DATA(v0_write_data),
        .WSTRB(m2_axi_WSTRB),
        .WVALID(m2_axi_WVALID)
    );
    wire kernel_start;
    wire kernel_done;
    main kernel_inst (
        .A0_addr0(A0_addr0),
        .A0_clk(),
        .A0_done(A0_done),
        .A0_read_data(A0_read_data),
        .A0_write_data(A0_write_data),
        .A0_write_en(A0_write_en),
        .B0_addr0(B0_addr0),
        .B0_clk(),
        .B0_done(B0_done),
        .B0_read_data(B0_read_data),
        .B0_write_data(B0_write_data),
        .B0_write_en(B0_write_en),
        .clk(ap_clk),
        .done(kernel_done),
        .go(kernel_start),
        .reset(reset || memories_sent),
        .v0_addr0(v0_addr0),
        .v0_clk(),
        .v0_done(v0_done),
        .v0_read_data(v0_read_data),
        .v0_write_data(v0_write_data),
        .v0_write_en(v0_write_en)
    );
    reg [31:0] counter;
    always @(posedge ap_clk) begin
        if(ap_start) begin
            counter <= counter + 32'd1;
        end else begin
            counter <= 32'd0;
        end
    end
    assign ap_done = counter > timeout || memories_sent == 3'b1;
endmodule

module SINGLE_PORT_BRAM (
    input wire ACLK,
    input wire [4:0] ADDR,
    input wire [31:0] Din,
    input wire WE,
    output wire [31:0] Dout,
    output wire Done
);
    (*ram_style = "block"*) reg [31:0] ram_core [31:0];
    always @(posedge ACLK) begin
        if(WE) begin
            ram_core[ADDR] <= Din;
        end
    end
    reg done_reg;
    always @(posedge ACLK) begin
        if(WE) begin
            done_reg <= 1;
        end else begin
            done_reg <= 0;
        end
    end
    assign Dout = ram_core[ADDR];
endmodule

module Control_axi (
    input wire ACLK,
    input wire ARESET,
    output wire [63:0] A0,
    output wire [63:0] B0,
    output wire [63:0] v0,
    output wire ap_start,
    input wire ap_done,
    output wire [31:0] timeout,
    input wire ARVALID,
    output wire ARREADY,
    input wire [11:0] ARADDR,
    input wire RREADY,
    output wire RVALID,
    output wire [31:0] RDATA,
    output wire [1:0] RRESP,
    input wire AWVALID,
    output wire AWREADY,
    input wire [11:0] AWADDR,
    input wire WVALID,
    output wire WREADY,
    input wire [31:0] WDATA,
    input wire BREADY,
    output wire BVALID,
    output wire [1:0] BRESP
);
    wire [11:0] raddr;
    reg [31:0] rdata;
    reg rstate;
    reg rnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            rstate <= 0;
        end else begin
            rstate <= rnext;
        end
    end
    assign ARREADY = rstate == 0;
    assign RVALID = rstate == 1;
    always @(*) begin
        case (rstate)
            0 : begin
                if(ARVALID) begin
                    rnext = 1;
                end else rnext = 0;
            end
            1 : begin
                if(RREADY) begin
                    rnext = 0;
                end else rnext = 1;
            end
            default : begin
                rnext = 0;
            end
        endcase
    end
    assign raddr = ARADDR;
    assign RDATA = rdata;
    assign RRESP = 0;
    reg [11:0] waddr;
    wire [31:0] wdata;
    reg [1:0] wstate;
    reg [1:0] wnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            wstate <= 0;
        end else begin
            wstate <= wnext;
        end
    end
    assign AWREADY = wstate == 0;
    assign WREADY = wstate == 1;
    assign BVALID = wstate == 2;
    always @(*) begin
        case (wstate)
            0 : begin
                if(AWVALID) begin
                    wnext = 1;
                end else wnext = 0;
            end
            1 : begin
                if(WVALID) begin
                    wnext = 2;
                end else wnext = 1;
            end
            2 : begin
                if(BREADY) begin
                    wnext = 0;
                end else wnext = 2;
            end
            default : begin
                wnext = 0;
            end
        endcase
    end
    assign wdata = WDATA;
    assign BRESP = 0;
    always @(posedge ACLK) begin
        if(ARESET) begin
            waddr <= 0;
        end else if(AWVALID & AWREADY) begin
            waddr <= AWADDR;
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            rdata <= 0;
        end else if(ARVALID & ARREADY) begin
            case (raddr)
                12'h00 : begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[31:2] <= 0;
                end
                12'h04 : begin
                    rdata[0] <= int_gie;
                    rdata[31:1] <= 0;
                end
                12'h08 : begin
                    rdata[1:0] <= int_ier[1:0];
                    rdata[31:2] <= 0;
                end
                12'h0c : begin
                    rdata[0] <= int_isr_done;
                    rdata[1] <= int_isr_ready;
                    rdata[31:2] <= 0;
                end
                12'h10 : begin
                    rdata[31:0] <= int_timeout[31:0];
                end
                12'h18 : begin
                    rdata[31:0] <= addr_A0[31:0];
                end
                12'h1c : begin
                    rdata[31:0] <= addr_A0[63:32];
                end
                12'h20 : begin
                    rdata[31:0] <= addr_B0[31:0];
                end
                12'h24 : begin
                    rdata[31:0] <= addr_B0[63:32];
                end
                12'h28 : begin
                    rdata[31:0] <= addr_v0[31:0];
                end
                12'h2c : begin
                    rdata[31:0] <= addr_v0[63:32];
                end
                default : begin
                    rdata <= 0;
                end
            endcase
        end
    end
    reg [63:0] addr_A0;
    reg [63:0] addr_B0;
    reg [63:0] addr_v0;
    reg int_ap_done;
    reg int_ap_start;
    reg int_gie;
    reg [1:0] int_ier;
    reg int_isr_done;
    reg int_isr_ready;
    reg [31:0] int_timeout;
    assign ap_start = int_ap_start;
    assign timeout = int_timeout;
    always @(posedge ACLK) begin
        if(ARESET) begin
            int_ap_start <= 0;
        end else if(WVALID & WREADY && waddr == 0) begin
            int_ap_start <= wdata[0];
        end else if(ap_done) begin
            int_ap_start <= 0;
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            int_ap_done <= 0;
        end else if(ap_done) begin
            int_ap_done <= 1;
        end else if(RREADY & RVALID && raddr == 0) begin
            int_ap_done <= 0;
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            int_gie <= 0;
        end else if(WVALID & WREADY && waddr == 4) begin
            int_gie <= wdata[0];
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            int_ier[1:0] <= 0;
        end else if(WVALID & WREADY && waddr == 8) begin
            int_ier[1:0] <= wdata[1:0];
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            int_isr_done <= 0;
            int_isr_ready <= 0;
        end else if(WVALID & WREADY && waddr == 12) begin
            int_isr_done <= wdata[0];
            int_isr_ready <= wdata[1];
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            int_timeout[31:0] <= 0;
        end else if(WVALID & WREADY && waddr == 16) begin
            int_timeout[31:0] <= wdata[31:0];
        end
    end
    assign A0 = addr_A0;
    always @(posedge ACLK) begin
        if(ARESET) begin
            addr_A0[31:0] <= 0;
        end else if(WVALID & WREADY && waddr == 24) begin
            addr_A0[31:0] <= wdata[31:0];
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            addr_A0[63:32] <= 0;
        end else if(WVALID & WREADY && waddr == 28) begin
            addr_A0[63:32] <= wdata[31:0];
        end
    end
    assign B0 = addr_B0;
    always @(posedge ACLK) begin
        if(ARESET) begin
            addr_B0[31:0] <= 0;
        end else if(WVALID & WREADY && waddr == 32) begin
            addr_B0[31:0] <= wdata[31:0];
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            addr_B0[63:32] <= 0;
        end else if(WVALID & WREADY && waddr == 36) begin
            addr_B0[63:32] <= wdata[31:0];
        end
    end
    assign v0 = addr_v0;
    always @(posedge ACLK) begin
        if(ARESET) begin
            addr_v0[31:0] <= 0;
        end else if(WVALID & WREADY && waddr == 40) begin
            addr_v0[31:0] <= wdata[31:0];
        end
    end
    always @(posedge ACLK) begin
        if(ARESET) begin
            addr_v0[63:32] <= 0;
        end else if(WVALID & WREADY && waddr == 44) begin
            addr_v0[63:32] <= wdata[31:0];
        end
    end
endmodule

module Memory_controller_axi_0 (
    input wire ACLK,
    input wire ARESET,
    input wire ARREADY,
    output wire ARVALID,
    output wire [7:0] ARID,
    output wire [63:0] ARADDR,
    output wire [7:0] ARLEN,
    output wire [2:0] ARSIZE,
    input wire RVALID,
    output wire RREADY,
    input wire [7:0] RID,
    input wire [511:0] RDATA,
    input wire [1:0] RRESP,
    input wire RLAST,
    input wire AWREADY,
    output wire AWVALID,
    output wire [7:0] AWID,
    output wire [63:0] AWADDR,
    output wire [7:0] AWLEN,
    output wire [2:0] AWSIZE,
    input wire WREADY,
    output wire WVALID,
    output wire [7:0] WID,
    output wire [511:0] WDATA,
    output wire [63:0] WSTRB,
    output wire WLAST,
    input wire BVALID,
    output wire BREADY,
    input wire [7:0] BID,
    input wire [1:0] BRESP,
    input wire [63:0] BASE_ADDRESS,
    input wire COPY_FROM_HOST,
    output wire COPY_FROM_HOST_DONE,
    input wire SEND_TO_HOST,
    output wire SEND_TO_HOST_DONE,
    input wire [31:0] WRITE_DATA,
    output wire [31:0] READ_DATA,
    input wire [4:0] ADDR,
    input wire WE,
    output wire DONE
);
    wire copy_done;
    assign copy_done = copy_addr_offset == 32;
    wire send_done;
    assign send_done = send_addr_offset == 32;
    reg [2:0] memory_mode_state;
    reg [2:0] memory_mode_next;
    always @(posedge ACLK) begin
        if(ARESET) begin
            memory_mode_state <= 0;
        end else begin
            memory_mode_state <= memory_mode_next;
        end
    end
    assign COPY_FROM_HOST_DONE = memory_mode_state == 2;
    assign SEND_TO_HOST_DONE = memory_mode_state == 4;
    always @(*) begin
        case (memory_mode_state)
            0 : begin
                if(COPY_FROM_HOST) begin
                    memory_mode_next = 1;
                end else memory_mode_next = 0;
            end
            1 : begin
                if(copy_done) begin
                    memory_mode_next = 2;
                end else memory_mode_next = 1;
            end
            2 : begin
                if(SEND_TO_HOST) begin
                    memory_mode_next = 3;
                end else memory_mode_next = 2;
            end
            3 : begin
                if(send_done) begin
                    memory_mode_next = 4;
                end else memory_mode_next = 3;
            end
            4 : begin
                if(ARESET) begin
                    memory_mode_next = 0;
                end else memory_mode_next = 4;
            end
            default : begin
                memory_mode_next = 0;
            end
        endcase
    end
    reg [3:0] read_txn_count;
    always @(posedge ACLK) begin
        if(ARESET) begin
            read_txn_count <= 0;
        end else if(RVALID & RREADY) begin
            read_txn_count <= read_txn_count + 1;
        end
    end
    wire [4:0] bram_addr;
    wire [31:0] bram_write_data;
    wire bram_we;
    wire [31:0] bram_read_data;
    wire bram_done;
    SINGLE_PORT_BRAM bram (
        .ACLK(ACLK),
        .ADDR(bram_addr),
        .Din(bram_write_data),
        .Done(bram_done),
        .Dout(bram_read_data),
        .WE(bram_we)
    );
    assign DONE = bram_done;
    assign bram_addr = RVALID & RREADY && memory_mode_state == 1 ? copy_addr_offset[4:0] :
     memory_mode_state == 2 ? ADDR :
     memory_mode_state == 3 ? send_addr_offset[4:0] : 0;
    assign bram_we = RVALID & RREADY && memory_mode_state == 1 ? 1 :
     memory_mode_state == 2 ? WE : 0;
    assign bram_write_data = RVALID & RREADY && memory_mode_state == 1 ? RDATA[read_txn_count * 32 +: 32] :
     memory_mode_state == 2 ? WRITE_DATA : 0;
    assign READ_DATA = bram_read_data;
    reg [1:0] rstate;
    reg [1:0] rnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            rstate <= 0;
        end else begin
            rstate <= rnext;
        end
    end
    assign ARVALID = rstate == 1;
    assign RREADY = rstate == 2;
    always @(*) begin
        case (rstate)
            0 : begin
                if(memory_mode_next == 1) begin
                    rnext = 1;
                end else rnext = 0;
            end
            1 : begin
                if(ARREADY) begin
                    rnext = 2;
                end else rnext = 1;
            end
            2 : begin
                if(RVALID) begin
                    rnext = 0;
                end else rnext = 2;
            end
            default : begin
                rnext = 0;
            end
        endcase
    end
    reg [5:0] copy_addr_offset;
    always @(posedge ACLK) begin
        if(memory_mode_state == 1) begin
            if(RVALID & RREADY) begin
                copy_addr_offset <= copy_addr_offset + 1;
            end else copy_addr_offset <= copy_addr_offset;
        end else copy_addr_offset <= 0;
    end
    assign ARID = 0;
    assign ARADDR = BASE_ADDRESS + {{58{1'b0}}, copy_addr_offset} << 2;
    assign ARLEN = 0;
    assign ARSIZE = 2;
    reg [1:0] wstate;
    reg [1:0] wnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            wstate <= 0;
        end else begin
            wstate <= wnext;
        end
    end
    assign AWVALID = wstate == 1;
    assign WVALID = wstate == 2;
    assign BREADY = wstate == 3;
    always @(*) begin
        case (wstate)
            0 : begin
                if(memory_mode_next == 3) begin
                    wnext = 1;
                end else wnext = 0;
            end
            1 : begin
                if(AWREADY) begin
                    wnext = 2;
                end else wnext = 1;
            end
            2 : begin
                if(WREADY) begin
                    wnext = 3;
                end else wnext = 2;
            end
            3 : begin
                if(BVALID) begin
                    wnext = 0;
                end else wnext = 3;
            end
            default : begin
                wnext = 0;
            end
        endcase
    end
    reg [5:0] send_addr_offset;
    always @(posedge ACLK) begin
        if(memory_mode_state == 3) begin
            if(BVALID & BREADY) begin
                send_addr_offset <= send_addr_offset + 1;
            end else send_addr_offset <= send_addr_offset;
        end else send_addr_offset <= 0;
    end
    assign AWID = 0;
    assign AWADDR = BASE_ADDRESS + {{58{1'b0}}, send_addr_offset} << 2;
    assign AWLEN = 0;
    assign AWSIZE = 2;
    assign WID = 0;
    assign WDATA = {{15{bram_read_data}}, bram_read_data};
    assign WSTRB = {{15{4'hF}}, 4'hF};
    assign WLAST = 1;
endmodule

module Memory_controller_axi_1 (
    input wire ACLK,
    input wire ARESET,
    input wire ARREADY,
    output wire ARVALID,
    output wire [7:0] ARID,
    output wire [63:0] ARADDR,
    output wire [7:0] ARLEN,
    output wire [2:0] ARSIZE,
    input wire RVALID,
    output wire RREADY,
    input wire [7:0] RID,
    input wire [511:0] RDATA,
    input wire [1:0] RRESP,
    input wire RLAST,
    input wire AWREADY,
    output wire AWVALID,
    output wire [7:0] AWID,
    output wire [63:0] AWADDR,
    output wire [7:0] AWLEN,
    output wire [2:0] AWSIZE,
    input wire WREADY,
    output wire WVALID,
    output wire [7:0] WID,
    output wire [511:0] WDATA,
    output wire [63:0] WSTRB,
    output wire WLAST,
    input wire BVALID,
    output wire BREADY,
    input wire [7:0] BID,
    input wire [1:0] BRESP,
    input wire [63:0] BASE_ADDRESS,
    input wire COPY_FROM_HOST,
    output wire COPY_FROM_HOST_DONE,
    input wire SEND_TO_HOST,
    output wire SEND_TO_HOST_DONE,
    input wire [31:0] WRITE_DATA,
    output wire [31:0] READ_DATA,
    input wire [4:0] ADDR,
    input wire WE,
    output wire DONE
);
    wire copy_done;
    assign copy_done = copy_addr_offset == 32;
    wire send_done;
    assign send_done = send_addr_offset == 32;
    reg [2:0] memory_mode_state;
    reg [2:0] memory_mode_next;
    always @(posedge ACLK) begin
        if(ARESET) begin
            memory_mode_state <= 0;
        end else begin
            memory_mode_state <= memory_mode_next;
        end
    end
    assign COPY_FROM_HOST_DONE = memory_mode_state == 2;
    assign SEND_TO_HOST_DONE = memory_mode_state == 4;
    always @(*) begin
        case (memory_mode_state)
            0 : begin
                if(COPY_FROM_HOST) begin
                    memory_mode_next = 1;
                end else memory_mode_next = 0;
            end
            1 : begin
                if(copy_done) begin
                    memory_mode_next = 2;
                end else memory_mode_next = 1;
            end
            2 : begin
                if(SEND_TO_HOST) begin
                    memory_mode_next = 3;
                end else memory_mode_next = 2;
            end
            3 : begin
                if(send_done) begin
                    memory_mode_next = 4;
                end else memory_mode_next = 3;
            end
            4 : begin
                if(ARESET) begin
                    memory_mode_next = 0;
                end else memory_mode_next = 4;
            end
            default : begin
                memory_mode_next = 0;
            end
        endcase
    end
    reg [3:0] read_txn_count;
    always @(posedge ACLK) begin
        if(ARESET) begin
            read_txn_count <= 0;
        end else if(RVALID & RREADY) begin
            read_txn_count <= read_txn_count + 1;
        end
    end
    wire [4:0] bram_addr;
    wire [31:0] bram_write_data;
    wire bram_we;
    wire [31:0] bram_read_data;
    wire bram_done;
    SINGLE_PORT_BRAM bram (
        .ACLK(ACLK),
        .ADDR(bram_addr),
        .Din(bram_write_data),
        .Done(bram_done),
        .Dout(bram_read_data),
        .WE(bram_we)
    );
    assign DONE = bram_done;
    assign bram_addr = RVALID & RREADY && memory_mode_state == 1 ? copy_addr_offset[4:0] :
     memory_mode_state == 2 ? ADDR :
     memory_mode_state == 3 ? send_addr_offset[4:0] : 0;
    assign bram_we = RVALID & RREADY && memory_mode_state == 1 ? 1 :
     memory_mode_state == 2 ? WE : 0;
    assign bram_write_data = RVALID & RREADY && memory_mode_state == 1 ? RDATA[read_txn_count * 32 +: 32] :
     memory_mode_state == 2 ? WRITE_DATA : 0;
    assign READ_DATA = bram_read_data;
    reg [1:0] rstate;
    reg [1:0] rnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            rstate <= 0;
        end else begin
            rstate <= rnext;
        end
    end
    assign ARVALID = rstate == 1;
    assign RREADY = rstate == 2;
    always @(*) begin
        case (rstate)
            0 : begin
                if(memory_mode_next == 1) begin
                    rnext = 1;
                end else rnext = 0;
            end
            1 : begin
                if(ARREADY) begin
                    rnext = 2;
                end else rnext = 1;
            end
            2 : begin
                if(RVALID) begin
                    rnext = 0;
                end else rnext = 2;
            end
            default : begin
                rnext = 0;
            end
        endcase
    end
    reg [5:0] copy_addr_offset;
    always @(posedge ACLK) begin
        if(memory_mode_state == 1) begin
            if(RVALID & RREADY) begin
                copy_addr_offset <= copy_addr_offset + 1;
            end else copy_addr_offset <= copy_addr_offset;
        end else copy_addr_offset <= 0;
    end
    assign ARID = 0;
    assign ARADDR = BASE_ADDRESS + {{58{1'b0}}, copy_addr_offset} << 2;
    assign ARLEN = 0;
    assign ARSIZE = 2;
    reg [1:0] wstate;
    reg [1:0] wnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            wstate <= 0;
        end else begin
            wstate <= wnext;
        end
    end
    assign AWVALID = wstate == 1;
    assign WVALID = wstate == 2;
    assign BREADY = wstate == 3;
    always @(*) begin
        case (wstate)
            0 : begin
                if(memory_mode_next == 3) begin
                    wnext = 1;
                end else wnext = 0;
            end
            1 : begin
                if(AWREADY) begin
                    wnext = 2;
                end else wnext = 1;
            end
            2 : begin
                if(WREADY) begin
                    wnext = 3;
                end else wnext = 2;
            end
            3 : begin
                if(BVALID) begin
                    wnext = 0;
                end else wnext = 3;
            end
            default : begin
                wnext = 0;
            end
        endcase
    end
    reg [5:0] send_addr_offset;
    always @(posedge ACLK) begin
        if(memory_mode_state == 3) begin
            if(BVALID & BREADY) begin
                send_addr_offset <= send_addr_offset + 1;
            end else send_addr_offset <= send_addr_offset;
        end else send_addr_offset <= 0;
    end
    assign AWID = 0;
    assign AWADDR = BASE_ADDRESS + {{58{1'b0}}, send_addr_offset} << 2;
    assign AWLEN = 0;
    assign AWSIZE = 2;
    assign WID = 0;
    assign WDATA = {{15{bram_read_data}}, bram_read_data};
    assign WSTRB = {{15{4'hF}}, 4'hF};
    assign WLAST = 1;
endmodule

module Memory_controller_axi_2 (
    input wire ACLK,
    input wire ARESET,
    input wire ARREADY,
    output wire ARVALID,
    output wire [7:0] ARID,
    output wire [63:0] ARADDR,
    output wire [7:0] ARLEN,
    output wire [2:0] ARSIZE,
    input wire RVALID,
    output wire RREADY,
    input wire [7:0] RID,
    input wire [511:0] RDATA,
    input wire [1:0] RRESP,
    input wire RLAST,
    input wire AWREADY,
    output wire AWVALID,
    output wire [7:0] AWID,
    output wire [63:0] AWADDR,
    output wire [7:0] AWLEN,
    output wire [2:0] AWSIZE,
    input wire WREADY,
    output wire WVALID,
    output wire [7:0] WID,
    output wire [511:0] WDATA,
    output wire [63:0] WSTRB,
    output wire WLAST,
    input wire BVALID,
    output wire BREADY,
    input wire [7:0] BID,
    input wire [1:0] BRESP,
    input wire [63:0] BASE_ADDRESS,
    input wire COPY_FROM_HOST,
    output wire COPY_FROM_HOST_DONE,
    input wire SEND_TO_HOST,
    output wire SEND_TO_HOST_DONE,
    input wire [31:0] WRITE_DATA,
    output wire [31:0] READ_DATA,
    input wire [4:0] ADDR,
    input wire WE,
    output wire DONE
);
    wire copy_done;
    assign copy_done = copy_addr_offset == 32;
    wire send_done;
    assign send_done = send_addr_offset == 32;
    reg [2:0] memory_mode_state;
    reg [2:0] memory_mode_next;
    always @(posedge ACLK) begin
        if(ARESET) begin
            memory_mode_state <= 0;
        end else begin
            memory_mode_state <= memory_mode_next;
        end
    end
    assign COPY_FROM_HOST_DONE = memory_mode_state == 2;
    assign SEND_TO_HOST_DONE = memory_mode_state == 4;
    always @(*) begin
        case (memory_mode_state)
            0 : begin
                if(COPY_FROM_HOST) begin
                    memory_mode_next = 1;
                end else memory_mode_next = 0;
            end
            1 : begin
                if(copy_done) begin
                    memory_mode_next = 2;
                end else memory_mode_next = 1;
            end
            2 : begin
                if(SEND_TO_HOST) begin
                    memory_mode_next = 3;
                end else memory_mode_next = 2;
            end
            3 : begin
                if(send_done) begin
                    memory_mode_next = 4;
                end else memory_mode_next = 3;
            end
            4 : begin
                if(ARESET) begin
                    memory_mode_next = 0;
                end else memory_mode_next = 4;
            end
            default : begin
                memory_mode_next = 0;
            end
        endcase
    end
    reg [3:0] read_txn_count;
    always @(posedge ACLK) begin
        if(ARESET) begin
            read_txn_count <= 0;
        end else if(RVALID & RREADY) begin
            read_txn_count <= read_txn_count + 1;
        end
    end
    wire [4:0] bram_addr;
    wire [31:0] bram_write_data;
    wire bram_we;
    wire [31:0] bram_read_data;
    wire bram_done;
    SINGLE_PORT_BRAM bram (
        .ACLK(ACLK),
        .ADDR(bram_addr),
        .Din(bram_write_data),
        .Done(bram_done),
        .Dout(bram_read_data),
        .WE(bram_we)
    );
    assign DONE = bram_done;
    assign bram_addr = RVALID & RREADY && memory_mode_state == 1 ? copy_addr_offset[4:0] :
     memory_mode_state == 2 ? ADDR :
     memory_mode_state == 3 ? send_addr_offset[4:0] : 0;
    assign bram_we = RVALID & RREADY && memory_mode_state == 1 ? 1 :
     memory_mode_state == 2 ? WE : 0;
    assign bram_write_data = RVALID & RREADY && memory_mode_state == 1 ? RDATA[read_txn_count * 32 +: 32] :
     memory_mode_state == 2 ? WRITE_DATA : 0;
    assign READ_DATA = bram_read_data;
    reg [1:0] rstate;
    reg [1:0] rnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            rstate <= 0;
        end else begin
            rstate <= rnext;
        end
    end
    assign ARVALID = rstate == 1;
    assign RREADY = rstate == 2;
    always @(*) begin
        case (rstate)
            0 : begin
                if(memory_mode_next == 1) begin
                    rnext = 1;
                end else rnext = 0;
            end
            1 : begin
                if(ARREADY) begin
                    rnext = 2;
                end else rnext = 1;
            end
            2 : begin
                if(RVALID) begin
                    rnext = 0;
                end else rnext = 2;
            end
            default : begin
                rnext = 0;
            end
        endcase
    end
    reg [5:0] copy_addr_offset;
    always @(posedge ACLK) begin
        if(memory_mode_state == 1) begin
            if(RVALID & RREADY) begin
                copy_addr_offset <= copy_addr_offset + 1;
            end else copy_addr_offset <= copy_addr_offset;
        end else copy_addr_offset <= 0;
    end
    assign ARID = 0;
    assign ARADDR = BASE_ADDRESS + {{58{1'b0}}, copy_addr_offset} << 2;
    assign ARLEN = 0;
    assign ARSIZE = 2;
    reg [1:0] wstate;
    reg [1:0] wnext;
    always @(posedge ACLK) begin
        if(ARESET) begin
            wstate <= 0;
        end else begin
            wstate <= wnext;
        end
    end
    assign AWVALID = wstate == 1;
    assign WVALID = wstate == 2;
    assign BREADY = wstate == 3;
    always @(*) begin
        case (wstate)
            0 : begin
                if(memory_mode_next == 3) begin
                    wnext = 1;
                end else wnext = 0;
            end
            1 : begin
                if(AWREADY) begin
                    wnext = 2;
                end else wnext = 1;
            end
            2 : begin
                if(WREADY) begin
                    wnext = 3;
                end else wnext = 2;
            end
            3 : begin
                if(BVALID) begin
                    wnext = 0;
                end else wnext = 3;
            end
            default : begin
                wnext = 0;
            end
        endcase
    end
    reg [5:0] send_addr_offset;
    always @(posedge ACLK) begin
        if(memory_mode_state == 3) begin
            if(BVALID & BREADY) begin
                send_addr_offset <= send_addr_offset + 1;
            end else send_addr_offset <= send_addr_offset;
        end else send_addr_offset <= 0;
    end
    assign AWID = 0;
    assign AWADDR = BASE_ADDRESS + {{58{1'b0}}, send_addr_offset} << 2;
    assign AWLEN = 0;
    assign AWSIZE = 2;
    assign WID = 0;
    assign WDATA = {{15{bram_read_data}}, bram_read_data};
    assign WSTRB = {{15{4'hF}}, 4'hF};
    assign WLAST = 1;
endmodule
`default_nettype wire
<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="step_en" />
        <signal name="ack_n" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="AS_N" />
        <signal name="in_init" />
        <signal name="WR_N" />
        <signal name="stop_n" />
        <signal name="le" />
        <signal name="XLXN_26(31:0)" />
        <signal name="XLXN_27(31:0)" />
        <signal name="state(0)" />
        <signal name="state(1)" />
        <signal name="state(1:0)" />
        <signal name="XLXN_32(15:0)" />
        <signal name="XLXN_35" />
        <signal name="MAO(31:0)" />
        <signal name="DIN(31:0)" />
        <signal name="RDO(31:0)" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="state(1:0)" />
        <port polarity="Output" name="MAO(31:0)" />
        <port polarity="Input" name="DIN(31:0)" />
        <port polarity="Output" name="RDO(31:0)" />
        <blockdef name="ReadStateMac">
            <timestamp>2020-5-22T11:23:16</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2020-5-19T5:36:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="CNT16">
            <timestamp>2020-5-19T5:35:12</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="cnt16to32">
            <timestamp>2020-5-22T10:28:16</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="ReadStateMac" name="XLXI_1">
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="ack_n" name="ACK_N" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="WR_N" name="WR_N_out" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="state(1:0)" name="state_out(1:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="le" name="CE" />
            <blockpin signalname="DIN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="RDO(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="state(1)" name="I0" />
            <blockpin signalname="state(0)" name="I1" />
            <blockpin signalname="le" name="O" />
        </block>
        <block symbolname="CNT16" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="le" name="ce" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_32(15:0)" name="cnt_o(15:0)" />
        </block>
        <block symbolname="cnt16to32" name="XLXI_4">
            <blockpin signalname="XLXN_32(15:0)" name="cnt16_o(15:0)" />
            <blockpin signalname="MAO(31:0)" name="cnt32_o(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="640" y="432" name="XLXI_1" orien="R0">
        </instance>
        <instance x="640" y="832" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1376" y="640" name="XLXI_5" orien="R0" />
        <branch name="step_en">
            <wire x2="352" y1="192" y2="192" x1="208" />
        </branch>
        <branch name="ack_n">
            <wire x2="352" y1="256" y2="256" x1="208" />
        </branch>
        <branch name="clk">
            <wire x2="352" y1="144" y2="144" x1="192" />
        </branch>
        <branch name="reset">
            <wire x2="352" y1="336" y2="336" x1="192" />
        </branch>
        <iomarker fontsize="28" x="208" y="192" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="208" y="256" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="192" y="144" name="clk" orien="R180" />
        <iomarker fontsize="28" x="192" y="336" name="reset" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="384" type="branch" />
            <wire x2="640" y1="384" y2="384" x1="528" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="144" type="branch" />
            <wire x2="640" y1="144" y2="144" x1="528" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="224" type="branch" />
            <wire x2="640" y1="224" y2="224" x1="528" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="304" type="branch" />
            <wire x2="640" y1="304" y2="304" x1="528" />
        </branch>
        <branch name="AS_N">
            <wire x2="1104" y1="144" y2="144" x1="1024" />
        </branch>
        <branch name="in_init">
            <wire x2="1104" y1="208" y2="208" x1="1024" />
        </branch>
        <branch name="WR_N">
            <wire x2="1104" y1="272" y2="272" x1="1024" />
        </branch>
        <branch name="stop_n">
            <wire x2="1104" y1="336" y2="336" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1104" y="144" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="1104" y="208" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="1104" y="272" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="1104" y="336" name="stop_n" orien="R0" />
        <instance x="1424" y="288" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1856" y="160" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="128" type="branch" />
            <wire x2="1424" y1="128" y2="128" x1="1344" />
        </branch>
        <branch name="le">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="192" type="branch" />
            <wire x2="1424" y1="192" y2="192" x1="1344" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="256" type="branch" />
            <wire x2="1424" y1="256" y2="256" x1="1344" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="672" type="branch" />
            <wire x2="640" y1="672" y2="672" x1="592" />
        </branch>
        <branch name="le">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="736" type="branch" />
            <wire x2="640" y1="736" y2="736" x1="592" />
        </branch>
        <branch name="state(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="512" type="branch" />
            <wire x2="1376" y1="512" y2="512" x1="1312" />
        </branch>
        <branch name="state(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="576" type="branch" />
            <wire x2="1376" y1="576" y2="576" x1="1312" />
        </branch>
        <branch name="state(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="400" type="branch" />
            <wire x2="1088" y1="400" y2="400" x1="1024" />
        </branch>
        <branch name="XLXN_32(15:0)">
            <wire x2="1856" y1="128" y2="128" x1="1808" />
        </branch>
        <branch name="le">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="544" type="branch" />
            <wire x2="1664" y1="544" y2="544" x1="1632" />
        </branch>
        <branch name="MAO(31:0)">
            <wire x2="2304" y1="128" y2="128" x1="2288" />
            <wire x2="2400" y1="128" y2="128" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2400" y="128" name="MAO(31:0)" orien="R0" />
        <branch name="DIN(31:0)">
            <wire x2="352" y1="672" y2="672" x1="272" />
            <wire x2="368" y1="672" y2="672" x1="352" />
            <wire x2="368" y1="672" y2="800" x1="368" />
            <wire x2="592" y1="800" y2="800" x1="368" />
            <wire x2="640" y1="800" y2="800" x1="592" />
        </branch>
        <branch name="RDO(31:0)">
            <wire x2="1072" y1="672" y2="672" x1="1024" />
            <wire x2="1296" y1="672" y2="672" x1="1072" />
            <wire x2="1376" y1="672" y2="672" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="272" y="672" name="DIN(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1376" y="672" name="RDO(31:0)" orien="R0" />
        <branch name="state(1:0)">
            <wire x2="1936" y1="544" y2="544" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1936" y="544" name="state(1:0)" orien="R0" />
    </sheet>
</drawing>
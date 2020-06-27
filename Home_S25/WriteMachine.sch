<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="step_en" />
        <signal name="ack_n" />
        <signal name="AS_N" />
        <signal name="in_init" />
        <signal name="WR_N" />
        <signal name="stop_n" />
        <signal name="reset" />
        <signal name="MDO(31:0)" />
        <signal name="aoce" />
        <signal name="XLXN_33(15:0)" />
        <signal name="MAO(31:0)" />
        <signal name="state(0)" />
        <signal name="state(1)" />
        <signal name="state(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="MDO(31:0)" />
        <port polarity="Output" name="MAO(31:0)" />
        <port polarity="Output" name="state(1:0)" />
        <blockdef name="CNT16">
            <timestamp>2020-5-19T5:35:12</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="WriteStateMac">
            <timestamp>2020-5-22T11:3:38</timestamp>
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
        <blockdef name="IDNUM32">
            <timestamp>2020-5-22T10:20:22</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="WriteStateMac" name="XLXI_4">
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
        <block symbolname="CNT16" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="aoce" name="ce" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_33(15:0)" name="cnt_o(15:0)" />
        </block>
        <block symbolname="IDNUM32" name="XLXI_8">
            <blockpin signalname="MDO(31:0)" name="ID(31:0)" />
        </block>
        <block symbolname="cnt16to32" name="XLXI_9">
            <blockpin signalname="XLXN_33(15:0)" name="cnt16_o(15:0)" />
            <blockpin signalname="MAO(31:0)" name="cnt32_o(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="state(1)" name="I0" />
            <blockpin signalname="state(0)" name="I1" />
            <blockpin signalname="aoce" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="step_en">
            <wire x2="384" y1="208" y2="208" x1="240" />
        </branch>
        <branch name="ack_n">
            <wire x2="384" y1="272" y2="272" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="208" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="240" y="272" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="224" y="160" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="384" y1="160" y2="160" x1="224" />
        </branch>
        <instance x="800" y="592" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="544" type="branch" />
            <wire x2="800" y1="544" y2="544" x1="720" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="304" type="branch" />
            <wire x2="800" y1="304" y2="304" x1="688" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="384" type="branch" />
            <wire x2="800" y1="384" y2="384" x1="688" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="464" type="branch" />
            <wire x2="800" y1="464" y2="464" x1="688" />
        </branch>
        <instance x="1616" y="544" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="384" type="branch" />
            <wire x2="1616" y1="384" y2="384" x1="1536" />
        </branch>
        <branch name="aoce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="448" type="branch" />
            <wire x2="1616" y1="448" y2="448" x1="1552" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="512" type="branch" />
            <wire x2="1616" y1="512" y2="512" x1="1536" />
        </branch>
        <branch name="AS_N">
            <wire x2="1264" y1="304" y2="304" x1="1184" />
        </branch>
        <branch name="in_init">
            <wire x2="1264" y1="368" y2="368" x1="1184" />
        </branch>
        <branch name="WR_N">
            <wire x2="1264" y1="432" y2="432" x1="1184" />
        </branch>
        <branch name="stop_n">
            <wire x2="1264" y1="496" y2="496" x1="1184" />
        </branch>
        <branch name="reset">
            <wire x2="384" y1="352" y2="352" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="352" name="reset" orien="R180" />
        <branch name="MDO(31:0)">
            <wire x2="2288" y1="736" y2="736" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2288" y="736" name="MDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1264" y="304" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="1264" y="368" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="1264" y="432" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="1264" y="496" name="stop_n" orien="R0" />
        <instance x="272" y="720" name="XLXI_8" orien="R0">
        </instance>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="688" type="branch" />
            <wire x2="752" y1="688" y2="688" x1="656" />
        </branch>
        <branch name="XLXN_33(15:0)">
            <wire x2="2080" y1="384" y2="384" x1="2000" />
        </branch>
        <instance x="2080" y="416" name="XLXI_9" orien="R0">
        </instance>
        <branch name="MAO(31:0)">
            <wire x2="2752" y1="384" y2="384" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2752" y="384" name="MAO(31:0)" orien="R0" />
        <instance x="1264" y="976" name="XLXI_10" orien="R0" />
        <branch name="state(1:0)">
            <wire x2="2320" y1="624" y2="624" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2320" y="624" name="state(1:0)" orien="R0" />
        <branch name="state(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="560" type="branch" />
            <wire x2="1280" y1="560" y2="560" x1="1184" />
        </branch>
        <branch name="state(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="848" type="branch" />
            <wire x2="1264" y1="848" y2="848" x1="1216" />
        </branch>
        <branch name="state(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="912" type="branch" />
            <wire x2="1264" y1="912" y2="912" x1="1216" />
        </branch>
        <branch name="aoce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="880" type="branch" />
            <wire x2="1584" y1="880" y2="880" x1="1520" />
        </branch>
    </sheet>
</drawing>
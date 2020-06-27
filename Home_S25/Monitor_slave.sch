<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="AI(9:0)" />
        <signal name="CARDSEL" />
        <signal name="WR_N" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="C(31:0)" />
        <signal name="D(31:0)" />
        <signal name="SDO(31:0)" />
        <signal name="SACK_N" />
        <signal name="reg_addr(4:0)" />
        <signal name="AI(6:5)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Input" name="CARDSEL" />
        <port polarity="Input" name="WR_N" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="D(31:0)" />
        <port polarity="Output" name="SDO(31:0)" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Output" name="reg_addr(4:0)" />
        <blockdef name="MUX4_32bit">
            <timestamp>2015-7-12T12:4:22</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="Slave_control">
            <timestamp>2020-4-23T16:52:42</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <block symbolname="MUX4_32bit" name="XLXI_1">
            <blockpin signalname="A(31:0)" name="A0(31:0)" />
            <blockpin signalname="B(31:0)" name="A1(31:0)" />
            <blockpin signalname="C(31:0)" name="A2(31:0)" />
            <blockpin signalname="D(31:0)" name="A3(31:0)" />
            <blockpin signalname="AI(6:5)" name="sel(1:0)" />
            <blockpin signalname="SDO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="Slave_control" name="XLXI_2">
            <blockpin signalname="CARDSEL" name="CARDSEL" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="reg_addr(4:0)" name="req_addr(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="640" y1="208" y2="208" x1="416" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="640" y1="336" y2="336" x1="400" />
        </branch>
        <branch name="CARDSEL">
            <wire x2="640" y1="448" y2="448" x1="416" />
        </branch>
        <branch name="WR_N">
            <wire x2="640" y1="528" y2="528" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="208" name="clk" orien="R180" />
        <iomarker fontsize="28" x="400" y="336" name="AI(9:0)" orien="R180" />
        <iomarker fontsize="28" x="416" y="448" name="CARDSEL" orien="R180" />
        <iomarker fontsize="28" x="416" y="528" name="WR_N" orien="R180" />
        <instance x="1456" y="1312" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CARDSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1088" type="branch" />
            <wire x2="1456" y1="1088" y2="1088" x1="1328" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1152" type="branch" />
            <wire x2="1456" y1="1152" y2="1152" x1="1344" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1216" type="branch" />
            <wire x2="1456" y1="1216" y2="1216" x1="1312" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1280" type="branch" />
            <wire x2="1456" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="624" y1="688" y2="688" x1="384" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="624" y1="832" y2="832" x1="384" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="624" y1="960" y2="960" x1="368" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="640" y1="1088" y2="1088" x1="368" />
        </branch>
        <iomarker fontsize="28" x="384" y="688" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="832" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="960" name="C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="1088" name="D(31:0)" orien="R180" />
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="400" type="branch" />
            <wire x2="1440" y1="400" y2="400" x1="1168" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="464" type="branch" />
            <wire x2="1440" y1="464" y2="464" x1="1168" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="528" type="branch" />
            <wire x2="1440" y1="528" y2="528" x1="1152" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="592" type="branch" />
            <wire x2="1440" y1="592" y2="592" x1="1120" />
        </branch>
        <branch name="SDO(31:0)">
            <wire x2="1984" y1="400" y2="400" x1="1824" />
        </branch>
        <branch name="SACK_N">
            <wire x2="1856" y1="1088" y2="1088" x1="1840" />
            <wire x2="2064" y1="1088" y2="1088" x1="1856" />
        </branch>
        <branch name="reg_addr(4:0)">
            <wire x2="1856" y1="1344" y2="1344" x1="1840" />
            <wire x2="2016" y1="1344" y2="1344" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1984" y="400" name="SDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2064" y="1088" name="SACK_N" orien="R0" />
        <iomarker fontsize="28" x="2016" y="1344" name="reg_addr(4:0)" orien="R0" />
        <instance x="1440" y="688" name="XLXI_1" orien="R0">
        </instance>
        <branch name="AI(6:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="656" type="branch" />
            <wire x2="1440" y1="656" y2="656" x1="1184" />
        </branch>
    </sheet>
</drawing>
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
        <signal name="C(31:0)" />
        <signal name="Monitored(31:0)" />
        <signal name="D(31:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="Y(31:0)" />
        <signal name="AI(4:0)" />
        <signal name="stop_n" />
        <signal name="XLXN_22(31:0)" />
        <signal name="Y(4:0)" />
        <signal name="Y(15:8)" />
        <signal name="SDO(31:0)" />
        <signal name="reg_addr(4:0)" />
        <signal name="SACK_N" />
        <signal name="step_en" />
        <signal name="XLXN_37" />
        <signal name="in_init" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Input" name="CARDSEL" />
        <port polarity="Input" name="WR_N" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="Monitored(31:0)" />
        <port polarity="Input" name="D(31:0)" />
        <port polarity="Input" name="stop_n" />
        <port polarity="Output" name="SDO(31:0)" />
        <port polarity="Output" name="reg_addr(4:0)" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="in_init" />
        <blockdef name="Logic_anaylzer">
            <timestamp>2020-5-8T14:4:39</timestamp>
            <rect width="384" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-364" height="24" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="Monitor_slave">
            <timestamp>2020-5-8T14:4:17</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ID_NUM">
            <timestamp>2020-4-23T15:19:3</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Logic_anaylzer" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="AI(4:0)" name="AI(4:0)" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="Monitored(31:0)" name="Monitored_DATA(31:0)" />
            <blockpin signalname="Y(4:0)" name="STATUS(4:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="Monitor_slave" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="CARDSEL" name="CARDSEL" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="XLXN_13(31:0)" name="A(31:0)" />
            <blockpin signalname="Y(31:0)" name="B(31:0)" />
            <blockpin signalname="C(31:0)" name="C(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="SDO(31:0)" name="SDO(31:0)" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="reg_addr(4:0)" name="reg_addr(4:0)" />
        </block>
        <block symbolname="ID_NUM" name="XLXI_3">
            <blockpin signalname="Y(15:8)" name="ID(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2576" y="1792" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1328" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="592" y1="704" y2="704" x1="288" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="576" y1="816" y2="816" x1="288" />
        </branch>
        <branch name="CARDSEL">
            <wire x2="592" y1="960" y2="960" x1="288" />
        </branch>
        <branch name="WR_N">
            <wire x2="576" y1="1088" y2="1088" x1="288" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="576" y1="1216" y2="1216" x1="304" />
        </branch>
        <branch name="Monitored(31:0)">
            <wire x2="560" y1="1392" y2="1392" x1="304" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="560" y1="1280" y2="1280" x1="304" />
        </branch>
        <iomarker fontsize="28" x="288" y="704" name="clk" orien="R180" />
        <iomarker fontsize="28" x="288" y="816" name="AI(9:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="960" name="CARDSEL" orien="R180" />
        <iomarker fontsize="28" x="288" y="1088" name="WR_N" orien="R180" />
        <iomarker fontsize="28" x="304" y="1216" name="C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="1280" name="D(31:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="1392" name="Monitored(31:0)" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="816" type="branch" />
            <wire x2="1328" y1="816" y2="816" x1="1216" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1312" type="branch" />
            <wire x2="2576" y1="1312" y2="1312" x1="2384" />
        </branch>
        <instance x="1200" y="1472" name="XLXI_3" orien="R0">
        </instance>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1376" type="branch" />
            <wire x2="2576" y1="1376" y2="1376" x1="2400" />
        </branch>
        <branch name="CARDSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1440" type="branch" />
            <wire x2="2576" y1="1440" y2="1440" x1="2384" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1504" type="branch" />
            <wire x2="2576" y1="1504" y2="1504" x1="2384" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="2112" y1="1136" y2="1136" x1="1840" />
            <wire x2="2112" y1="1136" y2="1568" x1="2112" />
            <wire x2="2576" y1="1568" y2="1568" x1="2112" />
        </branch>
        <branch name="Y(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1632" type="branch" />
            <wire x2="2576" y1="1632" y2="1632" x1="2384" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1696" type="branch" />
            <wire x2="2576" y1="1696" y2="1696" x1="2384" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1760" type="branch" />
            <wire x2="2576" y1="1760" y2="1760" x1="2384" />
        </branch>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="880" type="branch" />
            <wire x2="1328" y1="880" y2="880" x1="1184" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="944" type="branch" />
            <wire x2="1328" y1="944" y2="944" x1="1152" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1008" type="branch" />
            <wire x2="1328" y1="1008" y2="1008" x1="1136" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1072" type="branch" />
            <wire x2="1328" y1="1072" y2="1072" x1="1136" />
        </branch>
        <branch name="Monitored(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1136" type="branch" />
            <wire x2="1328" y1="1136" y2="1136" x1="1120" />
        </branch>
        <branch name="Y(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="816" type="branch" />
            <wire x2="2048" y1="816" y2="816" x1="1840" />
        </branch>
        <branch name="Y(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1440" type="branch" />
            <wire x2="1760" y1="1440" y2="1440" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1312" name="SDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1760" name="reg_addr(4:0)" orien="R0" />
        <branch name="SDO(31:0)">
            <wire x2="3136" y1="1312" y2="1312" x1="2960" />
        </branch>
        <branch name="reg_addr(4:0)">
            <wire x2="3200" y1="1760" y2="1760" x1="2960" />
        </branch>
        <branch name="SACK_N">
            <wire x2="3216" y1="1536" y2="1536" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3216" y="1536" name="SACK_N" orien="R0" />
        <branch name="step_en">
            <wire x2="528" y1="1488" y2="1488" x1="288" />
        </branch>
        <branch name="stop_n">
            <wire x2="576" y1="1584" y2="1584" x1="272" />
        </branch>
        <branch name="in_init">
            <wire x2="560" y1="1680" y2="1680" x1="272" />
        </branch>
        <iomarker fontsize="28" x="288" y="1488" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="272" y="1584" name="stop_n" orien="R180" />
        <iomarker fontsize="28" x="272" y="1680" name="in_init" orien="R180" />
    </sheet>
</drawing>
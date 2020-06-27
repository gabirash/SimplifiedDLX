<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="reset" />
        <signal name="clk" />
        <signal name="step_en" />
        <signal name="ack_n" />
        <signal name="aeqz" />
        <signal name="inst(31:26)" />
        <signal name="inst(5:0)" />
        <signal name="mw" />
        <signal name="WR_N" />
        <signal name="busy" />
        <signal name="mr" />
        <signal name="Asel" />
        <signal name="MDRsel" />
        <signal name="jlink" />
        <signal name="DINTsel" />
        <signal name="Ace" />
        <signal name="Cce" />
        <signal name="PCce" />
        <signal name="MARce" />
        <signal name="Bce" />
        <signal name="MDRce" />
        <signal name="GPR_WE" />
        <signal name="in_init" />
        <signal name="DLXs(4:0)" />
        <signal name="AS_N" />
        <signal name="stop_n" />
        <signal name="in_halt" />
        <signal name="shift" />
        <signal name="S1sel(1:0)" />
        <signal name="inst(31:0)" />
        <signal name="MAO(31:0)" />
        <signal name="D(31:0)" />
        <signal name="DO(31:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="S2sel(1:0)" />
        <signal name="MACs(1:0)" />
        <signal name="DI(31:0)" />
        <signal name="add" />
        <signal name="test" />
        <signal name="Itype" />
        <signal name="right" />
        <signal name="IRce" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Output" name="aeqz" />
        <port polarity="Output" name="mw" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="Asel" />
        <port polarity="Output" name="MDRsel" />
        <port polarity="Output" name="jlink" />
        <port polarity="Output" name="DINTsel" />
        <port polarity="Output" name="Ace" />
        <port polarity="Output" name="Cce" />
        <port polarity="Output" name="PCce" />
        <port polarity="Output" name="MARce" />
        <port polarity="Output" name="Bce" />
        <port polarity="Output" name="MDRce" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="DLXs(4:0)" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="in_halt" />
        <port polarity="Output" name="shift" />
        <port polarity="Output" name="S1sel(1:0)" />
        <port polarity="Output" name="MAO(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="S2sel(1:0)" />
        <port polarity="Output" name="MACs(1:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Output" name="add" />
        <port polarity="Output" name="test" />
        <port polarity="Output" name="Itype" />
        <port polarity="Output" name="right" />
        <port polarity="Output" name="IRce" />
        <blockdef name="DLXControlTop">
            <timestamp>2020-6-22T8:49:52</timestamp>
            <rect width="304" x="64" y="-1856" height="1856" />
            <line x2="0" y1="-1824" y2="-1824" x1="64" />
            <line x2="0" y1="-1536" y2="-1536" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-960" y2="-960" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-396" height="24" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-1824" y2="-1824" x1="368" />
            <line x2="432" y1="-1760" y2="-1760" x1="368" />
            <rect width="64" x="368" y="-1708" height="24" />
            <line x2="432" y1="-1696" y2="-1696" x1="368" />
            <line x2="432" y1="-1632" y2="-1632" x1="368" />
            <line x2="432" y1="-1568" y2="-1568" x1="368" />
            <line x2="432" y1="-1504" y2="-1504" x1="368" />
            <line x2="432" y1="-1440" y2="-1440" x1="368" />
            <line x2="432" y1="-1376" y2="-1376" x1="368" />
            <line x2="432" y1="-1312" y2="-1312" x1="368" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <rect width="64" x="368" y="-364" height="24" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="DLXDataPath">
            <timestamp>2020-6-23T13:10:29</timestamp>
            <rect width="256" x="64" y="-1472" height="1472" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <rect width="64" x="0" y="-1132" height="24" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <rect width="64" x="0" y="-1068" height="24" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-1452" height="24" />
            <line x2="384" y1="-1440" y2="-1440" x1="320" />
            <rect width="64" x="320" y="-1100" height="24" />
            <line x2="384" y1="-1088" y2="-1088" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <rect width="64" x="320" y="-396" height="24" />
            <line x2="384" y1="-384" y2="-384" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="DLXControlTop" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="aeqz" name="aeqz" />
            <blockpin signalname="inst(31:26)" name="opcode(5:0)" />
            <blockpin signalname="inst(5:0)" name="func(5:0)" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="MACs(1:0)" name="MACState(1:0)" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="Asel" name="Asel" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="DINTsel" name="DINTsel" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="Ace" name="Ace" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="MDRce" name="MDRce" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="in_halt" name="in_halt" />
            <blockpin signalname="DLXs(4:0)" name="DLXState(4:0)" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
        </block>
        <block symbolname="DLXDataPath" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="MDRce" name="MDRce" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="Asel" name="Asel" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="DINTsel" name="DINTsel" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="Ace" name="Ace" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="aeqz" name="AEQZ" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="inst(31:0)" name="Inst(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="336" y1="144" y2="144" x1="240" />
        </branch>
        <branch name="reset">
            <wire x2="320" y1="192" y2="192" x1="256" />
        </branch>
        <branch name="step_en">
            <wire x2="320" y1="240" y2="240" x1="240" />
        </branch>
        <branch name="ack_n">
            <wire x2="320" y1="288" y2="288" x1="240" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="320" y1="352" y2="352" x1="224" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="336" y1="432" y2="432" x1="240" />
        </branch>
        <branch name="in_init">
            <wire x2="3024" y1="352" y2="352" x1="2928" />
        </branch>
        <branch name="in_halt">
            <wire x2="3008" y1="400" y2="400" x1="2944" />
        </branch>
        <branch name="stop_n">
            <wire x2="3008" y1="560" y2="560" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="240" y="144" name="clk" orien="R180" />
        <iomarker fontsize="28" x="256" y="192" name="reset" orien="R180" />
        <iomarker fontsize="28" x="240" y="240" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="240" y="288" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="224" y="352" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="432" name="DI(31:0)" orien="R180" />
        <iomarker fontsize="28" x="3024" y="352" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="3008" y="400" name="in_halt" orien="R0" />
        <instance x="864" y="2192" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="368" type="branch" />
            <wire x2="864" y1="368" y2="368" x1="832" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="656" type="branch" />
            <wire x2="864" y1="656" y2="656" x1="800" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="944" type="branch" />
            <wire x2="864" y1="944" y2="944" x1="800" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1232" type="branch" />
            <wire x2="864" y1="1232" y2="1232" x1="784" />
        </branch>
        <branch name="aeqz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1520" type="branch" />
            <wire x2="864" y1="1520" y2="1520" x1="816" />
        </branch>
        <branch name="inst(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1808" type="branch" />
            <wire x2="864" y1="1808" y2="1808" x1="752" />
        </branch>
        <branch name="inst(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="2096" type="branch" />
            <wire x2="864" y1="2096" y2="2096" x1="768" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="368" type="branch" />
            <wire x2="1360" y1="368" y2="368" x1="1296" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="432" type="branch" />
            <wire x2="1360" y1="432" y2="432" x1="1296" />
        </branch>
        <branch name="MACs(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="496" type="branch" />
            <wire x2="1344" y1="496" y2="496" x1="1296" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="560" type="branch" />
            <wire x2="1360" y1="560" y2="560" x1="1296" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="624" type="branch" />
            <wire x2="1360" y1="624" y2="624" x1="1296" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="688" type="branch" />
            <wire x2="1456" y1="688" y2="688" x1="1296" />
            <wire x2="1664" y1="688" y2="688" x1="1456" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="752" type="branch" />
            <wire x2="1440" y1="752" y2="752" x1="1296" />
            <wire x2="1664" y1="752" y2="752" x1="1440" />
        </branch>
        <branch name="Itype">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="816" type="branch" />
            <wire x2="1440" y1="816" y2="816" x1="1296" />
            <wire x2="1664" y1="816" y2="816" x1="1440" />
        </branch>
        <branch name="right">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="944" type="branch" />
            <wire x2="1392" y1="944" y2="944" x1="1296" />
            <wire x2="1472" y1="944" y2="944" x1="1392" />
            <wire x2="1472" y1="944" y2="1008" x1="1472" />
            <wire x2="1664" y1="1008" y2="1008" x1="1472" />
        </branch>
        <branch name="Asel">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1008" type="branch" />
            <wire x2="1328" y1="1008" y2="1008" x1="1296" />
            <wire x2="1456" y1="1008" y2="1008" x1="1328" />
            <wire x2="1456" y1="1008" y2="1072" x1="1456" />
            <wire x2="1664" y1="1072" y2="1072" x1="1456" />
        </branch>
        <branch name="MDRsel">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1072" type="branch" />
            <wire x2="1360" y1="1072" y2="1072" x1="1296" />
            <wire x2="1440" y1="1072" y2="1072" x1="1360" />
            <wire x2="1440" y1="1072" y2="1136" x1="1440" />
            <wire x2="1664" y1="1136" y2="1136" x1="1440" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="880" type="branch" />
            <wire x2="1440" y1="880" y2="880" x1="1296" />
            <wire x2="1664" y1="880" y2="880" x1="1440" />
        </branch>
        <branch name="DINTsel">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1136" type="branch" />
            <wire x2="1328" y1="1136" y2="1136" x1="1296" />
            <wire x2="1424" y1="1136" y2="1136" x1="1328" />
            <wire x2="1424" y1="1136" y2="1200" x1="1424" />
            <wire x2="1664" y1="1200" y2="1200" x1="1424" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1200" type="branch" />
            <wire x2="1328" y1="1200" y2="1200" x1="1296" />
            <wire x2="1408" y1="1200" y2="1200" x1="1328" />
            <wire x2="1408" y1="1200" y2="1264" x1="1408" />
            <wire x2="1664" y1="1264" y2="1264" x1="1408" />
        </branch>
        <branch name="Ace">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1264" type="branch" />
            <wire x2="1312" y1="1264" y2="1264" x1="1296" />
            <wire x2="1392" y1="1264" y2="1264" x1="1312" />
            <wire x2="1392" y1="1264" y2="1328" x1="1392" />
            <wire x2="1664" y1="1328" y2="1328" x1="1392" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1392" type="branch" />
            <wire x2="1328" y1="1392" y2="1392" x1="1296" />
            <wire x2="1472" y1="1392" y2="1392" x1="1328" />
            <wire x2="1472" y1="1392" y2="1456" x1="1472" />
            <wire x2="1664" y1="1456" y2="1456" x1="1472" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1456" type="branch" />
            <wire x2="1360" y1="1456" y2="1456" x1="1296" />
        </branch>
        <branch name="MARce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1520" type="branch" />
            <wire x2="1360" y1="1520" y2="1520" x1="1296" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1328" type="branch" />
            <wire x2="1328" y1="1328" y2="1328" x1="1296" />
            <wire x2="1360" y1="1328" y2="1328" x1="1328" />
            <wire x2="1360" y1="1328" y2="1344" x1="1360" />
            <wire x2="1536" y1="1344" y2="1344" x1="1360" />
            <wire x2="1536" y1="1344" y2="1392" x1="1536" />
            <wire x2="1664" y1="1392" y2="1392" x1="1536" />
        </branch>
        <branch name="MDRce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1584" type="branch" />
            <wire x2="1344" y1="1584" y2="1584" x1="1296" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1648" type="branch" />
            <wire x2="1328" y1="1648" y2="1648" x1="1296" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1712" type="branch" />
            <wire x2="1360" y1="1712" y2="1712" x1="1296" />
        </branch>
        <branch name="DLXs(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1840" type="branch" />
            <wire x2="1360" y1="1840" y2="1840" x1="1296" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1904" type="branch" />
            <wire x2="1360" y1="1904" y2="1904" x1="1296" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1968" type="branch" />
            <wire x2="1360" y1="1968" y2="1968" x1="1296" />
        </branch>
        <branch name="in_halt">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1776" type="branch" />
            <wire x2="1360" y1="1776" y2="1776" x1="1296" />
        </branch>
        <branch name="shift">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2032" type="branch" />
            <wire x2="1344" y1="2032" y2="2032" x1="1296" />
        </branch>
        <branch name="S2sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="2096" type="branch" />
            <wire x2="1360" y1="2096" y2="2096" x1="1296" />
        </branch>
        <branch name="S1sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2160" type="branch" />
            <wire x2="1376" y1="2160" y2="2160" x1="1296" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1520" type="branch" />
            <wire x2="1664" y1="1520" y2="1520" x1="1584" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="240" type="branch" />
            <wire x2="1664" y1="240" y2="240" x1="1600" />
        </branch>
        <instance x="1664" y="1680" name="XLXI_3" orien="R0">
        </instance>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1648" type="branch" />
            <wire x2="2096" y1="1648" y2="1648" x1="2048" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1296" type="branch" />
            <wire x2="2128" y1="1296" y2="1296" x1="2048" />
        </branch>
        <branch name="aeqz">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="944" type="branch" />
            <wire x2="2112" y1="944" y2="944" x1="2048" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="592" type="branch" />
            <wire x2="2112" y1="592" y2="592" x1="2048" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="240" type="branch" />
            <wire x2="2112" y1="240" y2="240" x1="2048" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1648" type="branch" />
            <wire x2="1664" y1="1648" y2="1648" x1="1600" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1584" type="branch" />
            <wire x2="1664" y1="1584" y2="1584" x1="1600" />
        </branch>
        <branch name="shift">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="944" type="branch" />
            <wire x2="1664" y1="944" y2="944" x1="1600" />
        </branch>
        <branch name="S2sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="624" type="branch" />
            <wire x2="1664" y1="624" y2="624" x1="1584" />
        </branch>
        <branch name="S1sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="560" type="branch" />
            <wire x2="1664" y1="560" y2="560" x1="1600" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="496" type="branch" />
            <wire x2="1664" y1="496" y2="496" x1="1632" />
        </branch>
        <branch name="MDRce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="432" type="branch" />
            <wire x2="1664" y1="432" y2="432" x1="1600" />
        </branch>
        <branch name="MARce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="368" type="branch" />
            <wire x2="1664" y1="368" y2="368" x1="1600" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="304" type="branch" />
            <wire x2="1664" y1="304" y2="304" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="3008" y="560" name="stop_n" orien="R0" />
        <branch name="add">
            <wire x2="3024" y1="816" y2="816" x1="2944" />
        </branch>
        <branch name="test">
            <wire x2="3024" y1="880" y2="880" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3024" y="816" name="add" orien="R0" />
        <iomarker fontsize="28" x="3024" y="880" name="test" orien="R0" />
        <branch name="Itype">
            <wire x2="3024" y1="976" y2="976" x1="2944" />
        </branch>
        <branch name="jlink">
            <wire x2="3024" y1="1040" y2="1040" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3024" y="976" name="Itype" orien="R0" />
        <iomarker fontsize="28" x="3024" y="1040" name="jlink" orien="R0" />
        <branch name="shift">
            <wire x2="3024" y1="1120" y2="1120" x1="2944" />
        </branch>
        <branch name="right">
            <wire x2="3024" y1="1184" y2="1184" x1="2928" />
        </branch>
        <branch name="Asel">
            <wire x2="3024" y1="1280" y2="1280" x1="2944" />
        </branch>
        <branch name="MDRsel">
            <wire x2="3024" y1="1344" y2="1344" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1120" name="shift" orien="R0" />
        <iomarker fontsize="28" x="3024" y="1184" name="right" orien="R0" />
        <iomarker fontsize="28" x="3024" y="1280" name="Asel" orien="R0" />
        <iomarker fontsize="28" x="3024" y="1344" name="MDRsel" orien="R0" />
        <branch name="DINTsel">
            <wire x2="3040" y1="1440" y2="1440" x1="2960" />
        </branch>
        <branch name="IRce">
            <wire x2="3040" y1="1504" y2="1504" x1="2944" />
        </branch>
        <branch name="Ace">
            <wire x2="3040" y1="1600" y2="1600" x1="2960" />
        </branch>
        <branch name="Bce">
            <wire x2="3040" y1="1664" y2="1664" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1440" name="DINTsel" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1504" name="IRce" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1600" name="Ace" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1664" name="Bce" orien="R0" />
        <branch name="mr">
            <wire x2="3056" y1="64" y2="64" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3056" y="64" name="mr" orien="R0" />
        <branch name="mw">
            <wire x2="3056" y1="112" y2="112" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3056" y="112" name="mw" orien="R0" />
        <branch name="busy">
            <wire x2="3040" y1="160" y2="160" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3040" y="160" name="busy" orien="R0" />
        <branch name="MACs(1:0)">
            <wire x2="3008" y1="224" y2="224" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3008" y="224" name="MACs(1:0)" orien="R0" />
        <branch name="DLXs(4:0)">
            <wire x2="3008" y1="288" y2="288" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3008" y="288" name="DLXs(4:0)" orien="R0" />
        <branch name="AS_N">
            <wire x2="3008" y1="448" y2="448" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="3008" y="448" name="AS_N" orien="R0" />
        <branch name="WR_N">
            <wire x2="3008" y1="496" y2="496" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="3008" y="496" name="WR_N" orien="R0" />
        <branch name="DO(31:0)">
            <wire x2="3040" y1="624" y2="624" x1="2944" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="3024" y1="672" y2="672" x1="2960" />
        </branch>
        <branch name="MAO(31:0)">
            <wire x2="3024" y1="720" y2="720" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="3040" y="624" name="DO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3024" y="672" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3024" y="720" name="MAO(31:0)" orien="R0" />
        <branch name="Cce">
            <wire x2="3040" y1="1744" y2="1744" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1744" name="Cce" orien="R0" />
        <branch name="PCce">
            <wire x2="3056" y1="1840" y2="1840" x1="2960" />
        </branch>
        <branch name="MARce">
            <wire x2="3056" y1="1920" y2="1920" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1840" name="PCce" orien="R0" />
        <iomarker fontsize="28" x="3056" y="1920" name="MARce" orien="R0" />
        <branch name="MDRce">
            <wire x2="3072" y1="2016" y2="2016" x1="2976" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="3072" y1="2096" y2="2096" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3072" y="2016" name="MDRce" orien="R0" />
        <iomarker fontsize="28" x="3072" y="2096" name="GPR_WE" orien="R0" />
        <branch name="aeqz">
            <wire x2="3072" y1="2192" y2="2192" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3072" y="2192" name="aeqz" orien="R0" />
        <branch name="S1sel(1:0)">
            <wire x2="3088" y1="2272" y2="2272" x1="3008" />
        </branch>
        <branch name="S2sel(1:0)">
            <wire x2="3088" y1="2336" y2="2336" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="3088" y="2272" name="S1sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3088" y="2336" name="S2sel(1:0)" orien="R0" />
    </sheet>
</drawing>
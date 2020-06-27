<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset" />
        <signal name="step_en" />
        <signal name="ack_n" />
        <signal name="aeqz" />
        <signal name="opcode(5:0)" />
        <signal name="func(5:0)" />
        <signal name="mw" />
        <signal name="WR_N" />
        <signal name="MACState(1:0)" />
        <signal name="busy" />
        <signal name="mr" />
        <signal name="add" />
        <signal name="test" />
        <signal name="Itype" />
        <signal name="jlink" />
        <signal name="right" />
        <signal name="Asel" />
        <signal name="MDRsel" />
        <signal name="DINTsel" />
        <signal name="IRce" />
        <signal name="Ace" />
        <signal name="Bce" />
        <signal name="Cce" />
        <signal name="PCce" />
        <signal name="MARce" />
        <signal name="MDRce" />
        <signal name="GPR_WE" />
        <signal name="in_init" />
        <signal name="in_halt" />
        <signal name="DLXState(4:0)" />
        <signal name="AS_N" />
        <signal name="stop_n" />
        <signal name="shift" />
        <signal name="S2sel(1:0)" />
        <signal name="S1sel(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="aeqz" />
        <port polarity="Input" name="opcode(5:0)" />
        <port polarity="Input" name="func(5:0)" />
        <port polarity="Output" name="mw" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="MACState(1:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="add" />
        <port polarity="Output" name="test" />
        <port polarity="Output" name="Itype" />
        <port polarity="Output" name="jlink" />
        <port polarity="Output" name="right" />
        <port polarity="Output" name="Asel" />
        <port polarity="Output" name="MDRsel" />
        <port polarity="Output" name="DINTsel" />
        <port polarity="Output" name="IRce" />
        <port polarity="Output" name="Ace" />
        <port polarity="Output" name="Bce" />
        <port polarity="Output" name="Cce" />
        <port polarity="Output" name="PCce" />
        <port polarity="Output" name="MARce" />
        <port polarity="Output" name="MDRce" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="in_halt" />
        <port polarity="Output" name="DLXState(4:0)" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="shift" />
        <port polarity="Output" name="S2sel(1:0)" />
        <port polarity="Output" name="S1sel(1:0)" />
        <blockdef name="DLXCntrlState">
            <timestamp>2020-6-22T8:3:19</timestamp>
            <rect width="256" x="64" y="-1536" height="1536" />
            <line x2="0" y1="-1504" y2="-1504" x1="64" />
            <line x2="0" y1="-1264" y2="-1264" x1="64" />
            <line x2="0" y1="-1024" y2="-1024" x1="64" />
            <line x2="0" y1="-784" y2="-784" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-316" height="24" />
            <line x2="0" y1="-304" y2="-304" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-1504" y2="-1504" x1="320" />
            <line x2="384" y1="-1440" y2="-1440" x1="320" />
            <line x2="384" y1="-1376" y2="-1376" x1="320" />
            <line x2="384" y1="-1312" y2="-1312" x1="320" />
            <line x2="384" y1="-1248" y2="-1248" x1="320" />
            <line x2="384" y1="-1184" y2="-1184" x1="320" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MA_StateMac">
            <timestamp>2020-6-1T11:49:56</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="DLXCntrlState" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="aeqz" name="aeqz" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="func(5:0)" name="func(5:0)" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="mr" name="mr" />
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
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="MDRce" name="MDRce" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="in_halt" name="in_halt" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="DLXState(4:0)" name="state_o(4:0)" />
        </block>
        <block symbolname="MA_StateMac" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="MACState(1:0)" name="state_o(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1456" y="1744" name="XLXI_1" orien="R0">
        </instance>
        <instance x="640" y="1040" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="304" y1="144" y2="144" x1="224" />
        </branch>
        <branch name="reset">
            <wire x2="288" y1="192" y2="192" x1="224" />
        </branch>
        <branch name="step_en">
            <wire x2="304" y1="240" y2="240" x1="224" />
        </branch>
        <branch name="ack_n">
            <wire x2="320" y1="288" y2="288" x1="224" />
        </branch>
        <branch name="aeqz">
            <wire x2="304" y1="352" y2="352" x1="208" />
        </branch>
        <branch name="opcode(5:0)">
            <wire x2="304" y1="416" y2="416" x1="208" />
        </branch>
        <branch name="func(5:0)">
            <wire x2="304" y1="480" y2="480" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="144" name="clk" orien="R180" />
        <iomarker fontsize="28" x="224" y="192" name="reset" orien="R180" />
        <iomarker fontsize="28" x="224" y="240" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="224" y="288" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="208" y="352" name="aeqz" orien="R180" />
        <iomarker fontsize="28" x="208" y="416" name="opcode(5:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="480" name="func(5:0)" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="752" type="branch" />
            <wire x2="640" y1="752" y2="752" x1="592" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="816" type="branch" />
            <wire x2="640" y1="816" y2="816" x1="592" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="880" type="branch" />
            <wire x2="640" y1="880" y2="880" x1="592" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="944" type="branch" />
            <wire x2="640" y1="944" y2="944" x1="576" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1008" type="branch" />
            <wire x2="640" y1="1008" y2="1008" x1="576" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="752" type="branch" />
            <wire x2="1072" y1="752" y2="752" x1="1024" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="816" type="branch" />
            <wire x2="1072" y1="816" y2="816" x1="1024" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="944" type="branch" />
            <wire x2="1072" y1="944" y2="944" x1="1024" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="880" type="branch" />
            <wire x2="1072" y1="880" y2="880" x1="1024" />
        </branch>
        <branch name="MACState(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1008" type="branch" />
            <wire x2="1088" y1="1008" y2="1008" x1="1024" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="240" type="branch" />
            <wire x2="1456" y1="240" y2="240" x1="1424" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="480" type="branch" />
            <wire x2="1456" y1="480" y2="480" x1="1408" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="720" type="branch" />
            <wire x2="1456" y1="720" y2="720" x1="1408" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="960" type="branch" />
            <wire x2="1456" y1="960" y2="960" x1="1392" />
        </branch>
        <branch name="aeqz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1200" type="branch" />
            <wire x2="1360" y1="1200" y2="1200" x1="1344" />
            <wire x2="1456" y1="1200" y2="1200" x1="1360" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1440" type="branch" />
            <wire x2="1456" y1="1440" y2="1440" x1="1408" />
        </branch>
        <branch name="func(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1680" type="branch" />
            <wire x2="1456" y1="1680" y2="1680" x1="1392" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="240" type="branch" />
            <wire x2="1904" y1="240" y2="240" x1="1840" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="304" type="branch" />
            <wire x2="1888" y1="304" y2="304" x1="1840" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="368" type="branch" />
            <wire x2="1904" y1="368" y2="368" x1="1840" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="432" type="branch" />
            <wire x2="1888" y1="432" y2="432" x1="1840" />
        </branch>
        <branch name="Itype">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="496" type="branch" />
            <wire x2="1888" y1="496" y2="496" x1="1840" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="560" type="branch" />
            <wire x2="1904" y1="560" y2="560" x1="1840" />
        </branch>
        <branch name="shift">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="624" type="branch" />
            <wire x2="1904" y1="624" y2="624" x1="1840" />
        </branch>
        <branch name="right">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="688" type="branch" />
            <wire x2="1920" y1="688" y2="688" x1="1840" />
        </branch>
        <branch name="Asel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="752" type="branch" />
            <wire x2="1920" y1="752" y2="752" x1="1840" />
        </branch>
        <branch name="MDRsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="816" type="branch" />
            <wire x2="1904" y1="816" y2="816" x1="1840" />
        </branch>
        <branch name="DINTsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="880" type="branch" />
            <wire x2="1904" y1="880" y2="880" x1="1840" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="944" type="branch" />
            <wire x2="1920" y1="944" y2="944" x1="1840" />
        </branch>
        <branch name="Ace">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1008" type="branch" />
            <wire x2="1936" y1="1008" y2="1008" x1="1840" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1072" type="branch" />
            <wire x2="1936" y1="1072" y2="1072" x1="1840" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1136" type="branch" />
            <wire x2="1920" y1="1136" y2="1136" x1="1840" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1200" type="branch" />
            <wire x2="1920" y1="1200" y2="1200" x1="1840" />
        </branch>
        <branch name="MARce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1264" type="branch" />
            <wire x2="1936" y1="1264" y2="1264" x1="1840" />
        </branch>
        <branch name="MDRce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="1328" type="branch" />
            <wire x2="1920" y1="1328" y2="1328" x1="1840" />
            <wire x2="1968" y1="1328" y2="1328" x1="1920" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1392" type="branch" />
            <wire x2="1952" y1="1392" y2="1392" x1="1840" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1456" type="branch" />
            <wire x2="1936" y1="1456" y2="1456" x1="1840" />
        </branch>
        <branch name="in_halt">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1520" type="branch" />
            <wire x2="1920" y1="1520" y2="1520" x1="1840" />
        </branch>
        <branch name="S2sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1584" type="branch" />
            <wire x2="1920" y1="1584" y2="1584" x1="1840" />
        </branch>
        <branch name="S1sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1648" type="branch" />
            <wire x2="1920" y1="1648" y2="1648" x1="1840" />
        </branch>
        <branch name="DLXState(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1712" type="branch" />
            <wire x2="1920" y1="1712" y2="1712" x1="1840" />
        </branch>
        <branch name="AS_N">
            <wire x2="2688" y1="208" y2="208" x1="2576" />
        </branch>
        <branch name="WR_N">
            <wire x2="2688" y1="256" y2="256" x1="2576" />
        </branch>
        <branch name="stop_n">
            <wire x2="2688" y1="304" y2="304" x1="2576" />
        </branch>
        <branch name="MACState(1:0)">
            <wire x2="2688" y1="368" y2="368" x1="2576" />
        </branch>
        <branch name="add">
            <wire x2="2688" y1="416" y2="416" x1="2576" />
        </branch>
        <branch name="test">
            <wire x2="2688" y1="464" y2="464" x1="2576" />
        </branch>
        <branch name="Itype">
            <wire x2="2704" y1="544" y2="544" x1="2592" />
        </branch>
        <branch name="jlink">
            <wire x2="2704" y1="592" y2="592" x1="2592" />
        </branch>
        <branch name="shift">
            <wire x2="2704" y1="640" y2="640" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2688" y="208" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="2688" y="256" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="2688" y="304" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="2688" y="368" name="MACState(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2688" y="416" name="add" orien="R0" />
        <iomarker fontsize="28" x="2688" y="464" name="test" orien="R0" />
        <iomarker fontsize="28" x="2704" y="592" name="jlink" orien="R0" />
        <iomarker fontsize="28" x="2704" y="544" name="Itype" orien="R0" />
        <iomarker fontsize="28" x="2704" y="640" name="shift" orien="R0" />
        <branch name="right">
            <wire x2="2704" y1="720" y2="720" x1="2592" />
        </branch>
        <branch name="Asel">
            <wire x2="2704" y1="768" y2="768" x1="2592" />
        </branch>
        <branch name="MDRsel">
            <wire x2="2720" y1="848" y2="848" x1="2608" />
        </branch>
        <branch name="DINTsel">
            <wire x2="2720" y1="896" y2="896" x1="2608" />
        </branch>
        <branch name="IRce">
            <wire x2="2720" y1="944" y2="944" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2704" y="720" name="right" orien="R0" />
        <iomarker fontsize="28" x="2704" y="768" name="Asel" orien="R0" />
        <iomarker fontsize="28" x="2720" y="896" name="DINTsel" orien="R0" />
        <iomarker fontsize="28" x="2720" y="848" name="MDRsel" orien="R0" />
        <iomarker fontsize="28" x="2720" y="944" name="IRce" orien="R0" />
        <branch name="Ace">
            <wire x2="2720" y1="1024" y2="1024" x1="2608" />
        </branch>
        <branch name="Bce">
            <wire x2="2720" y1="1072" y2="1072" x1="2608" />
        </branch>
        <branch name="Cce">
            <wire x2="2736" y1="1152" y2="1152" x1="2624" />
        </branch>
        <branch name="PCce">
            <wire x2="2736" y1="1200" y2="1200" x1="2624" />
        </branch>
        <branch name="MARce">
            <wire x2="2736" y1="1248" y2="1248" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1024" name="Ace" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1072" name="Bce" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1200" name="PCce" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1152" name="Cce" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1248" name="MARce" orien="R0" />
        <branch name="MDRce">
            <wire x2="2720" y1="1376" y2="1376" x1="2608" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="2720" y1="1424" y2="1424" x1="2608" />
        </branch>
        <branch name="in_init">
            <wire x2="2720" y1="1472" y2="1472" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1424" name="GPR_WE" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1376" name="MDRce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1472" name="in_init" orien="R0" />
        <branch name="in_halt">
            <wire x2="2720" y1="1552" y2="1552" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1552" name="in_halt" orien="R0" />
        <branch name="S2sel(1:0)">
            <wire x2="2704" y1="1648" y2="1648" x1="2592" />
        </branch>
        <branch name="S1sel(1:0)">
            <wire x2="2704" y1="1696" y2="1696" x1="2592" />
        </branch>
        <branch name="DLXState(4:0)">
            <wire x2="2704" y1="1744" y2="1744" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1696" name="S1sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2704" y="1648" name="S2sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2704" y="1744" name="DLXState(4:0)" orien="R0" />
        <branch name="mr">
            <wire x2="2688" y1="1840" y2="1840" x1="2592" />
        </branch>
        <branch name="mw">
            <wire x2="2688" y1="1904" y2="1904" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1840" name="mr" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1904" name="mw" orien="R0" />
        <branch name="busy">
            <wire x2="2672" y1="1984" y2="1984" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2672" y="1984" name="busy" orien="R0" />
    </sheet>
</drawing>
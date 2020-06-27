<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="AI(4:0)" />
        <signal name="step_en" />
        <signal name="stop_n" />
        <signal name="XLXN_5(4:0)" />
        <signal name="XLXN_8(4:0)" />
        <signal name="LA_WE" />
        <signal name="STS_CE" />
        <signal name="in_init" />
        <signal name="STATUS(4:0)" />
        <signal name="Monitored_DATA(31:0)" />
        <signal name="DOUT(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="AI(4:0)" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="stop_n" />
        <port polarity="Input" name="in_init" />
        <port polarity="Output" name="STATUS(4:0)" />
        <port polarity="Input" name="Monitored_DATA(31:0)" />
        <port polarity="Output" name="DOUT(31:0)" />
        <blockdef name="MUX5BIT">
            <timestamp>2015-7-12T8:16:28</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="RAM32X32S">
            <timestamp>2015-7-12T12:4:4</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="CNT5">
            <timestamp>2020-5-8T11:44:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="REG5CE">
            <timestamp>2020-5-8T12:2:9</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="LA_control">
            <timestamp>2020-5-8T14:1:31</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MUX5BIT" name="XLXI_1">
            <blockpin signalname="LA_WE" name="sel" />
            <blockpin signalname="AI(4:0)" name="A0(4:0)" />
            <blockpin signalname="XLXN_8(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_5(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="LA_WE" name="WE" />
            <blockpin signalname="Monitored_DATA(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_5(4:0)" name="ADD(4:0)" />
            <blockpin signalname="DOUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="CNT5" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="LA_WE" name="ce" />
            <blockpin signalname="STS_CE" name="reset" />
            <blockpin signalname="XLXN_8(4:0)" name="cnt_o(4:0)" />
        </block>
        <block symbolname="REG5CE" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="STS_CE" name="CE" />
            <blockpin signalname="XLXN_8(4:0)" name="DIN(4:0)" />
            <blockpin signalname="STATUS(4:0)" name="DOUT(4:0)" />
        </block>
        <block symbolname="LA_control" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="LA_WE" name="LA_WE" />
            <blockpin signalname="STS_CE" name="STS_CE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="1824" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="608" y1="640" y2="640" x1="288" />
        </branch>
        <branch name="AI(4:0)">
            <wire x2="640" y1="768" y2="768" x1="288" />
        </branch>
        <branch name="step_en">
            <wire x2="640" y1="928" y2="928" x1="304" />
        </branch>
        <branch name="stop_n">
            <wire x2="640" y1="1088" y2="1088" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="640" name="clk" orien="R180" />
        <branch name="XLXN_5(4:0)">
            <wire x2="2256" y1="1136" y2="1136" x1="2016" />
            <wire x2="2464" y1="880" y2="880" x1="2256" />
            <wire x2="2256" y1="880" y2="1136" x1="2256" />
        </branch>
        <branch name="XLXN_8(4:0)">
            <wire x2="1344" y1="1664" y2="1664" x1="1056" />
            <wire x2="1632" y1="1264" y2="1264" x1="1344" />
            <wire x2="1344" y1="1264" y2="1648" x1="1344" />
            <wire x2="1344" y1="1648" y2="1664" x1="1344" />
            <wire x2="1824" y1="1648" y2="1648" x1="1344" />
            <wire x2="1824" y1="1648" y2="1808" x1="1824" />
            <wire x2="2320" y1="1808" y2="1808" x1="1824" />
        </branch>
        <instance x="1632" y="1296" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2464" y="912" name="XLXI_2" orien="R0">
        </instance>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1136" type="branch" />
            <wire x2="1632" y1="1136" y2="1136" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="288" y="768" name="AI(4:0)" orien="R180" />
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1200" type="branch" />
            <wire x2="1632" y1="1200" y2="1200" x1="1424" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2080" type="branch" />
            <wire x2="1200" y1="2080" y2="2080" x1="1024" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2144" type="branch" />
            <wire x2="1200" y1="2144" y2="2144" x1="1024" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2208" type="branch" />
            <wire x2="1200" y1="2208" y2="2208" x1="1024" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2272" type="branch" />
            <wire x2="1200" y1="2272" y2="2272" x1="1024" />
        </branch>
        <branch name="STS_CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2272" type="branch" />
            <wire x2="1840" y1="2272" y2="2272" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="304" y="928" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="288" y="1088" name="stop_n" orien="R180" />
        <branch name="in_init">
            <wire x2="640" y1="1200" y2="1200" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1200" name="in_init" orien="R180" />
        <instance x="2320" y="1840" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1680" type="branch" />
            <wire x2="2320" y1="1680" y2="1680" x1="2176" />
        </branch>
        <branch name="STS_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1744" type="branch" />
            <wire x2="2320" y1="1744" y2="1744" x1="2176" />
        </branch>
        <branch name="STATUS(4:0)">
            <wire x2="3024" y1="1680" y2="1680" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1680" name="STATUS(4:0)" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="496" y="1664" type="branch" />
            <wire x2="672" y1="1664" y2="1664" x1="496" />
        </branch>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1728" type="branch" />
            <wire x2="672" y1="1728" y2="1728" x1="480" />
        </branch>
        <branch name="STS_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1792" type="branch" />
            <wire x2="672" y1="1792" y2="1792" x1="480" />
        </branch>
        <branch name="Monitored_DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="816" type="branch" />
            <wire x2="2464" y1="816" y2="816" x1="2256" />
        </branch>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="752" type="branch" />
            <wire x2="2464" y1="752" y2="752" x1="2272" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="688" type="branch" />
            <wire x2="2464" y1="688" y2="688" x1="2272" />
        </branch>
        <branch name="DOUT(31:0)">
            <wire x2="3040" y1="688" y2="688" x1="2848" />
        </branch>
        <iomarker fontsize="28" x="3040" y="688" name="DOUT(31:0)" orien="R0" />
        <branch name="Monitored_DATA(31:0)">
            <wire x2="608" y1="560" y2="560" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="560" name="Monitored_DATA(31:0)" orien="R180" />
        <instance x="1200" y="2304" name="XLXI_5" orien="R0">
        </instance>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2080" type="branch" />
            <wire x2="1632" y1="2080" y2="2080" x1="1584" />
            <wire x2="1840" y1="2080" y2="2080" x1="1632" />
        </branch>
    </sheet>
</drawing>
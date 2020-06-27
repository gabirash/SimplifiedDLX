<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_32" />
        <signal name="AI(8)" />
        <signal name="AI(7)" />
        <signal name="CARDSEL" />
        <signal name="WR_N" />
        <signal name="AI(9:0)" />
        <signal name="clk" />
        <signal name="XLXN_66" />
        <signal name="x1" />
        <signal name="x2" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="SACK_N" />
        <signal name="AI(4:0)" />
        <signal name="req_addr(4:0)" />
        <signal name="XLXN_76" />
        <signal name="AI(9)" />
        <port polarity="Input" name="CARDSEL" />
        <port polarity="Input" name="WR_N" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Output" name="req_addr(4:0)" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="BUF5">
            <timestamp>2020-4-23T16:46:35</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="AI(7)" name="I0" />
            <blockpin signalname="AI(8)" name="I1" />
            <blockpin signalname="XLXN_76" name="I2" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="WR_N" name="I0" />
            <blockpin signalname="CARDSEL" name="I1" />
            <blockpin signalname="XLXN_32" name="I2" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_10">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="x1" name="D" />
            <blockpin signalname="x2" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_11">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="x2" name="D" />
            <blockpin signalname="XLXN_72" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_9">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_66" name="D" />
            <blockpin signalname="x1" name="Q" />
        </block>
        <block symbolname="nand2" name="XLXI_15">
            <blockpin signalname="XLXN_73" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="SACK_N" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_72" name="I" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="BUF5" name="XLXI_17">
            <blockpin signalname="AI(4:0)" name="Din(4:0)" />
            <blockpin signalname="req_addr(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="AI(9)" name="I" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AI(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="256" type="branch" />
            <wire x2="800" y1="256" y2="256" x1="240" />
        </branch>
        <branch name="AI(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="336" type="branch" />
            <wire x2="800" y1="336" y2="336" x1="320" />
            <wire x2="800" y1="320" y2="336" x1="800" />
        </branch>
        <branch name="CARDSEL">
            <wire x2="1216" y1="496" y2="496" x1="368" />
        </branch>
        <branch name="WR_N">
            <wire x2="1216" y1="608" y2="608" x1="336" />
            <wire x2="1216" y1="560" y2="608" x1="1216" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="416" y1="80" y2="80" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="80" name="AI(9:0)" orien="R180" />
        <instance x="800" y="384" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="368" y="496" name="CARDSEL" orien="R180" />
        <iomarker fontsize="28" x="336" y="608" name="WR_N" orien="R180" />
        <branch name="XLXN_32">
            <wire x2="1104" y1="256" y2="256" x1="1056" />
            <wire x2="1104" y1="256" y2="432" x1="1104" />
            <wire x2="1216" y1="432" y2="432" x1="1104" />
        </branch>
        <instance x="1216" y="624" name="XLXI_1" orien="R0" />
        <branch name="clk">
            <wire x2="1344" y1="1168" y2="1168" x1="784" />
            <wire x2="1904" y1="1168" y2="1168" x1="1344" />
            <wire x2="2624" y1="1168" y2="1168" x1="1904" />
            <wire x2="1536" y1="960" y2="960" x1="1344" />
            <wire x2="1344" y1="960" y2="1168" x1="1344" />
            <wire x2="2032" y1="960" y2="960" x1="1904" />
            <wire x2="1904" y1="960" y2="1168" x1="1904" />
            <wire x2="2736" y1="960" y2="960" x1="2624" />
            <wire x2="2624" y1="960" y2="1168" x1="2624" />
        </branch>
        <instance x="2032" y="1088" name="XLXI_10" orien="R0" />
        <instance x="1536" y="1088" name="XLXI_9" orien="R0" />
        <branch name="XLXN_66">
            <wire x2="1504" y1="496" y2="496" x1="1472" />
            <wire x2="1504" y1="496" y2="832" x1="1504" />
            <wire x2="1536" y1="832" y2="832" x1="1504" />
        </branch>
        <branch name="x1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="832" type="branch" />
            <wire x2="2000" y1="832" y2="832" x1="1920" />
            <wire x2="2032" y1="832" y2="832" x1="2000" />
        </branch>
        <branch name="x2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="832" type="branch" />
            <wire x2="2544" y1="832" y2="832" x1="2416" />
            <wire x2="2592" y1="832" y2="832" x1="2544" />
            <wire x2="2736" y1="832" y2="832" x1="2592" />
            <wire x2="2544" y1="544" y2="832" x1="2544" />
            <wire x2="3280" y1="544" y2="544" x1="2544" />
            <wire x2="3312" y1="544" y2="544" x1="3280" />
            <wire x2="3312" y1="544" y2="1360" x1="3312" />
        </branch>
        <instance x="2736" y="1088" name="XLXI_11" orien="R0" />
        <instance x="3184" y="1360" name="XLXI_15" orien="R90" />
        <instance x="3216" y="1088" name="XLXI_16" orien="R90" />
        <branch name="XLXN_72">
            <wire x2="3248" y1="832" y2="832" x1="3120" />
            <wire x2="3248" y1="832" y2="1088" x1="3248" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="3248" y1="1312" y2="1360" x1="3248" />
        </branch>
        <branch name="SACK_N">
            <wire x2="3280" y1="1744" y2="1744" x1="3120" />
            <wire x2="3280" y1="1616" y2="1632" x1="3280" />
            <wire x2="3280" y1="1632" y2="1744" x1="3280" />
        </branch>
        <iomarker fontsize="28" x="784" y="1168" name="clk" orien="R180" />
        <iomarker fontsize="28" x="3120" y="1744" name="SACK_N" orien="R180" />
        <instance x="2176" y="224" name="XLXI_17" orien="R0">
        </instance>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="192" type="branch" />
            <wire x2="2176" y1="192" y2="192" x1="1792" />
        </branch>
        <branch name="req_addr(4:0)">
            <wire x2="2576" y1="192" y2="192" x1="2560" />
            <wire x2="2992" y1="192" y2="192" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2992" y="192" name="req_addr(4:0)" orien="R0" />
        <instance x="464" y="224" name="XLXI_18" orien="R0" />
        <branch name="XLXN_76">
            <wire x2="800" y1="192" y2="192" x1="688" />
        </branch>
        <branch name="AI(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="192" type="branch" />
            <wire x2="320" y1="192" y2="192" x1="272" />
            <wire x2="464" y1="192" y2="192" x1="320" />
        </branch>
    </sheet>
</drawing>
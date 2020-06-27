<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="stop_n" />
        <signal name="step_en" />
        <signal name="in_init" />
        <signal name="XLXN_20" />
        <signal name="LA_run" />
        <signal name="LA_WE" />
        <signal name="XLXN_4" />
        <signal name="pre_LA_run" />
        <signal name="sts_ce" />
        <signal name="XLXN_22" />
        <signal name="pre_sts_ce" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="stop_n" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="in_init" />
        <port polarity="Output" name="LA_WE" />
        <port polarity="Output" name="sts_ce" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="pre_sts_ce" name="D" />
            <blockpin signalname="sts_ce" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="pre_LA_run" name="D" />
            <blockpin signalname="XLXN_4" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="in_init" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="stop_n" name="I0" />
            <blockpin signalname="LA_run" name="I1" />
            <blockpin signalname="LA_WE" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_10">
            <blockpin signalname="step_en" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="pre_LA_run" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="pre_LA_run" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="LA_run" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="in_init" name="I0" />
            <blockpin signalname="LA_run" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_14">
            <blockpin signalname="step_en" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="pre_sts_ce" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="pre_sts_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="720" type="branch" />
            <wire x2="1488" y1="720" y2="720" x1="1408" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="848" type="branch" />
            <wire x2="1488" y1="848" y2="848" x1="1296" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1216" type="branch" />
            <wire x2="1504" y1="1216" y2="1216" x1="1344" />
        </branch>
        <branch name="clk">
            <wire x2="736" y1="528" y2="528" x1="448" />
        </branch>
        <branch name="stop_n">
            <wire x2="752" y1="672" y2="672" x1="448" />
        </branch>
        <branch name="step_en">
            <wire x2="752" y1="816" y2="816" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="528" name="clk" orien="R180" />
        <iomarker fontsize="28" x="448" y="672" name="stop_n" orien="R180" />
        <iomarker fontsize="28" x="448" y="816" name="step_en" orien="R180" />
        <branch name="in_init">
            <wire x2="768" y1="1008" y2="1008" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="1008" name="in_init" orien="R180" />
        <instance x="1488" y="976" name="XLXI_1" orien="R0" />
        <branch name="pre_LA_run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1088" type="branch" />
            <wire x2="1504" y1="1088" y2="1088" x1="1296" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2832" y1="304" y2="304" x1="2288" />
        </branch>
        <instance x="2064" y="336" name="XLXI_7" orien="R0" />
        <branch name="in_init">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="304" type="branch" />
            <wire x2="2064" y1="304" y2="304" x1="1872" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="368" type="branch" />
            <wire x2="2832" y1="368" y2="368" x1="2384" />
        </branch>
        <branch name="LA_run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="528" type="branch" />
            <wire x2="2816" y1="528" y2="528" x1="2656" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="592" type="branch" />
            <wire x2="2816" y1="592" y2="592" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="3184" y="560" name="LA_WE" orien="R0" />
        <instance x="2816" y="656" name="XLXI_8" orien="R0" />
        <branch name="LA_WE">
            <wire x2="3184" y1="560" y2="560" x1="3072" />
        </branch>
        <instance x="1504" y="1344" name="XLXI_2" orien="R0" />
        <branch name="pre_LA_run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1264" type="branch" />
            <wire x2="2128" y1="1264" y2="1264" x1="2112" />
            <wire x2="2320" y1="1152" y2="1152" x1="2128" />
            <wire x2="2128" y1="1152" y2="1264" x1="2128" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2320" y1="1088" y2="1088" x1="1888" />
        </branch>
        <branch name="LA_run">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="1120" type="branch" />
            <wire x2="2800" y1="1120" y2="1120" x1="2576" />
        </branch>
        <instance x="2832" y="432" name="XLXI_10" orien="R0" />
        <branch name="pre_LA_run">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="336" type="branch" />
            <wire x2="3232" y1="336" y2="336" x1="3088" />
        </branch>
        <instance x="2320" y="1216" name="XLXI_11" orien="R0" />
        <branch name="LA_run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="784" type="branch" />
            <wire x2="2304" y1="784" y2="784" x1="2160" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="848" type="branch" />
            <wire x2="2304" y1="848" y2="848" x1="2160" />
        </branch>
        <branch name="sts_ce">
            <wire x2="1952" y1="720" y2="720" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1952" y="720" name="sts_ce" orien="R0" />
        <instance x="2304" y="912" name="XLXI_13" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="2752" y1="816" y2="816" x1="2560" />
        </branch>
        <instance x="2752" y="944" name="XLXI_14" orien="R0" />
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="880" type="branch" />
            <wire x2="2752" y1="880" y2="880" x1="2640" />
        </branch>
        <branch name="pre_sts_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3136" y="848" type="branch" />
            <wire x2="3136" y1="848" y2="848" x1="3008" />
        </branch>
    </sheet>
</drawing>
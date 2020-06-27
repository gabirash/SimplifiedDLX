<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(31:0)" />
        <signal name="F(2:0)" />
        <signal name="neg" />
        <signal name="XLXN_12" />
        <signal name="F(2)" />
        <signal name="XLXN_18" />
        <signal name="F(1)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_36" />
        <signal name="F(0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_23" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="COMP_OUT" />
        <port polarity="Input" name="S(31:0)" />
        <port polarity="Input" name="F(2:0)" />
        <port polarity="Input" name="neg" />
        <port polarity="Output" name="COMP_OUT" />
        <blockdef name="AEQZ">
            <timestamp>2020-5-21T18:7:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="AEQZ" name="XLXI_1">
            <blockpin signalname="S(31:0)" name="Din(31:0)" />
            <blockpin signalname="XLXN_12" name="A_eqz" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="XLXN_49" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="COMP_OUT" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_12" name="I" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="neg" name="I0" />
            <blockpin signalname="F(2)" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="F(1)" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="neg" name="I" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="F(0)" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S(31:0)">
            <wire x2="368" y1="128" y2="128" x1="272" />
            <wire x2="448" y1="128" y2="128" x1="368" />
        </branch>
        <branch name="F(2:0)">
            <wire x2="368" y1="192" y2="192" x1="272" />
        </branch>
        <branch name="neg">
            <wire x2="368" y1="256" y2="256" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="128" name="S(31:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="192" name="F(2:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="256" name="neg" orien="R180" />
        <instance x="448" y="160" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_12">
            <wire x2="912" y1="128" y2="128" x1="832" />
            <wire x2="2144" y1="128" y2="128" x1="912" />
            <wire x2="2144" y1="128" y2="240" x1="2144" />
            <wire x2="912" y1="128" y2="320" x1="912" />
        </branch>
        <instance x="1680" y="240" name="XLXI_5" orien="R90" />
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="192" type="branch" />
            <wire x2="1808" y1="192" y2="240" x1="1808" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="192" type="branch" />
            <wire x2="1744" y1="192" y2="240" x1="1744" />
        </branch>
        <instance x="2080" y="240" name="XLXI_4" orien="R90" />
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="176" type="branch" />
            <wire x2="2208" y1="176" y2="240" x1="2208" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2176" y1="512" y2="512" x1="2016" />
            <wire x2="2016" y1="512" y2="560" x1="2016" />
            <wire x2="2176" y1="496" y2="512" x1="2176" />
        </branch>
        <instance x="1056" y="224" name="XLXI_3" orien="R0" />
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="192" type="branch" />
            <wire x2="1056" y1="192" y2="192" x1="1024" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="192" type="branch" />
            <wire x2="1504" y1="192" y2="208" x1="1504" />
            <wire x2="1504" y1="208" y2="240" x1="1504" />
        </branch>
        <instance x="1376" y="240" name="XLXI_6" orien="R90" />
        <branch name="XLXN_24">
            <wire x2="1472" y1="560" y2="560" x1="1216" />
            <wire x2="1216" y1="560" y2="608" x1="1216" />
            <wire x2="1472" y1="496" y2="560" x1="1472" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1440" y1="192" y2="192" x1="1280" />
            <wire x2="1440" y1="192" y2="240" x1="1440" />
        </branch>
        <instance x="880" y="320" name="XLXI_14" orien="R90" />
        <branch name="XLXN_44">
            <wire x2="912" y1="544" y2="560" x1="912" />
            <wire x2="960" y1="560" y2="560" x1="912" />
            <wire x2="1152" y1="560" y2="560" x1="960" />
            <wire x2="1152" y1="560" y2="608" x1="1152" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1776" y1="496" y2="512" x1="1776" />
            <wire x2="1952" y1="512" y2="512" x1="1776" />
            <wire x2="1952" y1="512" y2="560" x1="1952" />
        </branch>
        <instance x="1888" y="560" name="XLXI_8" orien="R90" />
        <instance x="1088" y="608" name="XLXI_7" orien="R90" />
        <instance x="1504" y="864" name="XLXI_9" orien="R90" />
        <branch name="XLXN_48">
            <wire x2="1632" y1="832" y2="864" x1="1632" />
            <wire x2="1984" y1="832" y2="832" x1="1632" />
            <wire x2="1984" y1="816" y2="832" x1="1984" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1184" y1="864" y2="944" x1="1184" />
            <wire x2="1296" y1="944" y2="944" x1="1184" />
            <wire x2="1296" y1="800" y2="944" x1="1296" />
            <wire x2="1568" y1="800" y2="800" x1="1296" />
            <wire x2="1568" y1="800" y2="864" x1="1568" />
        </branch>
        <branch name="COMP_OUT">
            <wire x2="1600" y1="1120" y2="1184" x1="1600" />
            <wire x2="1776" y1="1184" y2="1184" x1="1600" />
            <wire x2="1904" y1="1184" y2="1184" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1184" name="COMP_OUT" orien="R0" />
    </sheet>
</drawing>
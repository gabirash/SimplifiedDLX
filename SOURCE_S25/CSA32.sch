<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="SUB" />
        <signal name="B(31:0)" />
        <signal name="ALU_OUT(31:0)" />
        <signal name="NEG" />
        <signal name="A(31:16)" />
        <signal name="XLXN_13" />
        <signal name="B(31:16)" />
        <signal name="XLXN_17" />
        <signal name="B(15:0)" />
        <signal name="A(15:0)" />
        <signal name="Cn1" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24(15:0)" />
        <signal name="Cn0" />
        <signal name="XLXN_26" />
        <signal name="Ck" />
        <signal name="XLXN_29" />
        <signal name="ALU_OUT(15:0)" />
        <signal name="N_SUB" />
        <signal name="XLXN_54(15:0)" />
        <signal name="ALU_OUT(31:16)" />
        <signal name="A(31)" />
        <signal name="B(31)" />
        <signal name="Cn" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="SUB" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Output" name="ALU_OUT(31:0)" />
        <port polarity="Output" name="NEG" />
        <blockdef name="adsu16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="MUX16bit">
            <timestamp>2020-5-21T18:8:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="xor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="60" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="208" y1="-160" y2="-160" x1="256" />
            <arc ex="64" ey="-208" sx="64" sy="-112" r="56" cx="32" cy="-160" />
            <line x2="64" y1="-208" y2="-208" x1="128" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <arc ex="128" ey="-208" sx="208" sy="-160" r="88" cx="132" cy="-120" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="208" ey="-160" sx="128" sy="-112" r="88" cx="132" cy="-200" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="adsu16" name="XLXI_1">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="N_SUB" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_13" name="CI" />
            <blockpin signalname="Cn1" name="CO" />
            <blockpin signalname="XLXN_23" name="OFL" />
            <blockpin signalname="XLXN_24(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="XLXI_2">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="N_SUB" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_17" name="CI" />
            <blockpin signalname="Cn0" name="CO" />
            <blockpin signalname="XLXN_26" name="OFL" />
            <blockpin signalname="XLXN_54(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="XLXI_3">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="N_SUB" name="ADD" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="SUB" name="CI" />
            <blockpin signalname="Ck" name="CO" />
            <blockpin signalname="XLXN_29" name="OFL" />
            <blockpin signalname="ALU_OUT(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_17" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_13" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="SUB" name="I" />
            <blockpin signalname="N_SUB" name="O" />
        </block>
        <block symbolname="MUX16bit" name="XLXI_11">
            <blockpin signalname="Ck" name="sel" />
            <blockpin signalname="XLXN_54(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="B(15:0)" />
            <blockpin signalname="ALU_OUT(31:16)" name="O(15:0)" />
        </block>
        <block symbolname="xor4" name="XLXI_14">
            <blockpin signalname="Cn" name="I0" />
            <blockpin signalname="SUB" name="I1" />
            <blockpin signalname="B(31)" name="I2" />
            <blockpin signalname="A(31)" name="I3" />
            <blockpin signalname="NEG" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_15">
            <blockpin signalname="Cn0" name="D0" />
            <blockpin signalname="Cn1" name="D1" />
            <blockpin signalname="Ck" name="S0" />
            <blockpin signalname="Cn" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(31:0)">
            <wire x2="288" y1="176" y2="176" x1="224" />
        </branch>
        <branch name="SUB">
            <wire x2="304" y1="352" y2="352" x1="224" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="272" y1="272" y2="272" x1="224" />
        </branch>
        <branch name="ALU_OUT(31:0)">
            <wire x2="2944" y1="176" y2="176" x1="2848" />
        </branch>
        <iomarker fontsize="28" x="2944" y="176" name="ALU_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="224" y="176" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="272" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="352" name="SUB" orien="R180" />
        <branch name="NEG">
            <wire x2="2928" y1="288" y2="288" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2928" y="288" name="NEG" orien="R0" />
        <instance x="1392" y="304" name="XLXI_2" orien="R90" />
        <instance x="2240" y="304" name="XLXI_3" orien="R90" />
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="240" type="branch" />
            <wire x2="704" y1="240" y2="304" x1="704" />
        </branch>
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="240" type="branch" />
            <wire x2="832" y1="240" y2="304" x1="832" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="960" y1="240" y2="304" x1="960" />
        </branch>
        <branch name="N_SUB">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="256" type="branch" />
            <wire x2="1456" y1="256" y2="304" x1="1456" />
        </branch>
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="256" type="branch" />
            <wire x2="1584" y1="256" y2="304" x1="1584" />
        </branch>
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="256" type="branch" />
            <wire x2="1712" y1="256" y2="304" x1="1712" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1840" y1="256" y2="304" x1="1840" />
        </branch>
        <branch name="N_SUB">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="256" type="branch" />
            <wire x2="2304" y1="256" y2="304" x1="2304" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="256" type="branch" />
            <wire x2="2432" y1="256" y2="304" x1="2432" />
        </branch>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="256" type="branch" />
            <wire x2="2560" y1="256" y2="304" x1="2560" />
        </branch>
        <branch name="SUB">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="256" type="branch" />
            <wire x2="2688" y1="256" y2="304" x1="2688" />
        </branch>
        <branch name="XLXN_24(15:0)">
            <wire x2="768" y1="752" y2="1040" x1="768" />
            <wire x2="1136" y1="1040" y2="1040" x1="768" />
            <wire x2="1136" y1="1040" y2="1184" x1="1136" />
        </branch>
        <branch name="Cn0">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="816" type="branch" />
            <wire x2="1456" y1="752" y2="816" x1="1456" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1520" y1="752" y2="816" x1="1520" />
        </branch>
        <branch name="Ck">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1168" type="branch" />
            <wire x2="2304" y1="1104" y2="1104" x1="1264" />
            <wire x2="1264" y1="1104" y2="1168" x1="1264" />
            <wire x2="1264" y1="1168" y2="1184" x1="1264" />
            <wire x2="2304" y1="752" y2="1104" x1="2304" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2368" y1="752" y2="816" x1="2368" />
        </branch>
        <branch name="ALU_OUT(15:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="928" type="branch" />
            <wire x2="2496" y1="752" y2="928" x1="2496" />
        </branch>
        <instance x="1904" y="128" name="XLXI_8" orien="R180" />
        <instance x="896" y="240" name="XLXI_9" orien="R0" />
        <instance x="144" y="560" name="XLXI_10" orien="R0" />
        <branch name="SUB">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="528" type="branch" />
            <wire x2="144" y1="528" y2="528" x1="112" />
        </branch>
        <branch name="N_SUB">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="528" type="branch" />
            <wire x2="400" y1="528" y2="528" x1="368" />
        </branch>
        <branch name="XLXN_54(15:0)">
            <wire x2="1200" y1="1040" y2="1184" x1="1200" />
            <wire x2="1648" y1="1040" y2="1040" x1="1200" />
            <wire x2="1648" y1="752" y2="1040" x1="1648" />
        </branch>
        <instance x="1104" y="1184" name="XLXI_11" orien="R90">
        </instance>
        <instance x="512" y="304" name="XLXI_1" orien="R90" />
        <branch name="XLXN_23">
            <wire x2="640" y1="752" y2="816" x1="640" />
        </branch>
        <branch name="Cn1">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="816" type="branch" />
            <wire x2="576" y1="752" y2="816" x1="576" />
        </branch>
        <branch name="N_SUB">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="256" type="branch" />
            <wire x2="576" y1="256" y2="304" x1="576" />
        </branch>
        <branch name="ALU_OUT(31:16)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1648" type="branch" />
            <wire x2="1264" y1="1568" y2="1648" x1="1264" />
        </branch>
        <instance x="1984" y="1712" name="XLXI_14" orien="R0" />
        <branch name="NEG">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1552" type="branch" />
            <wire x2="2336" y1="1552" y2="1552" x1="2240" />
        </branch>
        <branch name="A(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1456" type="branch" />
            <wire x2="1984" y1="1456" y2="1456" x1="1904" />
        </branch>
        <branch name="B(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1520" type="branch" />
            <wire x2="1984" y1="1520" y2="1520" x1="1904" />
        </branch>
        <branch name="SUB">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1584" type="branch" />
            <wire x2="1984" y1="1584" y2="1584" x1="1904" />
        </branch>
        <branch name="Cn">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1648" type="branch" />
            <wire x2="1984" y1="1648" y2="1648" x1="1904" />
        </branch>
        <instance x="352" y="1344" name="XLXI_15" orien="R0" />
        <branch name="Cn0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1184" type="branch" />
            <wire x2="352" y1="1184" y2="1184" x1="304" />
        </branch>
        <branch name="Cn1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1248" type="branch" />
            <wire x2="352" y1="1248" y2="1248" x1="304" />
        </branch>
        <branch name="Ck">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1312" type="branch" />
            <wire x2="352" y1="1312" y2="1312" x1="304" />
        </branch>
        <branch name="Cn">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1216" type="branch" />
            <wire x2="768" y1="1216" y2="1216" x1="672" />
        </branch>
    </sheet>
</drawing>
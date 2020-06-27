<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="XLXN_4" />
        <signal name="Cadr(4:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="XLXN_8" />
        <signal name="C(31:0)" />
        <signal name="GPR_WE" />
        <signal name="Cadr(0)" />
        <signal name="Cadr(1)" />
        <signal name="Cadr(2)" />
        <signal name="Cadr(3)" />
        <signal name="Cadr(4)" />
        <signal name="XLXN_16" />
        <signal name="GPR_WE_dis" />
        <signal name="AramAdr(4:0)" />
        <signal name="BramAdr(4:0)" />
        <signal name="DramAdr(4:0)" />
        <signal name="XLXN_55(31:0)">
        </signal>
        <signal name="XLXN_56(31:0)" />
        <signal name="XLXN_57(31:0)" />
        <signal name="XLXN_60(31:0)" />
        <signal name="XLXN_61" />
        <signal name="AEQZ_out" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="D(31:0)" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_72(31:0)" />
        <signal name="XLXN_73(31:0)" />
        <signal name="XLXN_75(31:0)" />
        <signal name="XLXN_77(31:0)" />
        <signal name="XLXN_79(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Aadr(4:0)" />
        <port polarity="Input" name="Badr(4:0)" />
        <port polarity="Input" name="Cadr(4:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Output" name="AEQZ_out" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <blockdef name="RAM32X32S">
            <timestamp>2020-5-22T4:8:18</timestamp>
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
        <blockdef name="MUX5BIT">
            <timestamp>2020-5-22T4:8:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
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
        <blockdef name="AEQZ">
            <timestamp>2020-5-22T4:7:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="RAM32X32S" name="XLXI_1">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="GPR_WE_dis" name="WE" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="AramAdr(4:0)" name="ADD(4:0)" />
            <blockpin signalname="A(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="GPR_WE_dis" name="WE" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="BramAdr(4:0)" name="ADD(4:0)" />
            <blockpin signalname="B(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_3">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="GPR_WE_dis" name="WE" />
            <blockpin signalname="C(31:0)" name="D(31:0)" />
            <blockpin signalname="DramAdr(4:0)" name="ADD(4:0)" />
            <blockpin signalname="D(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_4">
            <blockpin signalname="GPR_WE" name="sel" />
            <blockpin signalname="Aadr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="AramAdr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="or5" name="XLXI_7">
            <blockpin signalname="Cadr(4)" name="I0" />
            <blockpin signalname="Cadr(3)" name="I1" />
            <blockpin signalname="Cadr(2)" name="I2" />
            <blockpin signalname="Cadr(1)" name="I3" />
            <blockpin signalname="Cadr(0)" name="I4" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="GPR_WE" name="I1" />
            <blockpin signalname="GPR_WE_dis" name="O" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_9">
            <blockpin signalname="GPR_WE" name="sel" />
            <blockpin signalname="Badr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="BramAdr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_10">
            <blockpin signalname="GPR_WE" name="sel" />
            <blockpin signalname="Dadr(4:0)" name="A0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="A1(4:0)" />
            <blockpin signalname="DramAdr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="AEQZ" name="XLXI_13">
            <blockpin signalname="A(31:0)" name="Din(31:0)" />
            <blockpin signalname="AEQZ_out" name="A_eqz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Aadr(4:0)">
            <wire x2="352" y1="880" y2="880" x1="224" />
        </branch>
        <branch name="Badr(4:0)">
            <wire x2="368" y1="976" y2="976" x1="208" />
        </branch>
        <branch name="Cadr(4:0)">
            <wire x2="368" y1="1072" y2="1072" x1="208" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="352" y1="1168" y2="1168" x1="208" />
        </branch>
        <iomarker fontsize="28" x="224" y="880" name="Aadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="976" name="Badr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="1072" name="Cadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="1168" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="144" y="768" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="352" y1="768" y2="768" x1="144" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="352" y1="1296" y2="1296" x1="176" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="352" y1="1408" y2="1408" x1="192" />
        </branch>
        <iomarker fontsize="28" x="176" y="1296" name="C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="1408" name="GPR_WE" orien="R180" />
        <instance x="1824" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <instance x="432" y="1728" name="XLXI_4" orien="R0">
        </instance>
        <instance x="832" y="944" name="XLXI_7" orien="R0" />
        <branch name="Cadr(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="624" type="branch" />
            <wire x2="832" y1="624" y2="624" x1="704" />
        </branch>
        <branch name="Cadr(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="688" type="branch" />
            <wire x2="832" y1="688" y2="688" x1="704" />
        </branch>
        <branch name="Cadr(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="752" type="branch" />
            <wire x2="832" y1="752" y2="752" x1="704" />
        </branch>
        <branch name="Cadr(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="816" type="branch" />
            <wire x2="832" y1="816" y2="816" x1="704" />
        </branch>
        <branch name="Cadr(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="880" type="branch" />
            <wire x2="832" y1="880" y2="880" x1="704" />
        </branch>
        <instance x="1344" y="704" name="XLXI_8" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1184" y1="752" y2="752" x1="1088" />
            <wire x2="1344" y1="640" y2="640" x1="1184" />
            <wire x2="1184" y1="640" y2="752" x1="1184" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="576" type="branch" />
            <wire x2="1344" y1="576" y2="576" x1="1200" />
        </branch>
        <branch name="GPR_WE_dis">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="608" type="branch" />
            <wire x2="1776" y1="608" y2="608" x1="1600" />
        </branch>
        <branch name="GPR_WE_dis">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1120" type="branch" />
            <wire x2="976" y1="1120" y2="1120" x1="912" />
        </branch>
        <branch name="GPR_WE_dis">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1120" type="branch" />
            <wire x2="1824" y1="1120" y2="1120" x1="1728" />
        </branch>
        <branch name="GPR_WE_dis">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1104" type="branch" />
            <wire x2="2640" y1="1104" y2="1104" x1="2560" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1056" type="branch" />
            <wire x2="1824" y1="1056" y2="1056" x1="1728" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="1040" type="branch" />
            <wire x2="2640" y1="1040" y2="1040" x1="2528" />
        </branch>
        <instance x="976" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1056" type="branch" />
            <wire x2="976" y1="1056" y2="1056" x1="848" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1184" type="branch" />
            <wire x2="976" y1="1184" y2="1184" x1="880" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="1184" type="branch" />
            <wire x2="1824" y1="1184" y2="1184" x1="1712" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="1168" type="branch" />
            <wire x2="2640" y1="1168" y2="1168" x1="2512" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1632" type="branch" />
            <wire x2="432" y1="1632" y2="1632" x1="304" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1696" type="branch" />
            <wire x2="432" y1="1696" y2="1696" x1="320" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1568" type="branch" />
            <wire x2="432" y1="1568" y2="1568" x1="320" />
        </branch>
        <branch name="AramAdr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1568" type="branch" />
            <wire x2="912" y1="1568" y2="1568" x1="816" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1920" type="branch" />
            <wire x2="416" y1="1920" y2="1920" x1="304" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="1984" type="branch" />
            <wire x2="416" y1="1984" y2="1984" x1="288" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="2048" type="branch" />
            <wire x2="416" y1="2048" y2="2048" x1="304" />
        </branch>
        <branch name="BramAdr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1920" type="branch" />
            <wire x2="896" y1="1920" y2="1920" x1="800" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="2288" type="branch" />
            <wire x2="400" y1="2288" y2="2288" x1="288" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="2352" type="branch" />
            <wire x2="400" y1="2352" y2="2352" x1="272" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="2416" type="branch" />
            <wire x2="400" y1="2416" y2="2416" x1="288" />
        </branch>
        <branch name="DramAdr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="2288" type="branch" />
            <wire x2="880" y1="2288" y2="2288" x1="784" />
        </branch>
        <instance x="416" y="2080" name="XLXI_9" orien="R0">
        </instance>
        <instance x="400" y="2448" name="XLXI_10" orien="R0">
        </instance>
        <branch name="AramAdr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1248" type="branch" />
            <wire x2="976" y1="1248" y2="1248" x1="832" />
        </branch>
        <branch name="BramAdr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1248" type="branch" />
            <wire x2="1824" y1="1248" y2="1248" x1="1680" />
        </branch>
        <branch name="DramAdr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1232" type="branch" />
            <wire x2="2640" y1="1232" y2="1232" x1="2464" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="2256" y1="1056" y2="1056" x1="2208" />
            <wire x2="2256" y1="1056" y2="2208" x1="2256" />
            <wire x2="2464" y1="2208" y2="2208" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="3168" y="2192" name="D(31:0)" orien="R0" />
        <instance x="1232" y="2016" name="XLXI_13" orien="R0">
        </instance>
        <branch name="AEQZ_out">
            <wire x2="1712" y1="1984" y2="1984" x1="1616" />
        </branch>
        <instance x="2640" y="1264" name="XLXI_3" orien="R0">
        </instance>
        <branch name="D(31:0)">
            <wire x2="3104" y1="1040" y2="1040" x1="3024" />
            <wire x2="3104" y1="1040" y2="2192" x1="3104" />
            <wire x2="3168" y1="2192" y2="2192" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1984" name="AEQZ_out" orien="R0" />
        <iomarker fontsize="28" x="2464" y="2208" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1696" name="A(31:0)" orien="R0" />
        <branch name="A(31:0)">
            <wire x2="1440" y1="1456" y2="1456" x1="1200" />
            <wire x2="1440" y1="1456" y2="1696" x1="1440" />
            <wire x2="1664" y1="1696" y2="1696" x1="1440" />
            <wire x2="1728" y1="1696" y2="1696" x1="1664" />
            <wire x2="1904" y1="1696" y2="1696" x1="1728" />
            <wire x2="1200" y1="1456" y2="1488" x1="1200" />
            <wire x2="1200" y1="1488" y2="1984" x1="1200" />
            <wire x2="1232" y1="1984" y2="1984" x1="1200" />
            <wire x2="1440" y1="1056" y2="1056" x1="1360" />
            <wire x2="1440" y1="1056" y2="1456" x1="1440" />
        </branch>
    </sheet>
</drawing>
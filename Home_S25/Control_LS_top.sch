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
        <signal name="in_init" />
        <signal name="stateLS(2:0)" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="stop_n" />
        <signal name="stateMAC(1:0)" />
        <signal name="IRce" />
        <signal name="Cce" />
        <signal name="Bce" />
        <signal name="PCce" />
        <signal name="GPR_we" />
        <signal name="AdmSelect" />
        <signal name="mr" />
        <signal name="busy" />
        <signal name="mw" />
        <signal name="opcode(5:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="stateLS(2:0)" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="stateMAC(1:0)" />
        <port polarity="Output" name="IRce" />
        <port polarity="Output" name="Cce" />
        <port polarity="Output" name="Bce" />
        <port polarity="Output" name="PCce" />
        <port polarity="Output" name="GPR_we" />
        <port polarity="Output" name="AdmSelect" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="mw" />
        <port polarity="Input" name="opcode(5:0)" />
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
        <blockdef name="Control_LS_stateMac">
            <timestamp>2020-5-28T15:27:22</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MA_StateMac" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="stateMAC(1:0)" name="state_o(1:0)" />
        </block>
        <block symbolname="Control_LS_stateMac" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="GPR_we" name="GPR_WE" />
            <blockpin signalname="AdmSelect" name="AdmSelect" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="stateLS(2:0)" name="state_o(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="608" y1="704" y2="704" x1="496" />
        </branch>
        <branch name="reset">
            <wire x2="608" y1="752" y2="752" x1="512" />
        </branch>
        <branch name="step_en">
            <wire x2="608" y1="800" y2="800" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="704" name="clk" orien="R180" />
        <iomarker fontsize="28" x="512" y="752" name="reset" orien="R180" />
        <iomarker fontsize="28" x="496" y="800" name="step_en" orien="R180" />
        <branch name="ack_n">
            <wire x2="576" y1="880" y2="880" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="880" name="ack_n" orien="R180" />
        <branch name="in_init">
            <wire x2="2848" y1="912" y2="912" x1="2752" />
        </branch>
        <branch name="stateLS(2:0)">
            <wire x2="2864" y1="992" y2="992" x1="2768" />
        </branch>
        <branch name="AS_N">
            <wire x2="2864" y1="1056" y2="1056" x1="2768" />
        </branch>
        <branch name="WR_N">
            <wire x2="2848" y1="1120" y2="1120" x1="2752" />
        </branch>
        <branch name="stop_n">
            <wire x2="2848" y1="1184" y2="1184" x1="2752" />
        </branch>
        <branch name="stateMAC(1:0)">
            <wire x2="2864" y1="1248" y2="1248" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2848" y="912" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="2864" y="992" name="stateLS(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1056" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1120" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1184" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1248" name="stateMAC(1:0)" orien="R0" />
        <instance x="1936" y="1488" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1168" y="1920" name="XLXI_1" orien="R0">
        </instance>
        <branch name="IRce">
            <wire x2="2928" y1="1328" y2="1328" x1="2768" />
            <wire x2="2944" y1="1328" y2="1328" x1="2928" />
        </branch>
        <branch name="Cce">
            <wire x2="2944" y1="1392" y2="1392" x1="2768" />
        </branch>
        <branch name="Bce">
            <wire x2="2944" y1="1456" y2="1456" x1="2768" />
        </branch>
        <branch name="PCce">
            <wire x2="2944" y1="1520" y2="1520" x1="2768" />
        </branch>
        <branch name="GPR_we">
            <wire x2="2960" y1="1584" y2="1584" x1="2768" />
        </branch>
        <branch name="AdmSelect">
            <wire x2="2976" y1="1648" y2="1648" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2944" y="1328" name="IRce" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1392" name="Cce" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1456" name="Bce" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1520" name="PCce" orien="R0" />
        <iomarker fontsize="28" x="2960" y="1584" name="GPR_we" orien="R0" />
        <iomarker fontsize="28" x="2976" y="1648" name="AdmSelect" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="816" type="branch" />
            <wire x2="1936" y1="816" y2="816" x1="1872" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="976" type="branch" />
            <wire x2="1936" y1="976" y2="976" x1="1840" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1136" type="branch" />
            <wire x2="1936" y1="1136" y2="1136" x1="1840" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1296" type="branch" />
            <wire x2="1936" y1="1296" y2="1296" x1="1808" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1456" type="branch" />
            <wire x2="1936" y1="1456" y2="1456" x1="1808" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="816" type="branch" />
            <wire x2="2400" y1="816" y2="816" x1="2320" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="880" type="branch" />
            <wire x2="2400" y1="880" y2="880" x1="2320" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="944" type="branch" />
            <wire x2="2416" y1="944" y2="944" x1="2320" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2432" y="1008" type="branch" />
            <wire x2="2432" y1="1008" y2="1008" x1="2320" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1072" type="branch" />
            <wire x2="2448" y1="1072" y2="1072" x1="2320" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1200" type="branch" />
            <wire x2="2448" y1="1200" y2="1200" x1="2320" />
        </branch>
        <branch name="GPR_we">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1264" type="branch" />
            <wire x2="2448" y1="1264" y2="1264" x1="2320" />
        </branch>
        <branch name="AdmSelect">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1328" type="branch" />
            <wire x2="2448" y1="1328" y2="1328" x1="2320" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1392" type="branch" />
            <wire x2="2448" y1="1392" y2="1392" x1="2320" />
        </branch>
        <branch name="stateLS(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="1456" type="branch" />
            <wire x2="2448" y1="1456" y2="1456" x1="2320" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="1632" type="branch" />
            <wire x2="1696" y1="1632" y2="1632" x1="1552" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1696" type="branch" />
            <wire x2="1680" y1="1696" y2="1696" x1="1552" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1760" type="branch" />
            <wire x2="1664" y1="1760" y2="1760" x1="1552" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1824" type="branch" />
            <wire x2="1680" y1="1824" y2="1824" x1="1552" />
        </branch>
        <branch name="stateMAC(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1888" type="branch" />
            <wire x2="1680" y1="1888" y2="1888" x1="1552" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1632" type="branch" />
            <wire x2="1168" y1="1632" y2="1632" x1="1056" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1696" type="branch" />
            <wire x2="1168" y1="1696" y2="1696" x1="1056" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1760" type="branch" />
            <wire x2="1168" y1="1760" y2="1760" x1="1056" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1824" type="branch" />
            <wire x2="1168" y1="1824" y2="1824" x1="1040" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1888" type="branch" />
            <wire x2="1168" y1="1888" y2="1888" x1="1024" />
        </branch>
        <branch name="opcode(5:0)">
            <wire x2="608" y1="976" y2="976" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="976" name="opcode(5:0)" orien="R180" />
        <branch name="mw">
            <wire x2="2928" y1="832" y2="832" x1="2752" />
        </branch>
        <branch name="mr">
            <wire x2="2944" y1="784" y2="784" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2944" y="784" name="mr" orien="R0" />
        <iomarker fontsize="28" x="2928" y="832" name="mw" orien="R0" />
        <branch name="busy">
            <wire x2="2960" y1="736" y2="736" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2960" y="736" name="busy" orien="R0" />
    </sheet>
</drawing>
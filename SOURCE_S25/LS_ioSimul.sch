<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="RST" />
        <signal name="pc_step_en" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="stop_n" />
        <signal name="stateMAC(1:0)" />
        <signal name="busy" />
        <signal name="XLXN_14" />
        <signal name="mr" />
        <signal name="mw" />
        <signal name="MDO(31:0)" />
        <signal name="MAO(31:0)" />
        <signal name="step_en" />
        <signal name="RESET" />
        <signal name="ack_n" />
        <signal name="CLK" />
        <signal name="D_IN(31:0)" />
        <signal name="XLXN_31(4:0)" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="stateLS(2:0)" />
        <signal name="in_init" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="pc_step_en" />
        <blockdef name="Load_Store_Machine_top">
            <timestamp>2020-6-2T8:2:32</timestamp>
            <rect width="256" x="64" y="-768" height="768" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-748" height="24" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <rect width="64" x="320" y="-620" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="IO_SIMUL">
            <timestamp>2020-6-2T8:0:56</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Load_Store_Machine_top" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="D_IN(31:0)" name="D_IN(31:0)" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="XLXN_31(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="stateLS(2:0)" name="stateLS(2:0)" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="MDO(31:0)" name="D_OUT(31:0)" />
            <blockpin name="D(31:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="stateMAC(1:0)" name="stateMAC(1:0)" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="mw" name="mw" />
        </block>
        <block symbolname="IO_SIMUL" name="XLXI_2">
            <blockpin signalname="clk_in" name="clk_in" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="pc_step_en" name="PC_step_en" />
            <blockpin signalname="WR_N" name="WR_OUT_N" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="MDO(31:0)" name="MDO(31:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="ack_n" name="ACK_N" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="D_IN(31:0)" name="DO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk_in">
            <wire x2="752" y1="384" y2="384" x1="512" />
            <wire x2="752" y1="384" y2="512" x1="752" />
            <wire x2="976" y1="512" y2="512" x1="752" />
        </branch>
        <branch name="RST">
            <wire x2="528" y1="464" y2="464" x1="512" />
            <wire x2="528" y1="464" y2="576" x1="528" />
            <wire x2="976" y1="576" y2="576" x1="528" />
        </branch>
        <branch name="pc_step_en">
            <wire x2="512" y1="528" y2="528" x1="496" />
            <wire x2="512" y1="528" y2="640" x1="512" />
            <wire x2="976" y1="640" y2="640" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="384" name="clk_in" orien="R180" />
        <iomarker fontsize="28" x="512" y="464" name="RST" orien="R180" />
        <iomarker fontsize="28" x="496" y="528" name="pc_step_en" orien="R180" />
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="624" type="branch" />
            <wire x2="2256" y1="624" y2="624" x1="2176" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="688" type="branch" />
            <wire x2="2288" y1="688" y2="688" x1="2176" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="704" type="branch" />
            <wire x2="1440" y1="704" y2="704" x1="1360" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="800" type="branch" />
            <wire x2="1504" y1="800" y2="800" x1="1360" />
        </branch>
        <branch name="D_IN(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="896" type="branch" />
            <wire x2="1504" y1="896" y2="896" x1="1360" />
        </branch>
        <branch name="D_IN(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="688" type="branch" />
            <wire x2="1792" y1="688" y2="688" x1="1712" />
        </branch>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="816" type="branch" />
            <wire x2="1792" y1="816" y2="816" x1="1696" />
        </branch>
        <instance x="1792" y="1040" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="304" type="branch" />
            <wire x2="1792" y1="304" y2="304" x1="1664" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="432" type="branch" />
            <wire x2="1792" y1="432" y2="432" x1="1648" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="560" type="branch" />
            <wire x2="1792" y1="560" y2="560" x1="1648" />
        </branch>
        <branch name="XLXN_31(4:0)">
            <wire x2="1792" y1="944" y2="944" x1="1680" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="752" type="branch" />
            <wire x2="2288" y1="752" y2="752" x1="2176" />
        </branch>
        <branch name="stateMAC(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="816" type="branch" />
            <wire x2="2304" y1="816" y2="816" x1="2176" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="880" type="branch" />
            <wire x2="2288" y1="880" y2="880" x1="2176" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="944" type="branch" />
            <wire x2="2448" y1="944" y2="944" x1="2176" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="1008" type="branch" />
            <wire x2="2304" y1="1008" y2="1008" x1="2176" />
        </branch>
        <instance x="976" y="928" name="XLXI_2" orien="R0">
        </instance>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="704" type="branch" />
            <wire x2="976" y1="704" y2="704" x1="944" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="768" type="branch" />
            <wire x2="976" y1="768" y2="768" x1="944" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="832" type="branch" />
            <wire x2="976" y1="832" y2="832" x1="928" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="896" type="branch" />
            <wire x2="976" y1="896" y2="896" x1="912" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="512" type="branch" />
            <wire x2="1488" y1="512" y2="512" x1="1360" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="608" type="branch" />
            <wire x2="1472" y1="608" y2="608" x1="1360" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="432" type="branch" />
            <wire x2="2320" y1="432" y2="432" x1="2176" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="560" type="branch" />
            <wire x2="2320" y1="560" y2="560" x1="2176" />
        </branch>
        <branch name="stateLS(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="304" type="branch" />
            <wire x2="2192" y1="304" y2="304" x1="2176" />
            <wire x2="2272" y1="304" y2="304" x1="2192" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="368" type="branch" />
            <wire x2="2288" y1="368" y2="368" x1="2176" />
        </branch>
    </sheet>
</drawing>
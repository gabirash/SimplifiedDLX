<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="WR_N" />
        <signal name="AS_N" />
        <signal name="MDO(31:0)" />
        <signal name="MAO(31:0)" />
        <signal name="step_en" />
        <signal name="RESET" />
        <signal name="ACK_N" />
        <signal name="clk" />
        <signal name="aeqz" />
        <signal name="mw" />
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
        <signal name="stop_n" />
        <signal name="in_halt" />
        <signal name="shift" />
        <signal name="XLXN_48(4:0)" />
        <signal name="S1sel(1:0)" />
        <signal name="D(31:0)" />
        <signal name="S2sel(1:0)" />
        <signal name="MACs(1:0)" />
        <signal name="add" />
        <signal name="test" />
        <signal name="Itype" />
        <signal name="right" />
        <signal name="IRce" />
        <signal name="CLK_in" />
        <signal name="RST" />
        <signal name="PC_step_en" />
        <signal name="DIn(31:0)" />
        <port polarity="Input" name="CLK_in" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="PC_step_en" />
        <blockdef name="DLX_Top">
            <timestamp>2020-6-23T13:12:8</timestamp>
            <rect width="256" x="64" y="-2112" height="2112" />
            <line x2="0" y1="-2080" y2="-2080" x1="64" />
            <line x2="0" y1="-1680" y2="-1680" x1="64" />
            <line x2="0" y1="-1280" y2="-1280" x1="64" />
            <line x2="0" y1="-880" y2="-880" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-2080" y2="-2080" x1="320" />
            <line x2="384" y1="-2016" y2="-2016" x1="320" />
            <line x2="384" y1="-1952" y2="-1952" x1="320" />
            <line x2="384" y1="-1888" y2="-1888" x1="320" />
            <line x2="384" y1="-1824" y2="-1824" x1="320" />
            <line x2="384" y1="-1760" y2="-1760" x1="320" />
            <line x2="384" y1="-1696" y2="-1696" x1="320" />
            <line x2="384" y1="-1632" y2="-1632" x1="320" />
            <line x2="384" y1="-1568" y2="-1568" x1="320" />
            <line x2="384" y1="-1504" y2="-1504" x1="320" />
            <line x2="384" y1="-1440" y2="-1440" x1="320" />
            <line x2="384" y1="-1376" y2="-1376" x1="320" />
            <line x2="384" y1="-1312" y2="-1312" x1="320" />
            <line x2="384" y1="-1248" y2="-1248" x1="320" />
            <line x2="384" y1="-1184" y2="-1184" x1="320" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <rect width="64" x="320" y="-1004" height="24" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <rect width="64" x="320" y="-684" height="24" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <rect width="64" x="320" y="-620" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="IO_SIMUL">
            <timestamp>2020-6-2T8:0:58</timestamp>
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
        <block symbolname="DLX_Top" name="XLXI_1">
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="XLXN_48(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="DIn(31:0)" name="DI(31:0)" />
            <blockpin signalname="aeqz" name="aeqz" />
            <blockpin signalname="mw" name="mw" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="Asel" name="Asel" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="jlink" name="jlink" />
            <blockpin signalname="DINTsel" name="DINTsel" />
            <blockpin signalname="Ace" name="Ace" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="MDRce" name="MDRce" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="DLXs(4:0)" name="DLXs(4:0)" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="in_halt" name="in_halt" />
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="MDO(31:0)" name="DO(31:0)" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="MACs(1:0)" name="MACs(1:0)" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="IRce" name="IRce" />
        </block>
        <block symbolname="IO_SIMUL" name="XLXI_2">
            <blockpin signalname="CLK_in" name="clk_in" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="PC_step_en" name="PC_step_en" />
            <blockpin signalname="WR_N" name="WR_OUT_N" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="MDO(31:0)" name="MDO(31:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="DIn(31:0)" name="DO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="3088" y="2736" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1632" y="1856" name="XLXI_2" orien="R0">
        </instance>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1632" type="branch" />
            <wire x2="1632" y1="1632" y2="1632" x1="1552" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1696" type="branch" />
            <wire x2="1632" y1="1696" y2="1696" x1="1536" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1760" type="branch" />
            <wire x2="1632" y1="1760" y2="1760" x1="1536" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1824" type="branch" />
            <wire x2="1632" y1="1824" y2="1824" x1="1536" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1440" type="branch" />
            <wire x2="2080" y1="1440" y2="1440" x1="2016" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1536" type="branch" />
            <wire x2="2064" y1="1536" y2="1536" x1="2016" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1632" type="branch" />
            <wire x2="2096" y1="1632" y2="1632" x1="2016" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1728" type="branch" />
            <wire x2="2112" y1="1728" y2="1728" x1="2016" />
        </branch>
        <branch name="DIn(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1824" type="branch" />
            <wire x2="2128" y1="1824" y2="1824" x1="2016" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="656" type="branch" />
            <wire x2="3088" y1="656" y2="656" x1="3008" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="1056" type="branch" />
            <wire x2="3088" y1="1056" y2="1056" x1="3008" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="1456" type="branch" />
            <wire x2="3088" y1="1456" y2="1456" x1="2992" />
        </branch>
        <branch name="aeqz">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="656" type="branch" />
            <wire x2="3616" y1="656" y2="656" x1="3472" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="720" type="branch" />
            <wire x2="3584" y1="720" y2="720" x1="3472" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="784" type="branch" />
            <wire x2="3568" y1="784" y2="784" x1="3472" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="848" type="branch" />
            <wire x2="3584" y1="848" y2="848" x1="3472" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="912" type="branch" />
            <wire x2="3600" y1="912" y2="912" x1="3472" />
        </branch>
        <branch name="Asel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="976" type="branch" />
            <wire x2="3584" y1="976" y2="976" x1="3472" />
        </branch>
        <branch name="MDRsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1040" type="branch" />
            <wire x2="3584" y1="1040" y2="1040" x1="3472" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3632" y="1104" type="branch" />
            <wire x2="3632" y1="1104" y2="1104" x1="3472" />
        </branch>
        <branch name="DINTsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3648" y="1168" type="branch" />
            <wire x2="3648" y1="1168" y2="1168" x1="3472" />
        </branch>
        <branch name="Ace">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1232" type="branch" />
            <wire x2="3584" y1="1232" y2="1232" x1="3472" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="1296" type="branch" />
            <wire x2="3568" y1="1296" y2="1296" x1="3472" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="1360" type="branch" />
            <wire x2="3600" y1="1360" y2="1360" x1="3472" />
        </branch>
        <branch name="MARce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3616" y="1424" type="branch" />
            <wire x2="3616" y1="1424" y2="1424" x1="3472" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3632" y="1488" type="branch" />
            <wire x2="3632" y1="1488" y2="1488" x1="3472" />
        </branch>
        <branch name="MDRce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1552" type="branch" />
            <wire x2="3584" y1="1552" y2="1552" x1="3472" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="1616" type="branch" />
            <wire x2="3568" y1="1616" y2="1616" x1="3472" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="1680" type="branch" />
            <wire x2="3568" y1="1680" y2="1680" x1="3472" />
        </branch>
        <branch name="DLXs(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1744" type="branch" />
            <wire x2="3584" y1="1744" y2="1744" x1="3472" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="1808" type="branch" />
            <wire x2="3600" y1="1808" y2="1808" x1="3472" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="1872" type="branch" />
            <wire x2="3584" y1="1872" y2="1872" x1="3472" />
        </branch>
        <branch name="in_halt">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="1936" type="branch" />
            <wire x2="3600" y1="1936" y2="1936" x1="3472" />
        </branch>
        <branch name="shift">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="2000" type="branch" />
            <wire x2="3584" y1="2000" y2="2000" x1="3472" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="1856" type="branch" />
            <wire x2="3088" y1="1856" y2="1856" x1="3008" />
        </branch>
        <branch name="XLXN_48(4:0)">
            <wire x2="3088" y1="2256" y2="2256" x1="2976" />
        </branch>
        <branch name="S1sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="2064" type="branch" />
            <wire x2="3584" y1="2064" y2="2064" x1="3472" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="2128" type="branch" />
            <wire x2="3552" y1="2128" y2="2128" x1="3472" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="2192" type="branch" />
            <wire x2="3552" y1="2192" y2="2192" x1="3472" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="2256" type="branch" />
            <wire x2="3552" y1="2256" y2="2256" x1="3472" />
        </branch>
        <branch name="S2sel(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="2320" type="branch" />
            <wire x2="3584" y1="2320" y2="2320" x1="3472" />
        </branch>
        <branch name="MACs(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="2384" type="branch" />
            <wire x2="3600" y1="2384" y2="2384" x1="3472" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="2448" type="branch" />
            <wire x2="3568" y1="2448" y2="2448" x1="3472" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="2512" type="branch" />
            <wire x2="3568" y1="2512" y2="2512" x1="3472" />
        </branch>
        <branch name="Itype">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3584" y="2576" type="branch" />
            <wire x2="3584" y1="2576" y2="2576" x1="3472" />
        </branch>
        <branch name="right">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="2640" type="branch" />
            <wire x2="3568" y1="2640" y2="2640" x1="3472" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="2704" type="branch" />
            <wire x2="3552" y1="2704" y2="2704" x1="3472" />
        </branch>
        <branch name="DIn(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="2656" type="branch" />
            <wire x2="3088" y1="2656" y2="2656" x1="2992" />
        </branch>
        <branch name="CLK_in">
            <wire x2="1344" y1="1520" y2="1520" x1="1248" />
            <wire x2="1344" y1="1440" y2="1520" x1="1344" />
            <wire x2="1632" y1="1440" y2="1440" x1="1344" />
        </branch>
        <branch name="RST">
            <wire x2="1376" y1="1584" y2="1584" x1="1248" />
            <wire x2="1376" y1="1504" y2="1584" x1="1376" />
            <wire x2="1632" y1="1504" y2="1504" x1="1376" />
        </branch>
        <branch name="PC_step_en">
            <wire x2="1392" y1="1648" y2="1648" x1="1232" />
            <wire x2="1392" y1="1568" y2="1648" x1="1392" />
            <wire x2="1632" y1="1568" y2="1568" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1248" y="1520" name="CLK_in" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1584" name="RST" orien="R180" />
        <iomarker fontsize="28" x="1232" y="1648" name="PC_step_en" orien="R180" />
    </sheet>
</drawing>
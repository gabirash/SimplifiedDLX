<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Card_Sel" />
        <signal name="Rsel" />
        <signal name="AI(9:0)" />
        <signal name="DO(31:0)" />
        <signal name="WR_IN_N" />
        <signal name="RACK_N" />
        <signal name="MAO(31:0)" />
        <signal name="MDO(31:0)" />
        <signal name="SACK_N" />
        <signal name="IN_INIT" />
        <signal name="CLK" />
        <signal name="STEP_EN" />
        <signal name="AS_N" />
        <signal name="WR_OUT_N" />
        <signal name="RESET" />
        <signal name="R_DO(31:0)" />
        <signal name="sdClk_o" />
        <signal name="sdBs_o(1:0)" />
        <signal name="sdDqml_o" />
        <signal name="sdDqmh_o" />
        <signal name="sdWe_bo" />
        <signal name="sdCas_bo" />
        <signal name="sdRas_bo" />
        <signal name="sdCe_bo" />
        <signal name="sdCke_o" />
        <signal name="fpgaClk_i" />
        <signal name="sdClkFb_i" />
        <signal name="sdData_io(15:0)" />
        <signal name="sdAddr_o(12:0)" />
        <signal name="SDO(31:0)" />
        <signal name="ACK_N" />
        <signal name="stop_n" />
        <signal name="Monitored_data(2)" />
        <signal name="Monitored_data(3)" />
        <signal name="Monitored_data(4)" />
        <signal name="reg_addr(4:0)" />
        <signal name="REG_OUT(31:0)" />
        <signal name="Monitored_data(31:0)" />
        <signal name="Monitored_data(0)" />
        <signal name="Monitored_data(1)" />
        <signal name="Monitored_data(9:5)" />
        <signal name="Monitored_data(11:10)" />
        <signal name="Monitored_data(12)" />
        <signal name="Monitored_data(15)" />
        <signal name="Monitored_data(13)" />
        <signal name="Monitored_data(14)" />
        <signal name="Monitored_data(16)" />
        <signal name="Monitored_data(17)" />
        <signal name="Monitored_data(21)" />
        <signal name="Monitored_data(20)" />
        <signal name="Monitored_data(19)" />
        <signal name="Monitored_data(18)" />
        <signal name="Monitored_data(22)" />
        <signal name="Monitored_data(27)" />
        <signal name="Monitored_data(23)" />
        <signal name="Monitored_data(25)" />
        <signal name="Monitored_data(24)" />
        <signal name="Monitored_data(26)" />
        <signal name="Monitored_data(28)" />
        <signal name="XLXN_143" />
        <signal name="XLXN_144" />
        <signal name="XLXN_145" />
        <port polarity="Output" name="sdClk_o" />
        <port polarity="Output" name="sdBs_o(1:0)" />
        <port polarity="Output" name="sdDqml_o" />
        <port polarity="Output" name="sdDqmh_o" />
        <port polarity="Output" name="sdWe_bo" />
        <port polarity="Output" name="sdCas_bo" />
        <port polarity="Output" name="sdRas_bo" />
        <port polarity="Output" name="sdCe_bo" />
        <port polarity="Output" name="sdCke_o" />
        <port polarity="Input" name="fpgaClk_i" />
        <port polarity="Input" name="sdClkFb_i" />
        <port polarity="BiDirectional" name="sdData_io(15:0)" />
        <port polarity="Output" name="sdAddr_o(12:0)" />
        <blockdef name="IO_LOGIC_U">
            <timestamp>2015-7-8T11:14:45</timestamp>
            <rect width="304" x="64" y="-1280" height="1280" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1136" y2="-1136" x1="64" />
            <line x2="0" y1="-1024" y2="-1024" x1="64" />
            <line x2="0" y1="-912" y2="-912" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <line x2="0" y1="-576" y2="-576" x1="64" />
            <rect width="64" x="0" y="-476" height="24" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="Monitor">
            <timestamp>2020-5-12T8:29:57</timestamp>
            <rect width="320" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-620" height="24" />
            <line x2="448" y1="-608" y2="-608" x1="384" />
            <rect width="64" x="384" y="-332" height="24" />
            <line x2="448" y1="-320" y2="-320" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="DLX_Top">
            <timestamp>2020-6-23T13:12:10</timestamp>
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
        <block symbolname="IO_LOGIC_U" name="XLXI_23">
            <blockpin signalname="AS_N" name="AS_N_i" />
            <blockpin signalname="fpgaClk_i" name="fpgaClk_i" />
            <blockpin signalname="IN_INIT" name="in_init_i" />
            <blockpin signalname="RACK_N" name="RACK_N_i" />
            <blockpin signalname="SACK_N" name="SACK_N_i" />
            <blockpin signalname="sdClkFb_i" name="sdClkFb_i" />
            <blockpin signalname="WR_OUT_N" name="WR_N_i" />
            <blockpin signalname="MAO(31:0)" name="MA_i(31:0)" />
            <blockpin signalname="MDO(31:0)" name="MD_i(31:0)" />
            <blockpin signalname="R_DO(31:0)" name="RD_i(31:0)" />
            <blockpin signalname="SDO(31:0)" name="SD_i(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ACK_N" name="MACK_N_o" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="Rsel" name="Rsel_o" />
            <blockpin signalname="sdCas_bo" name="sdCas_bo" />
            <blockpin signalname="sdCe_bo" name="sdCe_bo" />
            <blockpin signalname="sdCke_o" name="sdCke_o" />
            <blockpin signalname="sdClk_o" name="sdClk_o" />
            <blockpin signalname="sdDqmh_o" name="sdDqmh_o" />
            <blockpin signalname="sdDqml_o" name="sdDqml_o" />
            <blockpin signalname="sdRas_bo" name="sdRas_bo" />
            <blockpin signalname="sdWe_bo" name="sdWe_bo" />
            <blockpin signalname="Card_Sel" name="Ssel_o" />
            <blockpin signalname="STEP_EN" name="step_en_o" />
            <blockpin signalname="WR_IN_N" name="WR_N_o" />
            <blockpin signalname="AI(9:0)" name="A_o(9:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="sdAddr_o(12:0)" name="sdAddr_o(12:0)" />
            <blockpin signalname="sdBs_o(1:0)" name="sdBs_o(1:0)" />
            <blockpin signalname="sdData_io(15:0)" name="sdData_io(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_35">
            <blockpin signalname="AS_N" name="I" />
            <blockpin signalname="Monitored_data(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_36">
            <blockpin signalname="WR_OUT_N" name="I" />
            <blockpin signalname="Monitored_data(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_37">
            <blockpin signalname="ACK_N" name="I" />
            <blockpin signalname="Monitored_data(4)" name="O" />
        </block>
        <block symbolname="Monitor" name="XLXI_29">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="Card_Sel" name="CARDSEL" />
            <blockpin signalname="WR_IN_N" name="WR_N" />
            <blockpin signalname="MAO(31:0)" name="C(31:0)" />
            <blockpin signalname="Monitored_data(31:0)" name="Monitored(31:0)" />
            <blockpin signalname="REG_OUT(31:0)" name="D(31:0)" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="IN_INIT" name="in_init" />
            <blockpin signalname="SDO(31:0)" name="SDO(31:0)" />
            <blockpin signalname="reg_addr(4:0)" name="reg_addr(4:0)" />
            <blockpin signalname="SACK_N" name="SACK_N" />
        </block>
        <block symbolname="DLX_Top" name="XLXI_46">
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="reg_addr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="DO(31:0)" name="DI(31:0)" />
            <blockpin signalname="Monitored_data(16)" name="aeqz" />
            <blockpin signalname="Monitored_data(14)" name="mw" />
            <blockpin signalname="WR_OUT_N" name="WR_N" />
            <blockpin signalname="Monitored_data(15)" name="busy" />
            <blockpin signalname="Monitored_data(13)" name="mr" />
            <blockpin name="Asel" />
            <blockpin name="MDRsel" />
            <blockpin signalname="Monitored_data(17)" name="jlink" />
            <blockpin name="DINTsel" />
            <blockpin signalname="Monitored_data(23)" name="Ace" />
            <blockpin signalname="Monitored_data(24)" name="Cce" />
            <blockpin signalname="Monitored_data(25)" name="PCce" />
            <blockpin name="MARce" />
            <blockpin signalname="Monitored_data(26)" name="Bce" />
            <blockpin name="MDRce" />
            <blockpin signalname="Monitored_data(27)" name="GPR_WE" />
            <blockpin signalname="IN_INIT" name="in_init" />
            <blockpin signalname="Monitored_data(9:5)" name="DLXs(4:0)" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="Monitored_data(12)" name="in_halt" />
            <blockpin signalname="Monitored_data(21)" name="shift" />
            <blockpin name="S1sel(1:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="REG_OUT(31:0)" name="D(31:0)" />
            <blockpin signalname="MDO(31:0)" name="DO(31:0)" />
            <blockpin name="S2sel(1:0)" />
            <blockpin signalname="Monitored_data(11:10)" name="MACs(1:0)" />
            <blockpin signalname="Monitored_data(20)" name="add" />
            <blockpin signalname="Monitored_data(19)" name="test" />
            <blockpin signalname="Monitored_data(18)" name="Itype" />
            <blockpin signalname="Monitored_data(22)" name="right" />
            <blockpin signalname="Monitored_data(28)" name="IRce" />
        </block>
        <block symbolname="buf" name="XLXI_31">
            <blockpin signalname="IN_INIT" name="I" />
            <blockpin signalname="Monitored_data(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_32">
            <blockpin signalname="STEP_EN" name="I" />
            <blockpin signalname="Monitored_data(1)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="208" type="branch" />
            <wire x2="432" y1="208" y2="208" x1="240" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="256" type="branch" />
            <wire x2="528" y1="256" y2="256" x1="240" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="304" type="branch" />
            <wire x2="432" y1="304" y2="304" x1="240" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="352" type="branch" />
            <wire x2="432" y1="352" y2="352" x1="240" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="400" type="branch" />
            <wire x2="432" y1="400" y2="400" x1="240" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="2080" type="branch" />
            <wire x2="448" y1="2080" y2="2080" x1="240" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="2032" type="branch" />
            <wire x2="448" y1="2032" y2="2032" x1="240" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1984" type="branch" />
            <wire x2="448" y1="1984" y2="1984" x1="240" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1936" type="branch" />
            <wire x2="448" y1="1936" y2="1936" x1="240" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1888" type="branch" />
            <wire x2="448" y1="1888" y2="1888" x1="240" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1632" type="branch" />
            <wire x2="448" y1="1632" y2="1632" x1="240" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1024" type="branch" />
            <wire x2="448" y1="1024" y2="1024" x1="256" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1072" type="branch" />
            <wire x2="448" y1="1072" y2="1072" x1="256" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1120" type="branch" />
            <wire x2="448" y1="1120" y2="1120" x1="256" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1168" type="branch" />
            <wire x2="448" y1="1168" y2="1168" x1="256" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="268" y="488">Master I/O</text>
        <text style="fontsize:32;fontname:Arial" x="284" y="1232">Control I/O</text>
        <text style="fontsize:32;fontname:Arial" x="256" y="1692">Bus data O</text>
        <text style="fontsize:32;fontname:Arial" x="280" y="2140">Slave I/O</text>
        <instance x="2640" y="496" name="XLXI_35" orien="R0" />
        <instance x="2640" y="624" name="XLXI_36" orien="R0" />
        <instance x="2640" y="736" name="XLXI_37" orien="R0" />
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="464" type="branch" />
            <wire x2="2640" y1="464" y2="464" x1="2512" />
        </branch>
        <branch name="Monitored_data(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="464" type="branch" />
            <wire x2="3040" y1="464" y2="464" x1="2864" />
        </branch>
        <branch name="Monitored_data(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="592" type="branch" />
            <wire x2="3040" y1="592" y2="592" x1="2864" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="592" type="branch" />
            <wire x2="2640" y1="592" y2="592" x1="2496" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="704" type="branch" />
            <wire x2="2640" y1="704" y2="704" x1="2496" />
        </branch>
        <branch name="Monitored_data(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3056" y="704" type="branch" />
            <wire x2="3056" y1="704" y2="704" x1="2864" />
        </branch>
        <branch name="Monitored_data(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="2256" type="branch" />
            <wire x2="2768" y1="2256" y2="2256" x1="2672" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="1936" type="branch" />
            <wire x2="2768" y1="1936" y2="1936" x1="2544" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="2000" type="branch" />
            <wire x2="2768" y1="2000" y2="2000" x1="2528" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="2064" type="branch" />
            <wire x2="2768" y1="2064" y2="2064" x1="2512" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="2128" type="branch" />
            <wire x2="2768" y1="2128" y2="2128" x1="2512" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3296" y="2512" type="branch" />
            <wire x2="3296" y1="2512" y2="2512" x1="3216" />
        </branch>
        <branch name="reg_addr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="2224" type="branch" />
            <wire x2="3264" y1="2224" y2="2224" x1="3216" />
        </branch>
        <instance x="2768" y="2544" name="XLXI_29" orien="R0">
        </instance>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1936" type="branch" />
            <wire x2="3328" y1="1936" y2="1936" x1="3216" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="2448" type="branch" />
            <wire x2="2768" y1="2448" y2="2448" x1="2608" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="2512" type="branch" />
            <wire x2="2768" y1="2512" y2="2512" x1="2608" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2384" type="branch" />
            <wire x2="2768" y1="2384" y2="2384" x1="2576" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2192" type="branch" />
            <wire x2="2768" y1="2192" y2="2192" x1="2656" />
        </branch>
        <branch name="REG_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="2320" type="branch" />
            <wire x2="2768" y1="2320" y2="2320" x1="2624" />
        </branch>
        <instance x="1184" y="2192" name="XLXI_46" orien="R0">
        </instance>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="112" type="branch" />
            <wire x2="1184" y1="112" y2="112" x1="688" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="512" type="branch" />
            <wire x2="1184" y1="512" y2="512" x1="704" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="912" type="branch" />
            <wire x2="1184" y1="912" y2="912" x1="656" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="1312" type="branch" />
            <wire x2="1184" y1="1312" y2="1312" x1="704" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="2112" type="branch" />
            <wire x2="1184" y1="2112" y2="2112" x1="736" />
        </branch>
        <branch name="reg_addr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1712" type="branch" />
            <wire x2="1184" y1="1712" y2="1712" x1="752" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="240" type="branch" />
            <wire x2="2048" y1="240" y2="240" x1="1568" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1264" type="branch" />
            <wire x2="2000" y1="1264" y2="1264" x1="1568" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="1136" type="branch" />
            <wire x2="1968" y1="1136" y2="1136" x1="1568" />
        </branch>
        <branch name="REG_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1648" type="branch" />
            <wire x2="2080" y1="1648" y2="1648" x1="1568" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1584" type="branch" />
            <wire x2="2080" y1="1584" y2="1584" x1="1568" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1712" type="branch" />
            <wire x2="2144" y1="1712" y2="1712" x1="1568" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1328" type="branch" />
            <wire x2="2032" y1="1328" y2="1328" x1="1568" />
        </branch>
        <instance x="2640" y="256" name="XLXI_31" orien="R0" />
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="224" type="branch" />
            <wire x2="2640" y1="224" y2="224" x1="2560" />
        </branch>
        <branch name="Monitored_data(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="224" type="branch" />
            <wire x2="2992" y1="224" y2="224" x1="2864" />
        </branch>
        <instance x="2672" y="384" name="XLXI_32" orien="R0" />
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="352" type="branch" />
            <wire x2="2672" y1="352" y2="352" x1="2576" />
        </branch>
        <branch name="Monitored_data(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="352" type="branch" />
            <wire x2="3024" y1="352" y2="352" x1="2896" />
        </branch>
        <branch name="Monitored_data(9:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1200" type="branch" />
            <wire x2="2032" y1="1200" y2="1200" x1="1568" />
        </branch>
        <branch name="Monitored_data(11:10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1840" type="branch" />
            <wire x2="2032" y1="1840" y2="1840" x1="1568" />
        </branch>
        <branch name="Monitored_data(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1392" type="branch" />
            <wire x2="2016" y1="1392" y2="1392" x1="1568" />
        </branch>
        <branch name="Monitored_data(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="304" type="branch" />
            <wire x2="2016" y1="304" y2="304" x1="1568" />
        </branch>
        <branch name="Monitored_data(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="368" type="branch" />
            <wire x2="2032" y1="368" y2="368" x1="1568" />
        </branch>
        <branch name="Monitored_data(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="176" type="branch" />
            <wire x2="2000" y1="176" y2="176" x1="1568" />
        </branch>
        <branch name="Monitored_data(16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="112" type="branch" />
            <wire x2="1984" y1="112" y2="112" x1="1568" />
        </branch>
        <branch name="Monitored_data(17)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="560" type="branch" />
            <wire x2="1984" y1="560" y2="560" x1="1568" />
        </branch>
        <branch name="Monitored_data(21)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1456" type="branch" />
            <wire x2="2032" y1="1456" y2="1456" x1="1568" />
        </branch>
        <branch name="Monitored_data(20)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1904" type="branch" />
            <wire x2="1952" y1="1904" y2="1904" x1="1568" />
        </branch>
        <branch name="Monitored_data(19)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="1968" type="branch" />
            <wire x2="1968" y1="1968" y2="1968" x1="1568" />
        </branch>
        <branch name="Monitored_data(18)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2032" type="branch" />
            <wire x2="2000" y1="2032" y2="2032" x1="1568" />
        </branch>
        <branch name="Monitored_data(22)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="2096" type="branch" />
            <wire x2="1984" y1="2096" y2="2096" x1="1568" />
        </branch>
        <branch name="Monitored_data(27)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1072" type="branch" />
            <wire x2="2032" y1="1072" y2="1072" x1="1568" />
        </branch>
        <branch name="Monitored_data(23)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="688" type="branch" />
            <wire x2="1952" y1="688" y2="688" x1="1568" />
        </branch>
        <branch name="Monitored_data(25)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="816" type="branch" />
            <wire x2="1936" y1="816" y2="816" x1="1568" />
        </branch>
        <branch name="Monitored_data(24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="752" type="branch" />
            <wire x2="1952" y1="752" y2="752" x1="1568" />
        </branch>
        <branch name="Monitored_data(26)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="944" type="branch" />
            <wire x2="1936" y1="944" y2="944" x1="1568" />
        </branch>
        <branch name="Monitored_data(28)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2160" type="branch" />
            <wire x2="1936" y1="2160" y2="2160" x1="1568" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1632" type="branch" />
            <wire x2="2240" y1="1632" y2="1632" x1="1840" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1568" type="branch" />
            <wire x2="2240" y1="1568" y2="1568" x1="1840" />
        </branch>
        <branch name="sdClk_o">
            <wire x2="1856" y1="1056" y2="1056" x1="1840" />
            <wire x2="1904" y1="1056" y2="1056" x1="1856" />
        </branch>
        <branch name="sdBs_o(1:0)">
            <wire x2="1856" y1="1760" y2="1760" x1="1840" />
            <wire x2="1904" y1="1760" y2="1760" x1="1856" />
        </branch>
        <branch name="sdDqml_o">
            <wire x2="1856" y1="1184" y2="1184" x1="1840" />
            <wire x2="1904" y1="1184" y2="1184" x1="1856" />
        </branch>
        <branch name="sdDqmh_o">
            <wire x2="1856" y1="1120" y2="1120" x1="1840" />
            <wire x2="1904" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="sdWe_bo">
            <wire x2="1856" y1="1312" y2="1312" x1="1840" />
            <wire x2="1904" y1="1312" y2="1312" x1="1856" />
        </branch>
        <branch name="sdCas_bo">
            <wire x2="1856" y1="864" y2="864" x1="1840" />
            <wire x2="1888" y1="864" y2="864" x1="1856" />
        </branch>
        <branch name="sdRas_bo">
            <wire x2="1856" y1="1248" y2="1248" x1="1840" />
            <wire x2="1904" y1="1248" y2="1248" x1="1856" />
        </branch>
        <branch name="sdCe_bo">
            <wire x2="1856" y1="928" y2="928" x1="1840" />
            <wire x2="1888" y1="928" y2="928" x1="1856" />
        </branch>
        <branch name="sdCke_o">
            <wire x2="1856" y1="992" y2="992" x1="1840" />
            <wire x2="1888" y1="992" y2="992" x1="1856" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="832" type="branch" />
            <wire x2="1408" y1="832" y2="832" x1="1360" />
        </branch>
        <branch name="fpgaClk_i">
            <wire x2="1408" y1="720" y2="720" x1="1376" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1392" type="branch" />
            <wire x2="1408" y1="1392" y2="1392" x1="1344" />
        </branch>
        <branch name="R_DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1616" type="branch" />
            <wire x2="1408" y1="1616" y2="1616" x1="1328" />
        </branch>
        <instance x="1408" y="1856" name="XLXI_23" orien="R0">
        </instance>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="608" type="branch" />
            <wire x2="1408" y1="608" y2="608" x1="1360" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1280" type="branch" />
            <wire x2="1408" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="RACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="944" type="branch" />
            <wire x2="1408" y1="944" y2="944" x1="1360" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1056" type="branch" />
            <wire x2="1408" y1="1056" y2="1056" x1="1344" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1504" type="branch" />
            <wire x2="1408" y1="1504" y2="1504" x1="1344" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1728" type="branch" />
            <wire x2="1408" y1="1728" y2="1728" x1="1344" />
        </branch>
        <branch name="sdClkFb_i">
            <wire x2="1408" y1="1168" y2="1168" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1168" name="sdClkFb_i" orien="R180" />
        <iomarker fontsize="28" x="1376" y="720" name="fpgaClk_i" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="736" type="branch" />
            <wire x2="1904" y1="736" y2="736" x1="1840" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="608" type="branch" />
            <wire x2="1904" y1="608" y2="608" x1="1840" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1440" type="branch" />
            <wire x2="1920" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1504" type="branch" />
            <wire x2="1936" y1="1504" y2="1504" x1="1840" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="672" type="branch" />
            <wire x2="1936" y1="672" y2="672" x1="1840" />
        </branch>
        <branch name="Rsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="800" type="branch" />
            <wire x2="1936" y1="800" y2="800" x1="1840" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1376" type="branch" />
            <wire x2="1936" y1="1376" y2="1376" x1="1840" />
        </branch>
        <branch name="sdData_io(15:0)">
            <wire x2="1856" y1="1824" y2="1824" x1="1840" />
            <wire x2="1904" y1="1824" y2="1824" x1="1856" />
        </branch>
        <branch name="sdAddr_o(12:0)">
            <wire x2="1904" y1="1696" y2="1696" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1696" name="sdAddr_o(12:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1824" name="sdData_io(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1056" name="sdClk_o" orien="R0" />
        <iomarker fontsize="28" x="1888" y="864" name="sdCas_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="928" name="sdCe_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="992" name="sdCke_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1184" name="sdDqml_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1120" name="sdDqmh_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1312" name="sdWe_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1248" name="sdRas_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1760" name="sdBs_o(1:0)" orien="R0" />
    </sheet>
</drawing>
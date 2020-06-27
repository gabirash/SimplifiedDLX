<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Creg(31:0)" />
        <signal name="XLXN_51(31:0)" />
        <signal name="XLXN_52(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="Areg(31:0)" />
        <signal name="Breg(31:0)" />
        <signal name="DO(31:0)" />
        <signal name="sextimm(31:0)" />
        <signal name="XLXN_63(31:0)" />
        <signal name="XLXN_64(31:0)" />
        <signal name="D(31:0)" />
        <signal name="XLXN_93(31:0)" />
        <signal name="XLXN_98(31:0)" />
        <signal name="DINTO(31:0)" />
        <signal name="ALUF(2:0)" />
        <signal name="XLXN_99(31:0)" />
        <signal name="XLXN_100(31:0)" />
        <signal name="PCreg(31:0)" />
        <signal name="MARreg(31:0)" />
        <signal name="AO(31:0)" />
        <signal name="AEQZ" />
        <signal name="MAO(31:0)" />
        <signal name="PCce" />
        <signal name="MARce" />
        <signal name="MDRce" />
        <signal name="GPR_WE" />
        <signal name="S1sel(1:0)" />
        <signal name="S2sel(1:0)" />
        <signal name="add" />
        <signal name="test" />
        <signal name="Itype" />
        <signal name="jlink" />
        <signal name="shift" />
        <signal name="right" />
        <signal name="Asel" />
        <signal name="MDRsel" />
        <signal name="DINTsel" />
        <signal name="IRce" />
        <signal name="Ace" />
        <signal name="Bce" />
        <signal name="Cce" />
        <signal name="reset" />
        <signal name="Inst(31:0)" />
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="Cadr(4:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="DI(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="MAO(31:0)" />
        <port polarity="Input" name="PCce" />
        <port polarity="Input" name="MARce" />
        <port polarity="Input" name="MDRce" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="S1sel(1:0)" />
        <port polarity="Input" name="S2sel(1:0)" />
        <port polarity="Input" name="add" />
        <port polarity="Input" name="test" />
        <port polarity="Input" name="Itype" />
        <port polarity="Input" name="jlink" />
        <port polarity="Input" name="shift" />
        <port polarity="Input" name="right" />
        <port polarity="Input" name="Asel" />
        <port polarity="Input" name="MDRsel" />
        <port polarity="Input" name="DINTsel" />
        <port polarity="Input" name="IRce" />
        <port polarity="Input" name="Ace" />
        <port polarity="Input" name="Bce" />
        <port polarity="Input" name="Cce" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="Inst(31:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <blockdef name="REG32CE">
            <timestamp>2020-5-21T18:8:20</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="REG32RST">
            <timestamp>2020-5-21T18:8:20</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="MUX32bit">
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
        <blockdef name="GPR_Env">
            <timestamp>2020-5-28T14:47:46</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DLX_IRenvi">
            <timestamp>2020-6-15T14:35:24</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="DLX_MMU">
            <timestamp>2020-6-15T14:35:50</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="InsParser">
            <timestamp>2020-6-23T15:21:35</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="MUX4_32bit">
            <timestamp>2020-5-21T18:8:12</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="ALU_Envi">
            <timestamp>2020-6-15T8:47:30</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="SHIFTEnvi">
            <timestamp>2020-6-23T15:43:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="DLXS2Consts">
            <timestamp>2020-6-22T11:43:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="REG32CE" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="Cce" name="CE" />
            <blockpin signalname="DINTO(31:0)" name="DIN(31:0)" />
            <blockpin signalname="Creg(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_3">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="Bce" name="CE" />
            <blockpin signalname="XLXN_51(31:0)" name="DIN(31:0)" />
            <blockpin signalname="Breg(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_4">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="Ace" name="CE" />
            <blockpin signalname="XLXN_52(31:0)" name="DIN(31:0)" />
            <blockpin signalname="Areg(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_5">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="MDRce" name="CE" />
            <blockpin signalname="XLXN_53(31:0)" name="DIN(31:0)" />
            <blockpin signalname="DO(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32RST" name="XLXI_6">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="PCce" name="CE" />
            <blockpin signalname="reset" name="RST" />
            <blockpin signalname="DINTO(31:0)" name="DIN(31:0)" />
            <blockpin signalname="PCreg(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_7">
            <blockpin signalname="MDRsel" name="sel" />
            <blockpin signalname="DINTO(31:0)" name="A(31:0)" />
            <blockpin signalname="DI(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="GPR_Env" name="XLXI_8">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Aadr(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="Badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="Creg(31:0)" name="C(31:0)" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="AEQZ" name="AEQZ_out" />
            <blockpin signalname="XLXN_52(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_51(31:0)" name="B(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
        </block>
        <block symbolname="DLX_IRenvi" name="XLXI_10">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="DI(31:0)" name="D_in(31:0)" />
            <blockpin signalname="Inst(31:0)" name="IR_OUT(31:0)" />
            <blockpin signalname="sextimm(31:0)" name="sext_imm(31:0)" />
        </block>
        <block symbolname="DLXS2Consts" name="XLXI_53">
            <blockpin signalname="XLXN_63(31:0)" name="S22(31:0)" />
            <blockpin signalname="XLXN_64(31:0)" name="S23(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_1">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="MARce" name="CE" />
            <blockpin signalname="DINTO(31:0)" name="DIN(31:0)" />
            <blockpin signalname="MARreg(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="DLX_MMU" name="XLXI_11">
            <blockpin signalname="AO(31:0)" name="AO(31:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_18">
            <blockpin signalname="Asel" name="sel" />
            <blockpin signalname="PCreg(31:0)" name="A(31:0)" />
            <blockpin signalname="MARreg(31:0)" name="B(31:0)" />
            <blockpin signalname="AO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="XLXI_14">
            <blockpin signalname="Breg(31:0)" name="A0(31:0)" />
            <blockpin signalname="sextimm(31:0)" name="A1(31:0)" />
            <blockpin signalname="XLXN_63(31:0)" name="A2(31:0)" />
            <blockpin signalname="XLXN_64(31:0)" name="A3(31:0)" />
            <blockpin signalname="S2sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_93(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX4_32bit" name="XLXI_13">
            <blockpin signalname="PCreg(31:0)" name="A0(31:0)" />
            <blockpin signalname="Areg(31:0)" name="A1(31:0)" />
            <blockpin signalname="Breg(31:0)" name="A2(31:0)" />
            <blockpin signalname="DO(31:0)" name="A3(31:0)" />
            <blockpin signalname="S1sel(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_98(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="ALU_Envi" name="XLXI_15">
            <blockpin signalname="XLXN_98(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_93(31:0)" name="B(31:0)" />
            <blockpin signalname="ALUF(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="XLXN_99(31:0)" name="ALUOUT(31:0)" />
        </block>
        <block symbolname="SHIFTEnvi" name="XLXI_16">
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="XLXN_98(31:0)" name="di(31:0)" />
            <blockpin signalname="XLXN_100(31:0)" name="do(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_17">
            <blockpin signalname="DINTsel" name="sel" />
            <blockpin signalname="XLXN_99(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_100(31:0)" name="B(31:0)" />
            <blockpin signalname="DINTO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="InsParser" name="XLXI_12">
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="jlink" name="Jlink" />
            <blockpin signalname="Inst(31:0)" name="inst(31:0)" />
            <blockpin signalname="Aadr(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="Badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="ALUF(2:0)" name="ALUF(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="clk">
            <wire x2="320" y1="96" y2="96" x1="192" />
        </branch>
        <instance x="832" y="1424" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1456" y="1120" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1456" y="1888" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Creg(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1328" type="branch" />
            <wire x2="656" y1="1136" y2="1136" x1="624" />
            <wire x2="656" y1="1136" y2="1328" x1="656" />
            <wire x2="672" y1="1328" y2="1328" x1="656" />
            <wire x2="832" y1="1328" y2="1328" x1="672" />
        </branch>
        <branch name="XLXN_51(31:0)">
            <wire x2="1296" y1="1264" y2="1264" x1="1216" />
            <wire x2="1296" y1="1088" y2="1264" x1="1296" />
            <wire x2="1456" y1="1088" y2="1088" x1="1296" />
        </branch>
        <branch name="XLXN_52(31:0)">
            <wire x2="1376" y1="1136" y2="1136" x1="1216" />
            <wire x2="1376" y1="1136" y2="1408" x1="1376" />
            <wire x2="1488" y1="1408" y2="1408" x1="1376" />
        </branch>
        <branch name="XLXN_53(31:0)">
            <wire x2="1232" y1="656" y2="656" x1="1216" />
            <wire x2="1232" y1="656" y2="784" x1="1232" />
            <wire x2="1440" y1="784" y2="784" x1="1232" />
        </branch>
        <branch name="Areg(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="1280" type="branch" />
            <wire x2="1952" y1="1280" y2="1280" x1="1872" />
            <wire x2="2384" y1="1280" y2="1280" x1="1952" />
            <wire x2="2400" y1="1056" y2="1056" x1="2384" />
            <wire x2="2384" y1="1056" y2="1280" x1="2384" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="656" type="branch" />
            <wire x2="2112" y1="656" y2="656" x1="1824" />
            <wire x2="2112" y1="656" y2="1184" x1="2112" />
            <wire x2="2400" y1="1184" y2="1184" x1="2112" />
            <wire x2="2176" y1="656" y2="656" x1="2112" />
        </branch>
        <instance x="1408" y="320" name="XLXI_10" orien="R0">
        </instance>
        <branch name="sextimm(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="208" type="branch" />
            <wire x2="1840" y1="288" y2="288" x1="1824" />
            <wire x2="1840" y1="208" y2="288" x1="1840" />
            <wire x2="2032" y1="208" y2="208" x1="1840" />
            <wire x2="2384" y1="208" y2="208" x1="2032" />
        </branch>
        <instance x="1248" y="544" name="XLXI_53" orien="R0">
        </instance>
        <instance x="832" y="816" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1440" y="816" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_63(31:0)">
            <wire x2="2016" y1="448" y2="448" x1="1632" />
            <wire x2="2016" y1="272" y2="448" x1="2016" />
            <wire x2="2384" y1="272" y2="272" x1="2016" />
        </branch>
        <branch name="XLXN_64(31:0)">
            <wire x2="2096" y1="512" y2="512" x1="1632" />
            <wire x2="2384" y1="336" y2="336" x1="2096" />
            <wire x2="2096" y1="336" y2="512" x1="2096" />
        </branch>
        <branch name="AEQZ">
            <wire x2="5056" y1="112" y2="112" x1="4928" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="5056" y1="160" y2="160" x1="4928" />
        </branch>
        <branch name="DO(31:0)">
            <wire x2="5056" y1="208" y2="208" x1="4912" />
        </branch>
        <branch name="MAO(31:0)">
            <wire x2="5056" y1="256" y2="256" x1="4928" />
        </branch>
        <branch name="XLXN_93(31:0)">
            <wire x2="2784" y1="144" y2="144" x1="2768" />
            <wire x2="2784" y1="144" y2="544" x1="2784" />
            <wire x2="3104" y1="544" y2="544" x1="2784" />
        </branch>
        <branch name="DINTO(31:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="880" type="branch" />
            <wire x2="4064" y1="720" y2="720" x1="4048" />
            <wire x2="4064" y1="720" y2="848" x1="4064" />
            <wire x2="4192" y1="848" y2="848" x1="4064" />
            <wire x2="4064" y1="848" y2="880" x1="4064" />
        </branch>
        <instance x="2384" y="432" name="XLXI_14" orien="R0">
        </instance>
        <instance x="2400" y="1280" name="XLXI_13" orien="R0">
        </instance>
        <branch name="S2sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="400" type="branch" />
            <wire x2="2384" y1="400" y2="400" x1="2336" />
        </branch>
        <branch name="S1sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1248" type="branch" />
            <wire x2="2400" y1="1248" y2="1248" x1="2352" />
        </branch>
        <branch name="Breg(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1024" type="branch" />
            <wire x2="1936" y1="960" y2="960" x1="1840" />
            <wire x2="1936" y1="960" y2="1024" x1="1936" />
            <wire x2="1936" y1="1024" y2="1120" x1="1936" />
            <wire x2="2400" y1="1120" y2="1120" x1="1936" />
            <wire x2="2384" y1="144" y2="144" x1="1936" />
            <wire x2="1936" y1="144" y2="960" x1="1936" />
        </branch>
        <instance x="3104" y="768" name="XLXI_15" orien="R0">
        </instance>
        <instance x="3152" y="1184" name="XLXI_16" orien="R0">
        </instance>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="608" type="branch" />
            <wire x2="3104" y1="608" y2="608" x1="3040" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="672" type="branch" />
            <wire x2="3104" y1="672" y2="672" x1="3040" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="736" type="branch" />
            <wire x2="3104" y1="736" y2="736" x1="3040" />
        </branch>
        <branch name="XLXN_99(31:0)">
            <wire x2="3504" y1="480" y2="480" x1="3488" />
            <wire x2="3504" y1="480" y2="784" x1="3504" />
            <wire x2="3664" y1="784" y2="784" x1="3504" />
        </branch>
        <branch name="XLXN_98(31:0)">
            <wire x2="2848" y1="992" y2="992" x1="2784" />
            <wire x2="2848" y1="992" y2="1152" x1="2848" />
            <wire x2="3152" y1="1152" y2="1152" x1="2848" />
            <wire x2="2848" y1="480" y2="992" x1="2848" />
            <wire x2="3104" y1="480" y2="480" x1="2848" />
        </branch>
        <branch name="XLXN_100(31:0)">
            <wire x2="3584" y1="1024" y2="1024" x1="3536" />
            <wire x2="3664" y1="848" y2="848" x1="3584" />
            <wire x2="3584" y1="848" y2="1024" x1="3584" />
        </branch>
        <instance x="3664" y="880" name="XLXI_17" orien="R0">
        </instance>
        <branch name="DINTsel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3632" y="720" type="branch" />
            <wire x2="3664" y1="720" y2="720" x1="3632" />
        </branch>
        <instance x="4192" y="880" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4176" y="720" type="branch" />
            <wire x2="4192" y1="720" y2="720" x1="4176" />
        </branch>
        <branch name="MARce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4176" y="784" type="branch" />
            <wire x2="4192" y1="784" y2="784" x1="4176" />
        </branch>
        <branch name="PCreg(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1664" type="branch" />
            <wire x2="1936" y1="1664" y2="1664" x1="1840" />
            <wire x2="2080" y1="1664" y2="1664" x1="1936" />
            <wire x2="4640" y1="1664" y2="1664" x1="2080" />
            <wire x2="2080" y1="992" y2="1664" x1="2080" />
            <wire x2="2400" y1="992" y2="992" x1="2080" />
            <wire x2="4640" y1="784" y2="1664" x1="4640" />
            <wire x2="4736" y1="784" y2="784" x1="4640" />
        </branch>
        <branch name="MARreg(31:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4592" y="768" type="branch" />
            <wire x2="4592" y1="720" y2="720" x1="4576" />
            <wire x2="4592" y1="720" y2="768" x1="4592" />
            <wire x2="4592" y1="768" y2="848" x1="4592" />
            <wire x2="4736" y1="848" y2="848" x1="4592" />
        </branch>
        <instance x="4560" y="1856" name="XLXI_11" orien="R0">
        </instance>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5136" y="720" type="branch" />
            <wire x2="5136" y1="720" y2="720" x1="5120" />
        </branch>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4528" y="1824" type="branch" />
            <wire x2="4560" y1="1824" y2="1824" x1="4528" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="1136" type="branch" />
            <wire x2="240" y1="1136" y2="1136" x1="144" />
        </branch>
        <branch name="MDRsel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="656" type="branch" />
            <wire x2="832" y1="656" y2="656" x1="784" />
        </branch>
        <branch name="DINTO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="720" type="branch" />
            <wire x2="832" y1="720" y2="720" x1="784" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="784" type="branch" />
            <wire x2="832" y1="784" y2="784" x1="768" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1008" type="branch" />
            <wire x2="832" y1="1008" y2="1008" x1="784" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1072" type="branch" />
            <wire x2="832" y1="1072" y2="1072" x1="784" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1136" type="branch" />
            <wire x2="832" y1="1136" y2="1136" x1="784" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1200" type="branch" />
            <wire x2="832" y1="1200" y2="1200" x1="784" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1264" type="branch" />
            <wire x2="832" y1="1264" y2="1264" x1="784" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1392" type="branch" />
            <wire x2="832" y1="1392" y2="1392" x1="784" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1008" type="branch" />
            <wire x2="1248" y1="1008" y2="1008" x1="1216" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1392" type="branch" />
            <wire x2="1264" y1="1392" y2="1392" x1="1216" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="160" type="branch" />
            <wire x2="1408" y1="160" y2="160" x1="1392" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="224" type="branch" />
            <wire x2="1408" y1="224" y2="224" x1="1392" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="288" type="branch" />
            <wire x2="1408" y1="288" y2="288" x1="1392" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="656" type="branch" />
            <wire x2="1440" y1="656" y2="656" x1="1408" />
        </branch>
        <branch name="MDRce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="720" type="branch" />
            <wire x2="1440" y1="720" y2="720" x1="1408" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="960" type="branch" />
            <wire x2="1456" y1="960" y2="960" x1="1424" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1024" type="branch" />
            <wire x2="1456" y1="1024" y2="1024" x1="1424" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1280" type="branch" />
            <wire x2="1488" y1="1280" y2="1280" x1="1424" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1664" type="branch" />
            <wire x2="1456" y1="1664" y2="1664" x1="1424" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1728" type="branch" />
            <wire x2="1456" y1="1728" y2="1728" x1="1424" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1792" type="branch" />
            <wire x2="1456" y1="1792" y2="1792" x1="1408" />
        </branch>
        <branch name="DINTO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1856" type="branch" />
            <wire x2="1456" y1="1856" y2="1856" x1="1408" />
        </branch>
        <branch name="shift">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="1024" type="branch" />
            <wire x2="3152" y1="1024" y2="1024" x1="3120" />
        </branch>
        <branch name="right">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="1088" type="branch" />
            <wire x2="3152" y1="1088" y2="1088" x1="3120" />
        </branch>
        <instance x="4736" y="880" name="XLXI_18" orien="R0">
        </instance>
        <branch name="Asel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4704" y="720" type="branch" />
            <wire x2="4736" y1="720" y2="720" x1="4704" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5008" y="1824" type="branch" />
            <wire x2="5008" y1="1824" y2="1824" x1="4944" />
        </branch>
        <iomarker fontsize="28" x="192" y="96" name="clk" orien="R180" />
        <branch name="PCce">
            <wire x2="448" y1="1456" y2="1456" x1="320" />
        </branch>
        <branch name="MARce">
            <wire x2="448" y1="1504" y2="1504" x1="320" />
        </branch>
        <branch name="MDRce">
            <wire x2="448" y1="1552" y2="1552" x1="304" />
        </branch>
        <iomarker fontsize="28" x="320" y="1456" name="PCce" orien="R180" />
        <iomarker fontsize="28" x="320" y="1504" name="MARce" orien="R180" />
        <iomarker fontsize="28" x="304" y="1552" name="MDRce" orien="R180" />
        <branch name="GPR_WE">
            <wire x2="480" y1="1648" y2="1648" x1="352" />
        </branch>
        <branch name="S1sel(1:0)">
            <wire x2="480" y1="1696" y2="1696" x1="352" />
        </branch>
        <branch name="S2sel(1:0)">
            <wire x2="480" y1="1744" y2="1744" x1="336" />
        </branch>
        <iomarker fontsize="28" x="352" y="1648" name="GPR_WE" orien="R180" />
        <iomarker fontsize="28" x="352" y="1696" name="S1sel(1:0)" orien="R180" />
        <iomarker fontsize="28" x="336" y="1744" name="S2sel(1:0)" orien="R180" />
        <branch name="add">
            <wire x2="304" y1="208" y2="208" x1="176" />
        </branch>
        <branch name="test">
            <wire x2="304" y1="256" y2="256" x1="160" />
        </branch>
        <branch name="Itype">
            <wire x2="320" y1="336" y2="336" x1="192" />
        </branch>
        <branch name="jlink">
            <wire x2="320" y1="384" y2="384" x1="192" />
        </branch>
        <branch name="shift">
            <wire x2="320" y1="432" y2="432" x1="176" />
        </branch>
        <branch name="right">
            <wire x2="336" y1="512" y2="512" x1="208" />
        </branch>
        <branch name="Asel">
            <wire x2="336" y1="560" y2="560" x1="208" />
        </branch>
        <branch name="MDRsel">
            <wire x2="336" y1="608" y2="608" x1="192" />
        </branch>
        <branch name="DINTsel">
            <wire x2="336" y1="688" y2="688" x1="208" />
        </branch>
        <branch name="IRce">
            <wire x2="336" y1="736" y2="736" x1="208" />
        </branch>
        <branch name="Ace">
            <wire x2="336" y1="864" y2="864" x1="208" />
        </branch>
        <branch name="Bce">
            <wire x2="336" y1="912" y2="912" x1="208" />
        </branch>
        <branch name="Cce">
            <wire x2="336" y1="960" y2="960" x1="192" />
        </branch>
        <iomarker fontsize="28" x="176" y="208" name="add" orien="R180" />
        <iomarker fontsize="28" x="160" y="256" name="test" orien="R180" />
        <iomarker fontsize="28" x="192" y="336" name="Itype" orien="R180" />
        <iomarker fontsize="28" x="192" y="384" name="jlink" orien="R180" />
        <iomarker fontsize="28" x="176" y="432" name="shift" orien="R180" />
        <iomarker fontsize="28" x="208" y="512" name="right" orien="R180" />
        <iomarker fontsize="28" x="208" y="560" name="Asel" orien="R180" />
        <iomarker fontsize="28" x="192" y="608" name="MDRsel" orien="R180" />
        <iomarker fontsize="28" x="208" y="688" name="DINTsel" orien="R180" />
        <iomarker fontsize="28" x="208" y="736" name="IRce" orien="R180" />
        <iomarker fontsize="28" x="208" y="864" name="Ace" orien="R180" />
        <iomarker fontsize="28" x="208" y="912" name="Bce" orien="R180" />
        <iomarker fontsize="28" x="192" y="960" name="Cce" orien="R180" />
        <iomarker fontsize="28" x="208" y="144" name="reset" orien="R180" />
        <branch name="reset">
            <wire x2="320" y1="144" y2="144" x1="208" />
        </branch>
        <branch name="DINTO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1264" type="branch" />
            <wire x2="240" y1="1264" y2="1264" x1="208" />
        </branch>
        <instance x="240" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="1200" type="branch" />
            <wire x2="240" y1="1200" y2="1200" x1="144" />
        </branch>
        <text style="fontsize:36;fontname:Arial" x="412" y="1200">C</text>
        <branch name="Itype">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="128" type="branch" />
            <wire x2="704" y1="128" y2="128" x1="672" />
        </branch>
        <branch name="jlink">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="192" type="branch" />
            <wire x2="704" y1="192" y2="192" x1="656" />
        </branch>
        <branch name="Inst(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="64" type="branch" />
            <wire x2="1856" y1="16" y2="16" x1="576" />
            <wire x2="1856" y1="16" y2="64" x1="1856" />
            <wire x2="1856" y1="64" y2="160" x1="1856" />
            <wire x2="1936" y1="64" y2="64" x1="1856" />
            <wire x2="576" y1="16" y2="256" x1="576" />
            <wire x2="640" y1="256" y2="256" x1="576" />
            <wire x2="704" y1="256" y2="256" x1="640" />
            <wire x2="1856" y1="160" y2="160" x1="1824" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="128" type="branch" />
            <wire x2="1120" y1="128" y2="128" x1="1088" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="192" type="branch" />
            <wire x2="1120" y1="192" y2="192" x1="1088" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="256" type="branch" />
            <wire x2="1120" y1="256" y2="256" x1="1088" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="320" type="branch" />
            <wire x2="1120" y1="320" y2="320" x1="1088" />
        </branch>
        <instance x="704" y="288" name="XLXI_12" orien="R0">
        </instance>
        <branch name="Dadr(4:0)">
            <wire x2="448" y1="1840" y2="1840" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="1840" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="5056" y="112" name="AEQZ" orien="R0" />
        <iomarker fontsize="28" x="5056" y="160" name="D(31:0)" orien="R0" />
        <instance x="1488" y="1440" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Ace">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1344" type="branch" />
            <wire x2="1488" y1="1344" y2="1344" x1="1456" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="1004" y="724">MDRMUX</text>
        <branch name="DI(31:0)">
            <wire x2="432" y1="1920" y2="1920" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="1920" name="DI(31:0)" orien="R180" />
        <text style="fontsize:36;fontname:Arial" x="1616" y="1764">PCEnv.</text>
        <text style="fontsize:36;fontname:Arial" x="1668" y="1340">A</text>
        <text style="fontsize:36;fontname:Arial" x="1644" y="1028">B</text>
        <text style="fontsize:36;fontname:Arial" x="1612" y="724">MDR</text>
        <iomarker fontsize="28" x="5056" y="208" name="DO(31:0)" orien="R0" />
        <text style="fontsize:44;fontname:Arial" x="2592" y="1116">S1</text>
        <text style="fontsize:44;fontname:Arial" x="2588" y="280">S2</text>
        <text style="fontsize:36;fontname:Arial" x="3808" y="756">DINTMUX</text>
        <text style="fontsize:36;fontname:Arial" x="4380" y="792">MAR</text>
        <text style="fontsize:40;fontname:Arial" x="4912" y="792">AMUX</text>
        <iomarker fontsize="28" x="5056" y="256" name="MAO(31:0)" orien="R0" />
        <text style="fontsize:64;fontname:Arial" x="2988" y="92">DLX DATAPATH</text>
        <branch name="Inst(31:0)">
            <wire x2="5024" y1="320" y2="320" x1="4928" />
        </branch>
        <iomarker fontsize="28" x="5024" y="320" name="Inst(31:0)" orien="R0" />
    </sheet>
</drawing>
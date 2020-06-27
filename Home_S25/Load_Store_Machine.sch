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
        <signal name="DI(31:0)" />
        <signal name="IRce" />
        <signal name="Cce" />
        <signal name="PCce" />
        <signal name="Bce" />
        <signal name="GPR_WE" />
        <signal name="ADMSe" />
        <signal name="XLXN_17(4:0)" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24(31:0)" />
        <signal name="B(31:0)" />
        <signal name="MUX_O(15:0)" />
        <signal name="PC_reg(15:0)" />
        <signal name="c(31:0)" />
        <signal name="Badr(4:0)" />
        <signal name="Cadr(4:0)" />
        <signal name="imm(15:0)" />
        <signal name="D_OUT(31:0)" />
        <signal name="MAO(31:0)" />
        <signal name="opcode(5:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="D(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Input" name="IRce" />
        <port polarity="Input" name="Cce" />
        <port polarity="Input" name="PCce" />
        <port polarity="Input" name="Bce" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="ADMSe" />
        <port polarity="Output" name="D_OUT(31:0)" />
        <port polarity="Output" name="MAO(31:0)" />
        <port polarity="Output" name="opcode(5:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="D(31:0)" />
        <blockdef name="GPR_Env">
            <timestamp>2020-5-28T14:47:45</timestamp>
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
        <blockdef name="PC_Env">
            <timestamp>2020-5-28T14:49:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="IR_Envi">
            <timestamp>2020-5-28T14:44:53</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="MMU">
            <timestamp>2020-5-28T14:46:8</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
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
        <block symbolname="GPR_Env" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_17(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="Badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="c(31:0)" name="C(31:0)" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="XLXN_23" name="AEQZ_out" />
            <blockpin signalname="XLXN_24(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
        </block>
        <block symbolname="PC_Env" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="PCce" name="PC_enable" />
            <blockpin signalname="PC_reg(15:0)" name="PC_reg(15:0)" />
        </block>
        <block symbolname="IR_Envi" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="DI(31:0)" name="D_in(31:0)" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="Badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="imm(15:0)" name="imm(15:0)" />
        </block>
        <block symbolname="MUX16bit" name="XLXI_4">
            <blockpin signalname="ADMSe" name="sel" />
            <blockpin signalname="PC_reg(15:0)" name="A(15:0)" />
            <blockpin signalname="imm(15:0)" name="B(15:0)" />
            <blockpin signalname="MUX_O(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="MMU" name="XLXI_5">
            <blockpin signalname="MUX_O(15:0)" name="AO(15:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_6">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="Bce" name="CE" />
            <blockpin signalname="B(31:0)" name="DIN(31:0)" />
            <blockpin signalname="D_OUT(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_7">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="Cce" name="CE" />
            <blockpin signalname="DI(31:0)" name="DIN(31:0)" />
            <blockpin signalname="c(31:0)" name="DOUT(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="272" y1="64" y2="64" x1="160" />
        </branch>
        <branch name="reset">
            <wire x2="272" y1="112" y2="112" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="64" name="clk" orien="R180" />
        <iomarker fontsize="28" x="160" y="112" name="reset" orien="R180" />
        <branch name="DI(31:0)">
            <wire x2="272" y1="256" y2="256" x1="160" />
        </branch>
        <branch name="IRce">
            <wire x2="272" y1="304" y2="304" x1="160" />
        </branch>
        <branch name="Cce">
            <wire x2="272" y1="352" y2="352" x1="160" />
        </branch>
        <branch name="PCce">
            <wire x2="272" y1="400" y2="400" x1="160" />
        </branch>
        <branch name="Bce">
            <wire x2="272" y1="448" y2="448" x1="160" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="272" y1="496" y2="496" x1="160" />
        </branch>
        <branch name="ADMSe">
            <wire x2="272" y1="544" y2="544" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="256" name="DI(31:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="304" name="IRce" orien="R180" />
        <iomarker fontsize="28" x="160" y="352" name="Cce" orien="R180" />
        <iomarker fontsize="28" x="160" y="400" name="PCce" orien="R180" />
        <iomarker fontsize="28" x="160" y="448" name="Bce" orien="R180" />
        <iomarker fontsize="28" x="160" y="496" name="GPR_WE" orien="R180" />
        <iomarker fontsize="28" x="160" y="544" name="ADMSe" orien="R180" />
        <instance x="480" y="624" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1104" y="368" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1632" y="592" name="XLXI_5" orien="R0">
        </instance>
        <instance x="480" y="1168" name="XLXI_7" orien="R0">
        </instance>
        <instance x="480" y="896" name="XLXI_6" orien="R0">
        </instance>
        <text style="fontsize:64;fontname:Arial" x="644" y="800">B</text>
        <text style="fontsize:64;fontname:Arial" x="652" y="1072">c</text>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="208" type="branch" />
            <wire x2="448" y1="208" y2="208" x1="432" />
            <wire x2="480" y1="208" y2="208" x1="448" />
        </branch>
        <branch name="XLXN_17(4:0)">
            <wire x2="480" y1="272" y2="272" x1="416" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="336" type="branch" />
            <wire x2="432" y1="336" y2="336" x1="416" />
            <wire x2="480" y1="336" y2="336" x1="432" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="400" type="branch" />
            <wire x2="448" y1="400" y2="400" x1="432" />
            <wire x2="480" y1="400" y2="400" x1="448" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="464" type="branch" />
            <wire x2="448" y1="464" y2="464" x1="432" />
            <wire x2="480" y1="464" y2="464" x1="448" />
        </branch>
        <branch name="c(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="528" type="branch" />
            <wire x2="448" y1="528" y2="528" x1="432" />
            <wire x2="480" y1="528" y2="528" x1="448" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="592" type="branch" />
            <wire x2="448" y1="592" y2="592" x1="432" />
            <wire x2="480" y1="592" y2="592" x1="448" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="912" y1="208" y2="208" x1="864" />
        </branch>
        <branch name="XLXN_24(31:0)">
            <wire x2="912" y1="336" y2="336" x1="864" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="464" type="branch" />
            <wire x2="896" y1="464" y2="464" x1="864" />
            <wire x2="912" y1="464" y2="464" x1="896" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="592" type="branch" />
            <wire x2="912" y1="592" y2="592" x1="864" />
            <wire x2="928" y1="592" y2="592" x1="912" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="208" type="branch" />
            <wire x2="1104" y1="208" y2="208" x1="1040" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="272" type="branch" />
            <wire x2="1104" y1="272" y2="272" x1="1040" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="336" type="branch" />
            <wire x2="1104" y1="336" y2="336" x1="1040" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="400" type="branch" />
            <wire x2="1792" y1="400" y2="400" x1="1680" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="560" type="branch" />
            <wire x2="2064" y1="560" y2="560" x1="2016" />
        </branch>
        <branch name="MUX_O(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="560" type="branch" />
            <wire x2="1632" y1="560" y2="560" x1="1600" />
        </branch>
        <branch name="imm(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="864" type="branch" />
            <wire x2="1328" y1="864" y2="864" x1="1120" />
        </branch>
        <branch name="D_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="736" type="branch" />
            <wire x2="912" y1="736" y2="736" x1="864" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="736" type="branch" />
            <wire x2="480" y1="736" y2="736" x1="432" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="800" type="branch" />
            <wire x2="480" y1="800" y2="800" x1="432" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="864" type="branch" />
            <wire x2="480" y1="864" y2="864" x1="432" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1008" type="branch" />
            <wire x2="480" y1="1008" y2="1008" x1="432" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1072" type="branch" />
            <wire x2="480" y1="1072" y2="1072" x1="432" />
        </branch>
        <branch name="DI(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1136" type="branch" />
            <wire x2="480" y1="1136" y2="1136" x1="432" />
        </branch>
        <branch name="c(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1008" type="branch" />
            <wire x2="912" y1="1008" y2="1008" x1="864" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="208" type="branch" />
            <wire x2="1792" y1="208" y2="208" x1="1744" />
        </branch>
        <instance x="1792" y="432" name="XLXI_3" orien="R0">
        </instance>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="304" type="branch" />
            <wire x2="1792" y1="304" y2="304" x1="1728" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="208" type="branch" />
            <wire x2="2304" y1="208" y2="208" x1="2176" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="272" type="branch" />
            <wire x2="2304" y1="272" y2="272" x1="2176" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="336" type="branch" />
            <wire x2="2304" y1="336" y2="336" x1="2176" />
        </branch>
        <branch name="imm(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="400" type="branch" />
            <wire x2="2304" y1="400" y2="400" x1="2176" />
        </branch>
        <branch name="PC_reg(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="208" type="branch" />
            <wire x2="1520" y1="208" y2="208" x1="1488" />
        </branch>
        <instance x="1328" y="896" name="XLXI_4" orien="R0">
        </instance>
        <branch name="ADMSe">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="736" type="branch" />
            <wire x2="1328" y1="736" y2="736" x1="1216" />
        </branch>
        <branch name="MUX_O(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="736" type="branch" />
            <wire x2="1776" y1="736" y2="736" x1="1712" />
        </branch>
        <branch name="PC_reg(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="800" type="branch" />
            <wire x2="1328" y1="800" y2="800" x1="1120" />
        </branch>
        <branch name="D_OUT(31:0)">
            <wire x2="2160" y1="736" y2="736" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2160" y="736" name="D_OUT(31:0)" orien="R0" />
        <branch name="MAO(31:0)">
            <wire x2="2176" y1="800" y2="800" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2176" y="800" name="MAO(31:0)" orien="R0" />
        <branch name="opcode(5:0)">
            <wire x2="2176" y1="864" y2="864" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2176" y="864" name="opcode(5:0)" orien="R0" />
        <branch name="Dadr(4:0)">
            <wire x2="272" y1="592" y2="592" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="592" name="Dadr(4:0)" orien="R180" />
        <branch name="D(31:0)">
            <wire x2="2176" y1="928" y2="928" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2176" y="928" name="D(31:0)" orien="R0" />
        <text style="fontsize:36;fontname:Arial" x="916" y="60">Data Path</text>
    </sheet>
</drawing>
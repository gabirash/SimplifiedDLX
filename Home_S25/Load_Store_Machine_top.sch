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
        <signal name="D_IN(31:0)" />
        <signal name="ack_n" />
        <signal name="IRce" />
        <signal name="Cce" />
        <signal name="PCce" />
        <signal name="Bce" />
        <signal name="GPR_WE" />
        <signal name="ADMSe" />
        <signal name="opcode(5:0)" />
        <signal name="stateLS(2:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="in_init" />
        <signal name="D_OUT(31:0)" />
        <signal name="D(31:0)" />
        <signal name="MAO(31:0)" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="stop_n" />
        <signal name="stateMAC(1:0)" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="busy" />
        <signal name="mr" />
        <signal name="mw" />
        <signal name="XLXN_85(2:0)" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="D_IN(31:0)" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Output" name="stateLS(2:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="D_OUT(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="MAO(31:0)" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="stop_n" />
        <port polarity="Output" name="stateMAC(1:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="mr" />
        <port polarity="Output" name="mw" />
        <blockdef name="Load_Store_Machine">
            <timestamp>2020-6-1T9:23:58</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-620" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Control_LS_top">
            <timestamp>2020-6-2T6:51:23</timestamp>
            <rect width="304" x="64" y="-960" height="960" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-704" y2="-704" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <rect width="64" x="368" y="-876" height="24" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <rect width="64" x="368" y="-620" height="24" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="Load_Store_Machine" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="D_IN(31:0)" name="DI(31:0)" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="ADMSe" name="ADMSe" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="D_OUT(31:0)" name="D_OUT(31:0)" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
        </block>
        <block symbolname="Control_LS_top" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="stateLS(2:0)" name="stateLS(2:0)" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="stateMAC(1:0)" name="stateMAC(1:0)" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="GPR_WE" name="GPR_we" />
            <blockpin signalname="ADMSe" name="AdmSelect" />
            <blockpin signalname="mr" name="mr" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="mw" name="mw" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="640" y="864" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="288" y1="112" y2="112" x1="176" />
        </branch>
        <branch name="reset">
            <wire x2="288" y1="160" y2="160" x1="192" />
        </branch>
        <branch name="step_en">
            <wire x2="288" y1="208" y2="208" x1="176" />
        </branch>
        <branch name="D_IN(31:0)">
            <wire x2="288" y1="256" y2="256" x1="192" />
        </branch>
        <branch name="ack_n">
            <wire x2="288" y1="352" y2="352" x1="192" />
        </branch>
        <iomarker fontsize="28" x="176" y="112" name="clk" orien="R180" />
        <iomarker fontsize="28" x="192" y="160" name="reset" orien="R180" />
        <iomarker fontsize="28" x="176" y="208" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="192" y="256" name="D_IN(31:0)" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="256" type="branch" />
            <wire x2="640" y1="256" y2="256" x1="608" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="320" type="branch" />
            <wire x2="640" y1="320" y2="320" x1="608" />
        </branch>
        <branch name="D_IN(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="384" type="branch" />
            <wire x2="640" y1="384" y2="384" x1="576" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="448" type="branch" />
            <wire x2="640" y1="448" y2="448" x1="592" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="512" type="branch" />
            <wire x2="640" y1="512" y2="512" x1="592" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="576" type="branch" />
            <wire x2="640" y1="576" y2="576" x1="592" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="640" type="branch" />
            <wire x2="640" y1="640" y2="640" x1="592" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="704" type="branch" />
            <wire x2="640" y1="704" y2="704" x1="576" />
        </branch>
        <branch name="ADMSe">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="768" type="branch" />
            <wire x2="640" y1="768" y2="768" x1="592" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="832" type="branch" />
            <wire x2="640" y1="832" y2="832" x1="592" />
        </branch>
        <branch name="D_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="256" type="branch" />
            <wire x2="1104" y1="256" y2="256" x1="1024" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="448" type="branch" />
            <wire x2="1088" y1="448" y2="448" x1="1024" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="640" type="branch" />
            <wire x2="1072" y1="640" y2="640" x1="1024" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="832" type="branch" />
            <wire x2="1104" y1="832" y2="832" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="192" y="352" name="ack_n" orien="R180" />
        <branch name="Dadr(4:0)">
            <wire x2="288" y1="304" y2="304" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="304" name="Dadr(4:0)" orien="R180" />
        <branch name="D_OUT(31:0)">
            <wire x2="3104" y1="80" y2="80" x1="3040" />
        </branch>
        <branch name="MAO(31:0)">
            <wire x2="3136" y1="160" y2="160" x1="3040" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="3136" y1="224" y2="224" x1="3040" />
        </branch>
        <branch name="in_init">
            <wire x2="3136" y1="288" y2="288" x1="3040" />
        </branch>
        <branch name="stateLS(2:0)">
            <wire x2="3152" y1="368" y2="368" x1="3056" />
        </branch>
        <branch name="AS_N">
            <wire x2="3152" y1="432" y2="432" x1="3056" />
        </branch>
        <branch name="WR_N">
            <wire x2="3136" y1="496" y2="496" x1="3040" />
        </branch>
        <branch name="stop_n">
            <wire x2="3136" y1="560" y2="560" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3104" y="80" name="D_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3136" y="160" name="MAO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3136" y="224" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3136" y="288" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="3152" y="368" name="stateLS(2:0)" orien="R0" />
        <iomarker fontsize="28" x="3152" y="432" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="3136" y="496" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="3136" y="560" name="stop_n" orien="R0" />
        <instance x="1712" y="1136" name="XLXI_5" orien="R0">
        </instance>
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="880" type="branch" />
            <wire x2="1712" y1="880" y2="880" x1="1520" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="208" type="branch" />
            <wire x2="1712" y1="208" y2="208" x1="1520" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="432" type="branch" />
            <wire x2="1584" y1="432" y2="432" x1="1520" />
            <wire x2="1712" y1="432" y2="432" x1="1584" />
        </branch>
        <branch name="step_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="656" type="branch" />
            <wire x2="1552" y1="656" y2="656" x1="1504" />
            <wire x2="1712" y1="656" y2="656" x1="1552" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1104" type="branch" />
            <wire x2="1568" y1="1104" y2="1104" x1="1520" />
            <wire x2="1712" y1="1104" y2="1104" x1="1568" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="336" type="branch" />
            <wire x2="2192" y1="336" y2="336" x1="2144" />
            <wire x2="2256" y1="336" y2="336" x1="2192" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="400" type="branch" />
            <wire x2="2176" y1="400" y2="400" x1="2144" />
            <wire x2="2192" y1="400" y2="400" x1="2176" />
            <wire x2="2256" y1="400" y2="400" x1="2192" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="464" type="branch" />
            <wire x2="2192" y1="464" y2="464" x1="2144" />
            <wire x2="2256" y1="464" y2="464" x1="2192" />
        </branch>
        <branch name="busy">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1040" type="branch" />
            <wire x2="2176" y1="1040" y2="1040" x1="2144" />
            <wire x2="2224" y1="1040" y2="1040" x1="2176" />
        </branch>
        <branch name="stateMAC(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="528" type="branch" />
            <wire x2="2224" y1="528" y2="528" x1="2144" />
            <wire x2="2272" y1="528" y2="528" x1="2224" />
        </branch>
        <branch name="stateLS(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="272" type="branch" />
            <wire x2="2160" y1="272" y2="272" x1="2144" />
            <wire x2="2208" y1="272" y2="272" x1="2160" />
            <wire x2="2272" y1="272" y2="272" x1="2208" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="208" type="branch" />
            <wire x2="2208" y1="208" y2="208" x1="2144" />
            <wire x2="2256" y1="208" y2="208" x1="2208" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="592" type="branch" />
            <wire x2="2192" y1="592" y2="592" x1="2144" />
            <wire x2="2240" y1="592" y2="592" x1="2192" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="656" type="branch" />
            <wire x2="2192" y1="656" y2="656" x1="2144" />
            <wire x2="2240" y1="656" y2="656" x1="2192" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="784" type="branch" />
            <wire x2="2192" y1="784" y2="784" x1="2144" />
            <wire x2="2240" y1="784" y2="784" x1="2192" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="720" type="branch" />
            <wire x2="2176" y1="720" y2="720" x1="2144" />
            <wire x2="2224" y1="720" y2="720" x1="2176" />
        </branch>
        <branch name="ADMSe">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="912" type="branch" />
            <wire x2="2208" y1="912" y2="912" x1="2144" />
            <wire x2="2256" y1="912" y2="912" x1="2208" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="848" type="branch" />
            <wire x2="2192" y1="848" y2="848" x1="2144" />
            <wire x2="2208" y1="848" y2="848" x1="2192" />
            <wire x2="2256" y1="848" y2="848" x1="2208" />
        </branch>
        <branch name="mr">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="976" type="branch" />
            <wire x2="2176" y1="976" y2="976" x1="2144" />
            <wire x2="2224" y1="976" y2="976" x1="2176" />
        </branch>
        <branch name="mw">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1104" type="branch" />
            <wire x2="2192" y1="1104" y2="1104" x1="2144" />
            <wire x2="2240" y1="1104" y2="1104" x1="2192" />
        </branch>
        <branch name="stateMAC(1:0)">
            <wire x2="3040" y1="672" y2="672" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="3040" y="672" name="stateMAC(1:0)" orien="R0" />
        <branch name="busy">
            <wire x2="3136" y1="768" y2="768" x1="2880" />
        </branch>
        <branch name="mr">
            <wire x2="3120" y1="816" y2="816" x1="2880" />
        </branch>
        <branch name="mw">
            <wire x2="3136" y1="864" y2="864" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3136" y="768" name="busy" orien="R0" />
        <iomarker fontsize="28" x="3120" y="816" name="mr" orien="R0" />
        <iomarker fontsize="28" x="3136" y="864" name="mw" orien="R0" />
    </sheet>
</drawing>
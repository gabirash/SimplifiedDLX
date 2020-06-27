<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="ALUF(2:0)" />
        <signal name="add" />
        <signal name="test" />
        <signal name="XLXN_10(31:0)" />
        <signal name="XLXN_11(31:0)" />
        <signal name="F(0)" />
        <signal name="XLXN_34(31:0)" />
        <signal name="XLXN_36(31:0)" />
        <signal name="F(1)" />
        <signal name="XLXN_40(31:0)" />
        <signal name="F(2)" />
        <signal name="S(31:0)" />
        <signal name="XLXN_47" />
        <signal name="sub" />
        <signal name="XLXN_18(2:0)" />
        <signal name="F(2:0)" />
        <signal name="neg" />
        <signal name="XLXN_46" />
        <signal name="XLXN_69(31:0)" />
        <signal name="XLXN_70(31:0)" />
        <signal name="ALUOUT(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="ALUF(2:0)" />
        <port polarity="Input" name="add" />
        <port polarity="Input" name="test" />
        <port polarity="Output" name="ALUOUT(31:0)" />
        <blockdef name="OR32">
            <timestamp>2020-5-21T18:8:18</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="XOR32">
            <timestamp>2020-5-21T18:8:34</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
        <blockdef name="MUX3BIT">
            <timestamp>2020-5-21T18:8:12</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Const_011">
            <timestamp>2020-6-14T14:37:42</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="AND32">
            <timestamp>2020-5-21T18:7:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Comparator32">
            <timestamp>2020-6-14T14:14:23</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="compout1to32">
            <timestamp>2020-6-14T15:7:5</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="CSA32">
            <timestamp>2020-6-15T8:42:52</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="OR32" name="XLXI_1">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="XOR32" name="XLXI_2">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_11(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_3">
            <blockpin signalname="F(0)" name="sel" />
            <blockpin signalname="XLXN_11(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_36(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="AND32" name="XLXI_13">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_14">
            <blockpin signalname="F(1)" name="sel" />
            <blockpin signalname="XLXN_36(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_34(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_15">
            <blockpin signalname="F(2)" name="sel" />
            <blockpin signalname="S(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_40(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_69(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="F(0)" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_18">
            <blockpin signalname="test" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="sub" name="O" />
        </block>
        <block symbolname="MUX3BIT" name="XLXI_5">
            <blockpin signalname="add" name="sel" />
            <blockpin signalname="ALUF(2:0)" name="A0(2:0)" />
            <blockpin signalname="XLXN_18(2:0)" name="A1(2:0)" />
            <blockpin signalname="F(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="Const_011" name="XLXI_7">
            <blockpin signalname="XLXN_18(2:0)" name="constOut(2:0)" />
        </block>
        <block symbolname="Comparator32" name="XLXI_16">
            <blockpin signalname="S(31:0)" name="S(31:0)" />
            <blockpin signalname="F(2:0)" name="F(2:0)" />
            <blockpin signalname="neg" name="neg" />
            <blockpin signalname="XLXN_46" name="COMP_OUT" />
        </block>
        <block symbolname="compout1to32" name="XLXI_22">
            <blockpin signalname="XLXN_46" name="compsing" />
            <blockpin signalname="XLXN_70(31:0)" name="compmulti(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_23">
            <blockpin signalname="test" name="sel" />
            <blockpin signalname="XLXN_69(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_70(31:0)" name="B(31:0)" />
            <blockpin signalname="ALUOUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="CSA32" name="XLXI_24">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="sub" name="SUB" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="S(31:0)" name="ALU_OUT(31:0)" />
            <blockpin signalname="neg" name="NEG" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(31:0)">
            <wire x2="352" y1="176" y2="176" x1="288" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="352" y1="240" y2="240" x1="288" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="352" y1="304" y2="304" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="176" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="240" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="304" name="ALUF(2:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="368" name="add" orien="R180" />
        <instance x="2768" y="128" name="XLXI_2" orien="R90">
        </instance>
        <instance x="2512" y="128" name="XLXI_1" orien="R90">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="112" type="branch" />
            <wire x2="2864" y1="112" y2="128" x1="2864" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="112" type="branch" />
            <wire x2="2800" y1="112" y2="128" x1="2800" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="112" type="branch" />
            <wire x2="2608" y1="112" y2="128" x1="2608" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="112" type="branch" />
            <wire x2="2544" y1="112" y2="128" x1="2544" />
        </branch>
        <branch name="XLXN_10(31:0)">
            <wire x2="2608" y1="512" y2="560" x1="2608" />
            <wire x2="2688" y1="560" y2="560" x1="2608" />
            <wire x2="2688" y1="560" y2="608" x1="2688" />
        </branch>
        <branch name="XLXN_11(31:0)">
            <wire x2="2864" y1="560" y2="560" x1="2752" />
            <wire x2="2752" y1="560" y2="608" x1="2752" />
            <wire x2="2864" y1="512" y2="560" x1="2864" />
        </branch>
        <instance x="2656" y="608" name="XLXI_3" orien="R90">
        </instance>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="592" type="branch" />
            <wire x2="2816" y1="592" y2="608" x1="2816" />
            <wire x2="2896" y1="592" y2="592" x1="2816" />
        </branch>
        <instance x="2256" y="128" name="XLXI_13" orien="R90">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="112" type="branch" />
            <wire x2="2352" y1="112" y2="128" x1="2352" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="112" type="branch" />
            <wire x2="2288" y1="112" y2="128" x1="2288" />
        </branch>
        <branch name="XLXN_34(31:0)">
            <wire x2="2352" y1="512" y2="720" x1="2352" />
        </branch>
        <branch name="XLXN_36(31:0)">
            <wire x2="2576" y1="560" y2="560" x1="2416" />
            <wire x2="2576" y1="560" y2="1008" x1="2576" />
            <wire x2="2816" y1="1008" y2="1008" x1="2576" />
            <wire x2="2416" y1="560" y2="720" x1="2416" />
            <wire x2="2816" y1="992" y2="1008" x1="2816" />
        </branch>
        <instance x="2320" y="720" name="XLXI_14" orien="R90">
        </instance>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="704" type="branch" />
            <wire x2="2480" y1="704" y2="720" x1="2480" />
        </branch>
        <branch name="XLXN_40(31:0)">
            <wire x2="2480" y1="1248" y2="1248" x1="2352" />
            <wire x2="2480" y1="1104" y2="1248" x1="2480" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1312" type="branch" />
            <wire x2="2400" y1="1312" y2="1312" x1="2352" />
        </branch>
        <instance x="2176" y="496" name="XLXI_17" orien="R270" />
        <instance x="2112" y="112" name="XLXI_18" orien="R180" />
        <branch name="XLXN_47">
            <wire x2="2144" y1="240" y2="240" x1="2112" />
            <wire x2="2144" y1="240" y2="272" x1="2144" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="144" type="branch" />
            <wire x2="2144" y1="176" y2="176" x1="2112" />
            <wire x2="2144" y1="144" y2="176" x1="2144" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="208" type="branch" />
            <wire x2="1856" y1="208" y2="208" x1="1824" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="544" type="branch" />
            <wire x2="2144" y1="496" y2="544" x1="2144" />
        </branch>
        <branch name="add">
            <wire x2="352" y1="368" y2="368" x1="288" />
        </branch>
        <instance x="528" y="1120" name="XLXI_5" orien="R0">
        </instance>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="960" type="branch" />
            <wire x2="528" y1="960" y2="960" x1="512" />
        </branch>
        <branch name="ALUF(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1024" type="branch" />
            <wire x2="528" y1="1024" y2="1024" x1="512" />
        </branch>
        <branch name="XLXN_18(2:0)">
            <wire x2="528" y1="1088" y2="1088" x1="336" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="960" type="branch" />
            <wire x2="976" y1="960" y2="960" x1="912" />
        </branch>
        <instance x="-48" y="1120" name="XLXI_7" orien="R0">
        </instance>
        <instance x="528" y="1440" name="XLXI_16" orien="R0">
        </instance>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1280" type="branch" />
            <wire x2="528" y1="1280" y2="1280" x1="480" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1408" type="branch" />
            <wire x2="528" y1="1408" y2="1408" x1="480" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1344" type="branch" />
            <wire x2="528" y1="1344" y2="1344" x1="480" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="976" y1="1280" y2="1280" x1="912" />
        </branch>
        <branch name="test">
            <wire x2="352" y1="432" y2="432" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="432" name="test" orien="R180" />
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1376" type="branch" />
            <wire x2="2400" y1="1376" y2="1376" x1="2352" />
        </branch>
        <instance x="2352" y="1216" name="XLXI_15" orien="R180">
        </instance>
        <instance x="976" y="1312" name="XLXI_22" orien="R0">
        </instance>
        <instance x="1568" y="1568" name="XLXI_23" orien="R90">
        </instance>
        <branch name="XLXN_69(31:0)">
            <wire x2="1968" y1="1376" y2="1376" x1="1664" />
            <wire x2="1664" y1="1376" y2="1568" x1="1664" />
        </branch>
        <branch name="XLXN_70(31:0)">
            <wire x2="1408" y1="1280" y2="1280" x1="1360" />
            <wire x2="1600" y1="1280" y2="1280" x1="1408" />
            <wire x2="1600" y1="1280" y2="1568" x1="1600" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1520" type="branch" />
            <wire x2="1760" y1="1520" y2="1520" x1="1728" />
            <wire x2="1728" y1="1520" y2="1568" x1="1728" />
        </branch>
        <branch name="ALUOUT(31:0)">
            <wire x2="3216" y1="176" y2="176" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3216" y="176" name="ALUOUT(31:0)" orien="R0" />
        <branch name="ALUOUT(31:0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="2000" type="branch" />
            <wire x2="1728" y1="1952" y2="2000" x1="1728" />
        </branch>
        <instance x="800" y="400" name="XLXI_24" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="240" type="branch" />
            <wire x2="800" y1="240" y2="240" x1="752" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="304" type="branch" />
            <wire x2="800" y1="304" y2="304" x1="752" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="240" type="branch" />
            <wire x2="1264" y1="240" y2="240" x1="1184" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="368" type="branch" />
            <wire x2="1248" y1="368" y2="368" x1="1184" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="368" type="branch" />
            <wire x2="800" y1="368" y2="368" x1="752" />
        </branch>
    </sheet>
</drawing>
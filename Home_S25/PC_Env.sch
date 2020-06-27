<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="PC_reg(15:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="reset" />
        <signal name="PC_enable" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="PC_reg(15:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="PC_enable" />
        <blockdef name="CNT16">
            <timestamp>2020-5-22T4:8:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="CNT16" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_enable" name="ce" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="PC_reg(15:0)" name="cnt_o(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="1248" y1="928" y2="928" x1="400" />
        </branch>
        <branch name="PC_reg(15:0)">
            <wire x2="2016" y1="928" y2="928" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="2016" y="928" name="PC_reg(15:0)" orien="R0" />
        <branch name="reset">
            <wire x2="1248" y1="1056" y2="1056" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1056" name="reset" orien="R180" />
        <branch name="PC_enable">
            <wire x2="1248" y1="992" y2="992" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="992" name="PC_enable" orien="R180" />
        <iomarker fontsize="28" x="400" y="928" name="clk" orien="R180" />
    </sheet>
</drawing>
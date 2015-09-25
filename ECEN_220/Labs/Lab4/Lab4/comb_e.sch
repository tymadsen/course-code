<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_17" />
        <signal name="N1" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="N0" />
        <signal name="E" />
        <signal name="N3" />
        <signal name="N2" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <port polarity="Input" name="N1" />
        <port polarity="Input" name="N0" />
        <port polarity="Output" name="E" />
        <port polarity="Input" name="N3" />
        <port polarity="Input" name="N2" />
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="and2b1" name="XLXI_7">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N0" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_8">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N1" name="I1" />
            <blockpin signalname="N2" name="I2" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_9">
            <blockpin signalname="N2" name="I0" />
            <blockpin signalname="N1" name="I1" />
            <blockpin signalname="N0" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_10">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="E" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="208" y="16" name="XLXI_8" orien="M180" />
        <branch name="XLXN_17">
            <wire x2="496" y1="144" y2="144" x1="464" />
            <wire x2="496" y1="144" y2="256" x1="496" />
        </branch>
        <branch name="N1">
            <wire x2="176" y1="144" y2="144" x1="96" />
            <wire x2="192" y1="144" y2="144" x1="176" />
            <wire x2="208" y1="144" y2="144" x1="192" />
            <wire x2="176" y1="144" y2="320" x1="176" />
            <wire x2="208" y1="320" y2="320" x1="176" />
        </branch>
        <instance x="208" y="192" name="XLXI_9" orien="M180" />
        <instance x="208" y="368" name="XLXI_7" orien="M180" />
        <instance x="496" y="192" name="XLXI_10" orien="M180" />
        <branch name="XLXN_22">
            <wire x2="496" y1="320" y2="320" x1="464" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="496" y1="464" y2="464" x1="464" />
            <wire x2="496" y1="384" y2="464" x1="496" />
        </branch>
        <branch name="N0">
            <wire x2="192" y1="384" y2="384" x1="96" />
            <wire x2="208" y1="384" y2="384" x1="192" />
            <wire x2="192" y1="384" y2="496" x1="192" />
            <wire x2="208" y1="496" y2="496" x1="192" />
        </branch>
        <branch name="E">
            <wire x2="784" y1="320" y2="320" x1="752" />
        </branch>
        <iomarker fontsize="28" x="784" y="320" name="E" orien="R0" />
        <iomarker fontsize="28" x="96" y="80" name="N3" orien="R180" />
        <iomarker fontsize="28" x="96" y="144" name="N1" orien="R180" />
        <iomarker fontsize="28" x="96" y="208" name="N2" orien="R180" />
        <iomarker fontsize="28" x="96" y="384" name="N0" orien="R180" />
        <branch name="N3">
            <wire x2="112" y1="80" y2="80" x1="96" />
            <wire x2="208" y1="80" y2="80" x1="112" />
            <wire x2="112" y1="80" y2="432" x1="112" />
            <wire x2="208" y1="432" y2="432" x1="112" />
        </branch>
        <branch name="N2">
            <wire x2="144" y1="208" y2="208" x1="96" />
            <wire x2="208" y1="208" y2="208" x1="144" />
            <wire x2="144" y1="208" y2="256" x1="144" />
            <wire x2="208" y1="256" y2="256" x1="144" />
        </branch>
    </sheet>
</drawing>
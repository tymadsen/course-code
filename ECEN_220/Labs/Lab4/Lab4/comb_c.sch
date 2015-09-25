<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="N3" />
        <signal name="N2" />
        <signal name="N0" />
        <signal name="N1" />
        <signal name="C" />
        <port polarity="Input" name="N3" />
        <port polarity="Input" name="N2" />
        <port polarity="Input" name="N0" />
        <port polarity="Input" name="N1" />
        <port polarity="Output" name="C" />
        <blockdef name="and4b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <block symbolname="and3b1" name="XLXI_2">
            <blockpin signalname="N0" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N3" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="N1" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N3" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_5">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N0" name="I2" />
            <blockpin signalname="N1" name="I3" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="256" y="32" name="XLXI_5" orien="M180" />
        <instance x="256" y="512" name="XLXI_3" orien="R0" />
        <instance x="256" y="688" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="576" y1="384" y2="384" x1="512" />
        </branch>
        <instance x="576" y="512" name="XLXI_4" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="576" y1="192" y2="192" x1="512" />
            <wire x2="576" y1="192" y2="320" x1="576" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="576" y1="560" y2="560" x1="512" />
            <wire x2="576" y1="448" y2="560" x1="576" />
        </branch>
        <branch name="N3">
            <wire x2="112" y1="96" y2="96" x1="96" />
            <wire x2="240" y1="96" y2="96" x1="112" />
            <wire x2="256" y1="96" y2="96" x1="240" />
            <wire x2="112" y1="96" y2="320" x1="112" />
            <wire x2="112" y1="320" y2="496" x1="112" />
            <wire x2="256" y1="496" y2="496" x1="112" />
            <wire x2="256" y1="320" y2="320" x1="112" />
        </branch>
        <branch name="N2">
            <wire x2="144" y1="160" y2="160" x1="96" />
            <wire x2="240" y1="160" y2="160" x1="144" />
            <wire x2="256" y1="160" y2="160" x1="240" />
            <wire x2="144" y1="160" y2="384" x1="144" />
            <wire x2="144" y1="384" y2="560" x1="144" />
            <wire x2="256" y1="560" y2="560" x1="144" />
            <wire x2="256" y1="384" y2="384" x1="144" />
        </branch>
        <branch name="N0">
            <wire x2="224" y1="224" y2="224" x1="96" />
            <wire x2="240" y1="224" y2="224" x1="224" />
            <wire x2="256" y1="224" y2="224" x1="240" />
            <wire x2="224" y1="224" y2="624" x1="224" />
            <wire x2="256" y1="624" y2="624" x1="224" />
        </branch>
        <branch name="N1">
            <wire x2="176" y1="288" y2="288" x1="96" />
            <wire x2="240" y1="288" y2="288" x1="176" />
            <wire x2="256" y1="288" y2="288" x1="240" />
            <wire x2="176" y1="288" y2="448" x1="176" />
            <wire x2="256" y1="448" y2="448" x1="176" />
        </branch>
        <branch name="C">
            <wire x2="864" y1="384" y2="384" x1="832" />
        </branch>
        <iomarker fontsize="28" x="864" y="384" name="C" orien="R0" />
        <iomarker fontsize="28" x="96" y="96" name="N3" orien="R180" />
        <iomarker fontsize="28" x="96" y="160" name="N2" orien="R180" />
        <iomarker fontsize="28" x="96" y="224" name="N0" orien="R180" />
        <iomarker fontsize="28" x="96" y="288" name="N1" orien="R180" />
    </sheet>
</drawing>
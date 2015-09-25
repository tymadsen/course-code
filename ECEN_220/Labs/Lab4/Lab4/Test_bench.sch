<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="C" />
        <signal name="E" />
        <signal name="B" />
        <signal name="D" />
        <signal name="F" />
        <signal name="G" />
        <signal name="N3" />
        <signal name="N2" />
        <signal name="N1" />
        <signal name="N0" />
        <signal name="AN2" />
        <signal name="AN0" />
        <signal name="AN1" />
        <signal name="AN3" />
        <port polarity="Output" name="A" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="E" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="G" />
        <port polarity="Input" name="N3" />
        <port polarity="Input" name="N2" />
        <port polarity="Input" name="N1" />
        <port polarity="Input" name="N0" />
        <port polarity="Output" name="AN2" />
        <port polarity="Output" name="AN0" />
        <port polarity="Output" name="AN1" />
        <port polarity="Output" name="AN3" />
        <blockdef name="SEVEN_SEG_DECODER">
            <timestamp>2013-10-4T23:55:5</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="SEVEN_SEG_DECODER" name="XLXI_1">
            <blockpin signalname="N3" name="N3" />
            <blockpin signalname="N2" name="N2" />
            <blockpin signalname="N1" name="N1" />
            <blockpin signalname="N0" name="N0" />
            <blockpin signalname="A" name="A" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="E" />
            <blockpin signalname="B" name="B" />
            <blockpin signalname="D" name="D" />
            <blockpin signalname="F" name="F" />
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="AN2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="AN1" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="AN0" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="AN3" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="640" y="1040" name="XLXI_1" orien="R0">
        </instance>
        <instance x="320" y="592" name="XLXI_3" orien="R0" />
        <branch name="A">
            <wire x2="1056" y1="624" y2="624" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1056" y="624" name="A" orien="R0" />
        <branch name="C">
            <wire x2="1056" y1="688" y2="688" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1056" y="688" name="C" orien="R0" />
        <branch name="E">
            <wire x2="1056" y1="752" y2="752" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1056" y="752" name="E" orien="R0" />
        <branch name="B">
            <wire x2="1056" y1="816" y2="816" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1056" y="816" name="B" orien="R0" />
        <branch name="D">
            <wire x2="1056" y1="880" y2="880" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1056" y="880" name="D" orien="R0" />
        <branch name="F">
            <wire x2="1056" y1="944" y2="944" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1056" y="944" name="F" orien="R0" />
        <branch name="G">
            <wire x2="1056" y1="1008" y2="1008" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1008" name="G" orien="R0" />
        <branch name="N3">
            <wire x2="640" y1="624" y2="624" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="624" name="N3" orien="R180" />
        <branch name="N2">
            <wire x2="640" y1="752" y2="752" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="752" name="N2" orien="R180" />
        <branch name="N1">
            <wire x2="640" y1="880" y2="880" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="880" name="N1" orien="R180" />
        <branch name="N0">
            <wire x2="640" y1="1008" y2="1008" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="1008" name="N0" orien="R180" />
        <branch name="AN2">
            <wire x2="384" y1="592" y2="624" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="624" name="AN2" orien="R90" />
        <instance x="224" y="592" name="XLXI_4" orien="R0" />
        <instance x="128" y="592" name="XLXI_5" orien="R0" />
        <branch name="AN0">
            <wire x2="192" y1="592" y2="624" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="624" name="AN0" orien="R90" />
        <branch name="AN1">
            <wire x2="288" y1="592" y2="624" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="624" name="AN1" orien="R90" />
        <instance x="288" y="1216" name="XLXI_2" orien="R0" />
        <branch name="AN3">
            <wire x2="352" y1="1056" y2="1088" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1056" name="AN3" orien="R270" />
    </sheet>
</drawing>
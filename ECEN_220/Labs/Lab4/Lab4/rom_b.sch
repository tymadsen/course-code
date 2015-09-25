<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="N0" />
        <signal name="N2" />
        <signal name="N3" />
        <signal name="B" />
        <signal name="N1" />
        <port polarity="Input" name="N0" />
        <port polarity="Input" name="N2" />
        <port polarity="Input" name="N3" />
        <port polarity="Output" name="B" />
        <port polarity="Input" name="N1" />
        <blockdef name="rom16x1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <block symbolname="rom16x1" name="XLXI_1">
            <attr value="D860" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 16 h" />
            </attr>
            <blockpin signalname="N0" name="A0" />
            <blockpin signalname="N1" name="A1" />
            <blockpin signalname="N2" name="A2" />
            <blockpin signalname="N3" name="A3" />
            <blockpin signalname="B" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="496" y="880" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-64" type="instance" />
        </instance>
        <branch name="N0">
            <wire x2="496" y1="560" y2="560" x1="464" />
        </branch>
        <branch name="N1">
            <wire x2="496" y1="624" y2="624" x1="464" />
        </branch>
        <branch name="N2">
            <wire x2="496" y1="688" y2="688" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="688" name="N2" orien="R180" />
        <branch name="N3">
            <wire x2="496" y1="752" y2="752" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="752" name="N3" orien="R180" />
        <branch name="B">
            <wire x2="912" y1="560" y2="560" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="560" name="B" orien="R0" />
        <iomarker fontsize="28" x="464" y="624" name="N1" orien="R180" />
        <iomarker fontsize="28" x="464" y="560" name="N0" orien="R180" />
    </sheet>
</drawing>
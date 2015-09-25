<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="N0" />
        <signal name="N1" />
        <signal name="N2" />
        <signal name="N3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="B" />
        <signal name="D" />
        <signal name="F" />
        <signal name="G" />
        <port polarity="Input" name="N0" />
        <port polarity="Input" name="N1" />
        <port polarity="Input" name="N2" />
        <port polarity="Input" name="N3" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="G" />
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
        <block symbolname="rom16x1" name="XLXI_2">
            <attr value="8492" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 16 h" />
            </attr>
            <blockpin signalname="N0" name="A0" />
            <blockpin signalname="N1" name="A1" />
            <blockpin signalname="N2" name="A2" />
            <blockpin signalname="N3" name="A3" />
            <blockpin signalname="D" name="O" />
        </block>
        <block symbolname="rom16x1" name="XLXI_3">
            <attr value="208E" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 16 h" />
            </attr>
            <blockpin signalname="N0" name="A0" />
            <blockpin signalname="N1" name="A1" />
            <blockpin signalname="N2" name="A2" />
            <blockpin signalname="N3" name="A3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="rom16x1" name="XLXI_4">
            <attr value="1083" name="INIT">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 16 h" />
            </attr>
            <blockpin signalname="N0" name="A0" />
            <blockpin signalname="N1" name="A1" />
            <blockpin signalname="N2" name="A2" />
            <blockpin signalname="N3" name="A3" />
            <blockpin signalname="G" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="464" y="736" name="XLXI_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-64" type="instance" />
        </instance>
        <instance x="464" y="1216" name="XLXI_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-64" type="instance" />
        </instance>
        <instance x="464" y="1664" name="XLXI_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-472" type="instance" />
        </instance>
        <instance x="464" y="2096" name="XLXI_4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-472" type="instance" />
        </instance>
        <branch name="N0">
            <wire x2="224" y1="416" y2="416" x1="208" />
            <wire x2="448" y1="416" y2="416" x1="224" />
            <wire x2="464" y1="416" y2="416" x1="448" />
            <wire x2="224" y1="416" y2="896" x1="224" />
            <wire x2="224" y1="896" y2="904" x1="224" />
            <wire x2="224" y1="904" y2="1344" x1="224" />
            <wire x2="224" y1="1344" y2="1776" x1="224" />
            <wire x2="464" y1="1776" y2="1776" x1="224" />
            <wire x2="464" y1="1344" y2="1344" x1="224" />
            <wire x2="464" y1="896" y2="896" x1="224" />
        </branch>
        <branch name="N1">
            <wire x2="272" y1="480" y2="480" x1="208" />
            <wire x2="448" y1="480" y2="480" x1="272" />
            <wire x2="464" y1="480" y2="480" x1="448" />
            <wire x2="272" y1="480" y2="960" x1="272" />
            <wire x2="272" y1="960" y2="1408" x1="272" />
            <wire x2="272" y1="1408" y2="1840" x1="272" />
            <wire x2="464" y1="1840" y2="1840" x1="272" />
            <wire x2="464" y1="1408" y2="1408" x1="272" />
            <wire x2="464" y1="960" y2="960" x1="272" />
        </branch>
        <branch name="N2">
            <wire x2="336" y1="544" y2="544" x1="208" />
            <wire x2="448" y1="544" y2="544" x1="336" />
            <wire x2="464" y1="544" y2="544" x1="448" />
            <wire x2="336" y1="544" y2="1024" x1="336" />
            <wire x2="336" y1="1024" y2="1472" x1="336" />
            <wire x2="336" y1="1472" y2="1904" x1="336" />
            <wire x2="464" y1="1904" y2="1904" x1="336" />
            <wire x2="464" y1="1472" y2="1472" x1="336" />
            <wire x2="464" y1="1024" y2="1024" x1="336" />
        </branch>
        <branch name="N3">
            <wire x2="400" y1="608" y2="608" x1="208" />
            <wire x2="448" y1="608" y2="608" x1="400" />
            <wire x2="464" y1="608" y2="608" x1="448" />
            <wire x2="400" y1="608" y2="1088" x1="400" />
            <wire x2="400" y1="1088" y2="1536" x1="400" />
            <wire x2="400" y1="1536" y2="1968" x1="400" />
            <wire x2="464" y1="1968" y2="1968" x1="400" />
            <wire x2="464" y1="1536" y2="1536" x1="400" />
            <wire x2="464" y1="1088" y2="1088" x1="400" />
        </branch>
        <iomarker fontsize="28" x="208" y="416" name="N0" orien="R180" />
        <iomarker fontsize="28" x="208" y="480" name="N1" orien="R180" />
        <iomarker fontsize="28" x="208" y="544" name="N2" orien="R180" />
        <iomarker fontsize="28" x="208" y="608" name="N3" orien="R180" />
        <branch name="B">
            <wire x2="880" y1="416" y2="416" x1="848" />
        </branch>
        <iomarker fontsize="28" x="880" y="416" name="B" orien="R0" />
        <branch name="D">
            <wire x2="880" y1="896" y2="896" x1="848" />
        </branch>
        <iomarker fontsize="28" x="880" y="896" name="D" orien="R0" />
        <branch name="F">
            <wire x2="880" y1="1344" y2="1344" x1="848" />
        </branch>
        <iomarker fontsize="28" x="880" y="1344" name="F" orien="R0" />
        <branch name="G">
            <wire x2="880" y1="1776" y2="1776" x1="848" />
        </branch>
        <iomarker fontsize="28" x="880" y="1776" name="G" orien="R0" />
    </sheet>
</drawing>
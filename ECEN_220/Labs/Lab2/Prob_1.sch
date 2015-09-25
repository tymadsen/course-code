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
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="B" />
        <signal name="D" />
        <signal name="C" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="A" />
        <signal name="XLXN_18" />
        <signal name="XLXN_24" />
        <signal name="F1" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="F2" />
        <signal name="XLXN_36" />
        <signal name="XLXN_40" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_57" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="F1" />
        <port polarity="Output" name="F2" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
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
        <blockdef name="or2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="44" cy="-64" />
            <line x2="32" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="44" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="F1" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_9">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="XLXN_36" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="F2" name="O" />
        </block>
        <block symbolname="or2b2" name="XLXI_11">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="464" y="640" name="XLXI_2" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="736" y1="304" y2="304" x1="720" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="752" y1="544" y2="544" x1="720" />
        </branch>
        <instance x="752" y="608" name="XLXI_7" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1040" y1="512" y2="512" x1="1008" />
        </branch>
        <instance x="1040" y="576" name="XLXI_8" orien="R0" />
        <instance x="464" y="400" name="XLXI_1" orien="R0" />
        <instance x="736" y="432" name="XLXI_6" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1008" y1="336" y2="336" x1="992" />
        </branch>
        <instance x="1008" y="400" name="XLXI_5" orien="R0" />
        <branch name="C">
            <wire x2="368" y1="928" y2="928" x1="240" />
            <wire x2="432" y1="928" y2="928" x1="368" />
            <wire x2="736" y1="368" y2="368" x1="368" />
            <wire x2="368" y1="368" y2="480" x1="368" />
            <wire x2="752" y1="480" y2="480" x1="368" />
            <wire x2="368" y1="480" y2="928" x1="368" />
        </branch>
        <iomarker fontsize="28" x="208" y="272" name="A" orien="R180" />
        <iomarker fontsize="28" x="208" y="336" name="B" orien="R180" />
        <branch name="XLXN_18">
            <wire x2="1312" y1="480" y2="480" x1="1296" />
            <wire x2="1312" y1="416" y2="480" x1="1312" />
            <wire x2="1328" y1="416" y2="416" x1="1312" />
        </branch>
        <instance x="1328" y="480" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1280" y1="304" y2="304" x1="1264" />
            <wire x2="1280" y1="304" y2="352" x1="1280" />
            <wire x2="1328" y1="352" y2="352" x1="1280" />
        </branch>
        <branch name="F1">
            <wire x2="1616" y1="384" y2="384" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1616" y="384" name="F1" orien="R0" />
        <iomarker fontsize="28" x="240" y="928" name="C" orien="R180" />
        <iomarker fontsize="28" x="240" y="864" name="D" orien="R180" />
        <branch name="F2">
            <wire x2="1024" y1="816" y2="816" x1="1008" />
        </branch>
        <branch name="D">
            <wire x2="432" y1="864" y2="864" x1="240" />
            <wire x2="432" y1="240" y2="448" x1="432" />
            <wire x2="1040" y1="448" y2="448" x1="432" />
            <wire x2="432" y1="448" y2="864" x1="432" />
            <wire x2="1008" y1="240" y2="240" x1="432" />
            <wire x2="1008" y1="240" y2="272" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1024" y="816" name="F2" orien="R0" />
        <instance x="432" y="992" name="XLXI_9" orien="R0" />
        <instance x="752" y="912" name="XLXI_10" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="704" y1="896" y2="896" x1="688" />
            <wire x2="752" y1="848" y2="848" x1="704" />
            <wire x2="704" y1="848" y2="896" x1="704" />
        </branch>
        <branch name="A">
            <wire x2="320" y1="272" y2="272" x1="208" />
            <wire x2="320" y1="272" y2="512" x1="320" />
            <wire x2="464" y1="512" y2="512" x1="320" />
            <wire x2="320" y1="512" y2="752" x1="320" />
            <wire x2="464" y1="752" y2="752" x1="320" />
            <wire x2="464" y1="272" y2="272" x1="320" />
        </branch>
        <branch name="B">
            <wire x2="240" y1="336" y2="336" x1="208" />
            <wire x2="240" y1="336" y2="576" x1="240" />
            <wire x2="464" y1="576" y2="576" x1="240" />
            <wire x2="240" y1="576" y2="688" x1="240" />
            <wire x2="464" y1="688" y2="688" x1="240" />
            <wire x2="464" y1="336" y2="336" x1="240" />
        </branch>
        <instance x="464" y="816" name="XLXI_11" orien="R0" />
        <branch name="XLXN_57">
            <wire x2="736" y1="720" y2="720" x1="720" />
            <wire x2="736" y1="720" y2="784" x1="736" />
            <wire x2="752" y1="784" y2="784" x1="736" />
        </branch>
    </sheet>
</drawing>
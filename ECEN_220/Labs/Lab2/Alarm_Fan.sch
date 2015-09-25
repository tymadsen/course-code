<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="Never" name="RenameBusIO" />
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="LOW_BATT" />
        <signal name="XLXN_7">
        </signal>
        <signal name="HIGH_TEMP" />
        <signal name="CORD" />
        <signal name="FAN" />
        <signal name="XLXN_11">
        </signal>
        <signal name="XLXN_12">
        </signal>
        <signal name="ALARM" />
        <signal name="XLXN_15" />
        <port polarity="Input" name="LOW_BATT" />
        <port polarity="Input" name="HIGH_TEMP" />
        <port polarity="Input" name="CORD" />
        <port polarity="Output" name="FAN" />
        <port polarity="Output" name="ALARM" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="HIGH_TEMP" name="I0" />
            <blockpin signalname="CORD" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="HIGH_TEMP" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="LOW_BATT" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="FAN" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="LOW_BATT" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="ALARM" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="CORD" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="512" name="XLXI_1" orien="R0" />
        <instance x="624" y="672" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="624" y1="544" y2="544" x1="592" />
        </branch>
        <instance x="368" y="576" name="XLXI_3" orien="R0" />
        <instance x="928" y="592" name="XLXI_4" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="896" y1="416" y2="416" x1="880" />
            <wire x2="896" y1="416" y2="464" x1="896" />
            <wire x2="928" y1="464" y2="464" x1="896" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="896" y1="576" y2="576" x1="880" />
            <wire x2="896" y1="528" y2="576" x1="896" />
            <wire x2="928" y1="528" y2="528" x1="896" />
        </branch>
        <branch name="LOW_BATT">
            <wire x2="304" y1="544" y2="544" x1="256" />
            <wire x2="368" y1="544" y2="544" x1="304" />
            <wire x2="304" y1="544" y2="816" x1="304" />
            <wire x2="640" y1="816" y2="816" x1="304" />
        </branch>
        <branch name="HIGH_TEMP">
            <wire x2="592" y1="448" y2="448" x1="272" />
            <wire x2="624" y1="448" y2="448" x1="592" />
            <wire x2="592" y1="448" y2="608" x1="592" />
            <wire x2="624" y1="608" y2="608" x1="592" />
        </branch>
        <branch name="CORD">
            <wire x2="336" y1="384" y2="384" x1="192" />
            <wire x2="336" y1="384" y2="752" x1="336" />
            <wire x2="352" y1="752" y2="752" x1="336" />
            <wire x2="624" y1="384" y2="384" x1="336" />
        </branch>
        <branch name="FAN">
            <wire x2="1216" y1="496" y2="496" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="496" name="FAN" orien="R0" />
        <branch name="ALARM">
            <wire x2="912" y1="784" y2="784" x1="896" />
        </branch>
        <iomarker fontsize="28" x="272" y="448" name="HIGH_TEMP" orien="R180" />
        <iomarker fontsize="28" x="192" y="384" name="CORD" orien="R180" />
        <iomarker fontsize="28" x="256" y="544" name="LOW_BATT" orien="R180" />
        <instance x="640" y="880" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="640" y1="752" y2="752" x1="576" />
        </branch>
        <iomarker fontsize="28" x="912" y="784" name="ALARM" orien="R0" />
        <instance x="352" y="784" name="XLXI_6" orien="R0" />
    </sheet>
</drawing>
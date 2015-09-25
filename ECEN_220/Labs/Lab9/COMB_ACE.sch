<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_4" />
        <signal name="A" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="C" />
        <signal name="XLXN_17" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="E" />
        <signal name="N3" />
        <signal name="XLXN_84" />
        <signal name="N2" />
        <signal name="XLXN_86" />
        <signal name="N1" />
        <signal name="XLXN_89" />
        <signal name="N0" />
        <signal name="XLXN_91" />
        <port polarity="Output" name="A" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="E" />
        <port polarity="Input" name="N3" />
        <port polarity="Input" name="N2" />
        <port polarity="Input" name="N1" />
        <port polarity="Input" name="N0" />
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
        <blockdef name="and4b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="and4b3" name="XLXI_1">
            <blockpin signalname="N0" name="I0" />
            <blockpin signalname="N1" name="I1" />
            <blockpin signalname="N3" name="I2" />
            <blockpin signalname="N2" name="I3" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_12">
            <blockpin signalname="N1" name="I0" />
            <blockpin signalname="N0" name="I1" />
            <blockpin signalname="N2" name="I2" />
            <blockpin signalname="N3" name="I3" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_13">
            <blockpin signalname="N2" name="I0" />
            <blockpin signalname="N0" name="I1" />
            <blockpin signalname="N1" name="I2" />
            <blockpin signalname="N3" name="I3" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_14">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_25" name="I2" />
            <blockpin signalname="XLXN_24" name="I3" />
            <blockpin signalname="A" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_15">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N1" name="I2" />
            <blockpin signalname="N0" name="I3" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_5">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N0" name="I2" />
            <blockpin signalname="N1" name="I3" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_3">
            <blockpin signalname="N0" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N3" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="N1" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N3" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_6">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N1" name="I1" />
            <blockpin signalname="N2" name="I2" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_7">
            <blockpin signalname="N2" name="I0" />
            <blockpin signalname="N1" name="I1" />
            <blockpin signalname="N0" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_8">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N0" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_10">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="E" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="688" name="XLXI_1" orien="R0" />
        <instance x="752" y="928" name="XLXI_12" orien="R0" />
        <instance x="752" y="1168" name="XLXI_13" orien="R0" />
        <instance x="1120" y="816" name="XLXI_14" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="1120" y1="288" y2="288" x1="1008" />
            <wire x2="1120" y1="288" y2="560" x1="1120" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1056" y1="528" y2="528" x1="1008" />
            <wire x2="1056" y1="528" y2="624" x1="1056" />
            <wire x2="1120" y1="624" y2="624" x1="1056" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1056" y1="768" y2="768" x1="1008" />
            <wire x2="1056" y1="688" y2="768" x1="1056" />
            <wire x2="1120" y1="688" y2="688" x1="1056" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1120" y1="1008" y2="1008" x1="1008" />
            <wire x2="1120" y1="752" y2="1008" x1="1120" />
        </branch>
        <instance x="752" y="128" name="XLXI_15" orien="M180" />
        <branch name="A">
            <wire x2="1408" y1="656" y2="656" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="528" y="192" name="N3" orien="R180" />
        <iomarker fontsize="28" x="528" y="256" name="N2" orien="R180" />
        <iomarker fontsize="28" x="528" y="320" name="N1" orien="R180" />
        <iomarker fontsize="28" x="1408" y="656" name="A" orien="R0" />
        <instance x="768" y="1136" name="XLXI_5" orien="M180" />
        <branch name="XLXN_1">
            <wire x2="1088" y1="1488" y2="1488" x1="1024" />
        </branch>
        <instance x="1088" y="1616" name="XLXI_4" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1088" y1="1296" y2="1296" x1="1024" />
            <wire x2="1088" y1="1296" y2="1424" x1="1088" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1088" y1="1664" y2="1664" x1="1024" />
            <wire x2="1088" y1="1552" y2="1664" x1="1088" />
        </branch>
        <branch name="C">
            <wire x2="1376" y1="1488" y2="1488" x1="1344" />
        </branch>
        <instance x="768" y="1792" name="XLXI_3" orien="R0" />
        <instance x="768" y="1616" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="1376" y="1488" name="C" orien="R0" />
        <instance x="768" y="1792" name="XLXI_6" orien="M180" />
        <branch name="XLXN_17">
            <wire x2="1056" y1="1920" y2="1920" x1="1024" />
            <wire x2="1056" y1="1920" y2="2032" x1="1056" />
        </branch>
        <instance x="768" y="1968" name="XLXI_7" orien="M180" />
        <instance x="768" y="2144" name="XLXI_8" orien="M180" />
        <instance x="1056" y="1968" name="XLXI_10" orien="M180" />
        <branch name="XLXN_22">
            <wire x2="1056" y1="2096" y2="2096" x1="1024" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1056" y1="2240" y2="2240" x1="1024" />
            <wire x2="1056" y1="2160" y2="2240" x1="1056" />
        </branch>
        <branch name="E">
            <wire x2="1344" y1="2096" y2="2096" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="2096" name="E" orien="R0" />
        <iomarker fontsize="28" x="528" y="384" name="N0" orien="R180" />
        <branch name="N3">
            <wire x2="544" y1="192" y2="192" x1="528" />
            <wire x2="752" y1="192" y2="192" x1="544" />
            <wire x2="544" y1="192" y2="496" x1="544" />
            <wire x2="544" y1="496" y2="672" x1="544" />
            <wire x2="544" y1="672" y2="912" x1="544" />
            <wire x2="544" y1="912" y2="1200" x1="544" />
            <wire x2="544" y1="1200" y2="1424" x1="544" />
            <wire x2="544" y1="1424" y2="1600" x1="544" />
            <wire x2="544" y1="1600" y2="1856" x1="544" />
            <wire x2="544" y1="1856" y2="2208" x1="544" />
            <wire x2="768" y1="2208" y2="2208" x1="544" />
            <wire x2="768" y1="1856" y2="1856" x1="544" />
            <wire x2="768" y1="1600" y2="1600" x1="544" />
            <wire x2="768" y1="1424" y2="1424" x1="544" />
            <wire x2="768" y1="1200" y2="1200" x1="544" />
            <wire x2="752" y1="912" y2="912" x1="544" />
            <wire x2="752" y1="672" y2="672" x1="544" />
            <wire x2="752" y1="496" y2="496" x1="544" />
        </branch>
        <branch name="N2">
            <wire x2="592" y1="256" y2="256" x1="528" />
            <wire x2="752" y1="256" y2="256" x1="592" />
            <wire x2="592" y1="256" y2="432" x1="592" />
            <wire x2="752" y1="432" y2="432" x1="592" />
            <wire x2="592" y1="432" y2="736" x1="592" />
            <wire x2="752" y1="736" y2="736" x1="592" />
            <wire x2="592" y1="736" y2="1104" x1="592" />
            <wire x2="752" y1="1104" y2="1104" x1="592" />
            <wire x2="592" y1="1104" y2="1264" x1="592" />
            <wire x2="768" y1="1264" y2="1264" x1="592" />
            <wire x2="592" y1="1264" y2="1488" x1="592" />
            <wire x2="768" y1="1488" y2="1488" x1="592" />
            <wire x2="592" y1="1488" y2="1664" x1="592" />
            <wire x2="768" y1="1664" y2="1664" x1="592" />
            <wire x2="592" y1="1664" y2="1984" x1="592" />
            <wire x2="768" y1="1984" y2="1984" x1="592" />
            <wire x2="592" y1="1984" y2="2032" x1="592" />
            <wire x2="768" y1="2032" y2="2032" x1="592" />
        </branch>
        <branch name="N1">
            <wire x2="624" y1="320" y2="320" x1="528" />
            <wire x2="640" y1="320" y2="320" x1="624" />
            <wire x2="752" y1="320" y2="320" x1="640" />
            <wire x2="640" y1="320" y2="560" x1="640" />
            <wire x2="640" y1="560" y2="864" x1="640" />
            <wire x2="640" y1="864" y2="976" x1="640" />
            <wire x2="640" y1="976" y2="1392" x1="640" />
            <wire x2="640" y1="1392" y2="1552" x1="640" />
            <wire x2="640" y1="1552" y2="1920" x1="640" />
            <wire x2="640" y1="1920" y2="2096" x1="640" />
            <wire x2="768" y1="2096" y2="2096" x1="640" />
            <wire x2="768" y1="1920" y2="1920" x1="640" />
            <wire x2="768" y1="1552" y2="1552" x1="640" />
            <wire x2="768" y1="1392" y2="1392" x1="640" />
            <wire x2="752" y1="976" y2="976" x1="640" />
            <wire x2="752" y1="864" y2="864" x1="640" />
            <wire x2="752" y1="560" y2="560" x1="640" />
        </branch>
        <branch name="N0">
            <wire x2="704" y1="384" y2="384" x1="528" />
            <wire x2="752" y1="384" y2="384" x1="704" />
            <wire x2="704" y1="384" y2="624" x1="704" />
            <wire x2="704" y1="624" y2="800" x1="704" />
            <wire x2="704" y1="800" y2="1040" x1="704" />
            <wire x2="704" y1="1040" y2="1328" x1="704" />
            <wire x2="704" y1="1328" y2="1728" x1="704" />
            <wire x2="704" y1="1728" y2="2160" x1="704" />
            <wire x2="704" y1="2160" y2="2272" x1="704" />
            <wire x2="768" y1="2272" y2="2272" x1="704" />
            <wire x2="768" y1="2160" y2="2160" x1="704" />
            <wire x2="768" y1="1728" y2="1728" x1="704" />
            <wire x2="768" y1="1328" y2="1328" x1="704" />
            <wire x2="752" y1="1040" y2="1040" x1="704" />
            <wire x2="752" y1="800" y2="800" x1="704" />
            <wire x2="752" y1="624" y2="624" x1="704" />
        </branch>
    </sheet>
</drawing>
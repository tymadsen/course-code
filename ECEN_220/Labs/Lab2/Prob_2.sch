<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="D" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="F2" />
        <signal name="F1" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="F2" />
        <port polarity="Output" name="F1" />
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
        <blockdef name="or3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="28" y1="-64" y2="-64" x1="0" />
            <circle r="10" cx="38" cy="-62" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="60" cy="-128" />
            <line x2="28" y1="-192" y2="-192" x1="0" />
            <circle r="10" cx="38" cy="-190" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <line x2="48" y1="-128" y2="-128" x1="40" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <block symbolname="or3" name="XLXI_11">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_12">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="or3b3" name="XLXI_13">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="or3b3" name="XLXI_14">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_1">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_3">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_4">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_5">
            <blockpin signalname="XLXN_66" name="I0" />
            <blockpin signalname="XLXN_65" name="I1" />
            <blockpin signalname="XLXN_64" name="I2" />
            <blockpin signalname="XLXN_63" name="I3" />
            <blockpin signalname="F2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_15">
            <blockpin signalname="XLXN_62" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="XLXN_60" name="I2" />
            <blockpin signalname="XLXN_59" name="I3" />
            <blockpin signalname="F1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="464" y="368" name="XLXI_11" orien="R0" />
        <branch name="B">
            <wire x2="160" y1="240" y2="240" x1="128" />
            <wire x2="464" y1="240" y2="240" x1="160" />
            <wire x2="160" y1="240" y2="608" x1="160" />
            <wire x2="176" y1="608" y2="608" x1="160" />
            <wire x2="480" y1="608" y2="608" x1="176" />
            <wire x2="176" y1="608" y2="1392" x1="176" />
            <wire x2="224" y1="1392" y2="1392" x1="176" />
            <wire x2="464" y1="1392" y2="1392" x1="224" />
            <wire x2="224" y1="1392" y2="1712" x1="224" />
            <wire x2="464" y1="1712" y2="1712" x1="224" />
        </branch>
        <branch name="C">
            <wire x2="144" y1="304" y2="304" x1="128" />
            <wire x2="384" y1="304" y2="304" x1="144" />
            <wire x2="384" y1="304" y2="416" x1="384" />
            <wire x2="448" y1="416" y2="416" x1="384" />
            <wire x2="464" y1="304" y2="304" x1="384" />
            <wire x2="144" y1="304" y2="672" x1="144" />
            <wire x2="208" y1="672" y2="672" x1="144" />
            <wire x2="352" y1="672" y2="672" x1="208" />
            <wire x2="480" y1="672" y2="672" x1="352" />
            <wire x2="352" y1="672" y2="816" x1="352" />
            <wire x2="480" y1="816" y2="816" x1="352" />
            <wire x2="208" y1="672" y2="1088" x1="208" />
            <wire x2="256" y1="1088" y2="1088" x1="208" />
            <wire x2="464" y1="1088" y2="1088" x1="256" />
            <wire x2="256" y1="1088" y2="1312" x1="256" />
            <wire x2="464" y1="1312" y2="1312" x1="256" />
        </branch>
        <iomarker fontsize="28" x="128" y="176" name="A" orien="R180" />
        <iomarker fontsize="28" x="128" y="240" name="B" orien="R180" />
        <iomarker fontsize="28" x="128" y="304" name="C" orien="R180" />
        <branch name="D">
            <wire x2="240" y1="480" y2="480" x1="128" />
            <wire x2="448" y1="480" y2="480" x1="240" />
            <wire x2="240" y1="480" y2="880" x1="240" />
            <wire x2="272" y1="880" y2="880" x1="240" />
            <wire x2="480" y1="880" y2="880" x1="272" />
            <wire x2="272" y1="880" y2="1456" x1="272" />
            <wire x2="352" y1="1456" y2="1456" x1="272" />
            <wire x2="352" y1="1456" y2="1648" x1="352" />
            <wire x2="464" y1="1648" y2="1648" x1="352" />
            <wire x2="464" y1="1456" y2="1456" x1="352" />
        </branch>
        <branch name="A">
            <wire x2="176" y1="176" y2="176" x1="128" />
            <wire x2="432" y1="176" y2="176" x1="176" />
            <wire x2="464" y1="176" y2="176" x1="432" />
            <wire x2="432" y1="176" y2="352" x1="432" />
            <wire x2="448" y1="352" y2="352" x1="432" />
            <wire x2="176" y1="176" y2="544" x1="176" />
            <wire x2="304" y1="544" y2="544" x1="176" />
            <wire x2="416" y1="544" y2="544" x1="304" />
            <wire x2="480" y1="544" y2="544" x1="416" />
            <wire x2="416" y1="544" y2="752" x1="416" />
            <wire x2="480" y1="752" y2="752" x1="416" />
            <wire x2="304" y1="544" y2="1152" x1="304" />
            <wire x2="352" y1="1152" y2="1152" x1="304" />
            <wire x2="464" y1="1152" y2="1152" x1="352" />
            <wire x2="352" y1="1152" y2="1248" x1="352" />
            <wire x2="400" y1="1248" y2="1248" x1="352" />
            <wire x2="464" y1="1248" y2="1248" x1="400" />
            <wire x2="400" y1="1248" y2="1584" x1="400" />
            <wire x2="432" y1="1584" y2="1584" x1="400" />
            <wire x2="464" y1="1584" y2="1584" x1="432" />
            <wire x2="464" y1="1520" y2="1520" x1="432" />
            <wire x2="432" y1="1520" y2="1584" x1="432" />
        </branch>
        <instance x="448" y="544" name="XLXI_12" orien="R0" />
        <iomarker fontsize="28" x="128" y="480" name="D" orien="R180" />
        <instance x="480" y="736" name="XLXI_13" orien="R0" />
        <instance x="480" y="944" name="XLXI_14" orien="R0" />
        <instance x="464" y="1216" name="XLXI_1" orien="R0" />
        <instance x="464" y="1376" name="XLXI_2" orien="R0" />
        <instance x="464" y="1584" name="XLXI_3" orien="R0" />
        <instance x="464" y="1776" name="XLXI_4" orien="R0" />
        <instance x="848" y="1536" name="XLXI_5" orien="R0" />
        <branch name="F2">
            <wire x2="1120" y1="1376" y2="1376" x1="1104" />
            <wire x2="1136" y1="1376" y2="1376" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1376" name="F2" orien="R0" />
        <instance x="848" y="656" name="XLXI_15" orien="R0" />
        <branch name="F1">
            <wire x2="1136" y1="496" y2="496" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="496" name="F1" orien="R0" />
        <branch name="XLXN_59">
            <wire x2="848" y1="240" y2="240" x1="720" />
            <wire x2="848" y1="240" y2="400" x1="848" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="768" y1="416" y2="416" x1="704" />
            <wire x2="768" y1="416" y2="464" x1="768" />
            <wire x2="848" y1="464" y2="464" x1="768" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="784" y1="608" y2="608" x1="736" />
            <wire x2="784" y1="528" y2="608" x1="784" />
            <wire x2="848" y1="528" y2="528" x1="784" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="848" y1="816" y2="816" x1="736" />
            <wire x2="848" y1="592" y2="816" x1="848" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="848" y1="1120" y2="1120" x1="720" />
            <wire x2="848" y1="1120" y2="1280" x1="848" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="784" y1="1280" y2="1280" x1="720" />
            <wire x2="784" y1="1280" y2="1344" x1="784" />
            <wire x2="848" y1="1344" y2="1344" x1="784" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="784" y1="1456" y2="1456" x1="720" />
            <wire x2="784" y1="1408" y2="1456" x1="784" />
            <wire x2="848" y1="1408" y2="1408" x1="784" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="848" y1="1648" y2="1648" x1="720" />
            <wire x2="848" y1="1472" y2="1648" x1="848" />
        </branch>
    </sheet>
</drawing>
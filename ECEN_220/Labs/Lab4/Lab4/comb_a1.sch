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
        <signal name="N2" />
        <signal name="A" />
        <signal name="N1" />
        <signal name="N3" />
        <signal name="N0" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <port polarity="Input" name="N2" />
        <port polarity="Output" name="A" />
        <port polarity="Input" name="N1" />
        <port polarity="Input" name="N3" />
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
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_2">
            <blockpin signalname="N1" name="I0" />
            <blockpin signalname="N0" name="I1" />
            <blockpin signalname="N2" name="I2" />
            <blockpin signalname="N3" name="I3" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_3">
            <blockpin signalname="N2" name="I0" />
            <blockpin signalname="N1" name="I1" />
            <blockpin signalname="N0" name="I2" />
            <blockpin signalname="N3" name="I3" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="XLXN_1" name="I3" />
            <blockpin signalname="A" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_6">
            <blockpin signalname="N3" name="I0" />
            <blockpin signalname="N2" name="I1" />
            <blockpin signalname="N1" name="I2" />
            <blockpin signalname="N0" name="I3" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="848" name="XLXI_1" orien="R0" />
        <instance x="592" y="1088" name="XLXI_2" orien="R0" />
        <instance x="592" y="1328" name="XLXI_3" orien="R0" />
        <instance x="960" y="976" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="960" y1="448" y2="448" x1="848" />
            <wire x2="960" y1="448" y2="720" x1="960" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="896" y1="688" y2="688" x1="848" />
            <wire x2="896" y1="688" y2="784" x1="896" />
            <wire x2="960" y1="784" y2="784" x1="896" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="896" y1="928" y2="928" x1="848" />
            <wire x2="896" y1="848" y2="928" x1="896" />
            <wire x2="960" y1="848" y2="848" x1="896" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="960" y1="1168" y2="1168" x1="848" />
            <wire x2="960" y1="912" y2="1168" x1="960" />
        </branch>
        <branch name="N2">
            <wire x2="416" y1="416" y2="416" x1="368" />
            <wire x2="592" y1="416" y2="416" x1="416" />
            <wire x2="416" y1="416" y2="592" x1="416" />
            <wire x2="416" y1="592" y2="896" x1="416" />
            <wire x2="416" y1="896" y2="1264" x1="416" />
            <wire x2="592" y1="1264" y2="1264" x1="416" />
            <wire x2="592" y1="896" y2="896" x1="416" />
            <wire x2="592" y1="592" y2="592" x1="416" />
        </branch>
        <instance x="592" y="288" name="XLXI_6" orien="M180" />
        <branch name="A">
            <wire x2="1248" y1="816" y2="816" x1="1216" />
        </branch>
        <branch name="N1">
            <wire x2="448" y1="480" y2="480" x1="368" />
            <wire x2="592" y1="480" y2="480" x1="448" />
            <wire x2="448" y1="480" y2="720" x1="448" />
            <wire x2="448" y1="720" y2="1024" x1="448" />
            <wire x2="448" y1="1024" y2="1200" x1="448" />
            <wire x2="592" y1="1200" y2="1200" x1="448" />
            <wire x2="592" y1="1024" y2="1024" x1="448" />
            <wire x2="592" y1="720" y2="720" x1="448" />
        </branch>
        <iomarker fontsize="28" x="368" y="352" name="N3" orien="R180" />
        <iomarker fontsize="28" x="368" y="416" name="N2" orien="R180" />
        <iomarker fontsize="28" x="368" y="480" name="N1" orien="R180" />
        <iomarker fontsize="28" x="368" y="544" name="N0" orien="R180" />
        <iomarker fontsize="28" x="1248" y="816" name="A" orien="R0" />
        <branch name="N3">
            <wire x2="384" y1="352" y2="352" x1="368" />
            <wire x2="592" y1="352" y2="352" x1="384" />
            <wire x2="384" y1="352" y2="656" x1="384" />
            <wire x2="384" y1="656" y2="832" x1="384" />
            <wire x2="384" y1="832" y2="1072" x1="384" />
            <wire x2="592" y1="1072" y2="1072" x1="384" />
            <wire x2="592" y1="832" y2="832" x1="384" />
            <wire x2="592" y1="656" y2="656" x1="384" />
        </branch>
        <branch name="N0">
            <wire x2="496" y1="544" y2="544" x1="368" />
            <wire x2="592" y1="544" y2="544" x1="496" />
            <wire x2="496" y1="544" y2="784" x1="496" />
            <wire x2="496" y1="784" y2="960" x1="496" />
            <wire x2="496" y1="960" y2="1136" x1="496" />
            <wire x2="592" y1="1136" y2="1136" x1="496" />
            <wire x2="592" y1="960" y2="960" x1="496" />
            <wire x2="592" y1="784" y2="784" x1="496" />
        </branch>
    </sheet>
</drawing>
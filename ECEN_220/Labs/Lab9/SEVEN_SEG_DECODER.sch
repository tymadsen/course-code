<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="N3" />
        <signal name="N2" />
        <signal name="N1" />
        <signal name="N0" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="A" />
        <signal name="C" />
        <signal name="E" />
        <signal name="B" />
        <signal name="D" />
        <signal name="F" />
        <signal name="G" />
        <port polarity="Input" name="N3" />
        <port polarity="Input" name="N2" />
        <port polarity="Input" name="N1" />
        <port polarity="Input" name="N0" />
        <port polarity="Output" name="A" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="E" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="G" />
        <blockdef name="COMB_ACE">
            <timestamp>2013-10-4T22:20:42</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ROM_BDFG">
            <timestamp>2013-10-4T22:38:50</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="COMB_ACE" name="XLXI_1">
            <blockpin signalname="N3" name="N3" />
            <blockpin signalname="N2" name="N2" />
            <blockpin signalname="N1" name="N1" />
            <blockpin signalname="N0" name="N0" />
            <blockpin signalname="A" name="A" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="E" />
        </block>
        <block symbolname="ROM_BDFG" name="XLXI_2">
            <blockpin signalname="N3" name="N3" />
            <blockpin signalname="N2" name="N2" />
            <blockpin signalname="N1" name="N1" />
            <blockpin signalname="N0" name="N0" />
            <blockpin signalname="B" name="B" />
            <blockpin signalname="D" name="D" />
            <blockpin signalname="F" name="F" />
            <blockpin signalname="G" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="560" y="656" name="XLXI_1" orien="R0">
        </instance>
        <instance x="560" y="992" name="XLXI_2" orien="R0">
        </instance>
        <branch name="N3">
            <wire x2="432" y1="432" y2="432" x1="416" />
            <wire x2="432" y1="432" y2="768" x1="432" />
            <wire x2="560" y1="768" y2="768" x1="432" />
            <wire x2="560" y1="432" y2="432" x1="432" />
        </branch>
        <branch name="N2">
            <wire x2="464" y1="496" y2="496" x1="416" />
            <wire x2="464" y1="496" y2="832" x1="464" />
            <wire x2="560" y1="832" y2="832" x1="464" />
            <wire x2="560" y1="496" y2="496" x1="464" />
        </branch>
        <branch name="N1">
            <wire x2="496" y1="560" y2="560" x1="416" />
            <wire x2="496" y1="560" y2="896" x1="496" />
            <wire x2="560" y1="896" y2="896" x1="496" />
            <wire x2="560" y1="560" y2="560" x1="496" />
        </branch>
        <branch name="N0">
            <wire x2="528" y1="624" y2="624" x1="416" />
            <wire x2="544" y1="624" y2="624" x1="528" />
            <wire x2="560" y1="624" y2="624" x1="544" />
            <wire x2="528" y1="624" y2="960" x1="528" />
            <wire x2="560" y1="960" y2="960" x1="528" />
        </branch>
        <iomarker fontsize="28" x="416" y="432" name="N3" orien="R180" />
        <iomarker fontsize="28" x="416" y="496" name="N2" orien="R180" />
        <iomarker fontsize="28" x="416" y="560" name="N1" orien="R180" />
        <iomarker fontsize="28" x="416" y="624" name="N0" orien="R180" />
        <branch name="A">
            <wire x2="976" y1="432" y2="432" x1="944" />
        </branch>
        <iomarker fontsize="28" x="976" y="432" name="A" orien="R0" />
        <branch name="C">
            <wire x2="976" y1="528" y2="528" x1="944" />
        </branch>
        <iomarker fontsize="28" x="976" y="528" name="C" orien="R0" />
        <branch name="E">
            <wire x2="976" y1="624" y2="624" x1="944" />
        </branch>
        <iomarker fontsize="28" x="976" y="624" name="E" orien="R0" />
        <branch name="B">
            <wire x2="976" y1="768" y2="768" x1="944" />
        </branch>
        <iomarker fontsize="28" x="976" y="768" name="B" orien="R0" />
        <branch name="D">
            <wire x2="976" y1="832" y2="832" x1="944" />
        </branch>
        <iomarker fontsize="28" x="976" y="832" name="D" orien="R0" />
        <branch name="F">
            <wire x2="976" y1="896" y2="896" x1="944" />
        </branch>
        <iomarker fontsize="28" x="976" y="896" name="F" orien="R0" />
        <branch name="G">
            <wire x2="976" y1="960" y2="960" x1="944" />
        </branch>
        <iomarker fontsize="28" x="976" y="960" name="G" orien="R0" />
    </sheet>
</drawing>
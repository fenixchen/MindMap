<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1514256295287" ID="ID_93636897" MODIFIED="1514345225108">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      WLAN Driver
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="30"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1514256317246" ID="ID_369065683" MODIFIED="1514352087475" POSITION="right" TEXT="wlanfmac_module_init()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<icon BUILTIN="flag-green"/>
<node COLOR="#00b439" CREATED="1514256363552" ID="ID_72748650" MODIFIED="1514345101498">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Init semaphore &lt;registration_sem&gt;
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514256996724" ID="ID_1257806697" MODIFIED="1514345101503">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      delay run wland_driver_init()
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1190088513" ENDARROW="Default" ENDINCLINATION="334;0;" ID="Arrow_ID_479571589" STARTARROW="None" STARTINCLINATION="334;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514257107701" ID="ID_901167670" MODIFIED="1514345101507" TEXT="wait &lt;registration_sem&gt;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514257077743" ID="ID_1190088513" MODIFIED="1514352087478" POSITION="right" TEXT="wlan_driver_init()">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1190088513" ENDARROW="Default" ENDINCLINATION="334;0;" ID="Arrow_ID_479571589" SOURCE="ID_1257806697" STARTARROW="None" STARTINCLINATION="334;0;"/>
<font NAME="Consolas" SIZE="24"/>
<icon BUILTIN="flag-green"/>
<node COLOR="#00b439" CREATED="1514265492930" ID="ID_706060926" MODIFIED="1514345101509" TEXT="wland_sdio_register()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514265509690" ID="ID_1255562133" LINK="#ID_1045710415" MODIFIED="1514345101511" TEXT="sdio_register_driver(&amp;wland_sdmmc_driver)">
<cloud/>
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514266324397" ID="ID_943120403" MODIFIED="1514352087479" POSITION="right" TEXT="wland_ops_sdio_probe()">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_943120403" ENDARROW="Default" ENDINCLINATION="1150;0;" ID="Arrow_ID_1284632247" SOURCE="ID_1790672297" STARTARROW="None" STARTINCLINATION="1150;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514266370920" ID="ID_794607213" MODIFIED="1514345101515" TEXT="osh = osl_attach(func, SDIO_BUS, true)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514266602450" ID="ID_877500853" MODIFIED="1514345101517" TEXT="osh = kmalloc(sizeof(struct osl_info))">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514266399432" ID="ID_1531580217" MODIFIED="1514345101520" TEXT="bus_if = osl_malloc(sizeof(struct wland_bus))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514266413234" ID="ID_1872673652" MODIFIED="1514345101521" TEXT="sdiodev = osl_malloc(sizeof(struct wland_sdio_dev))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514266459203" ID="ID_1817467901" MODIFIED="1514345101524" TEXT="// initial sdiodev">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514266468363" ID="ID_1062388770" MODIFIED="1514345101525" TEXT="// initial bus_if">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514280936735" ID="ID_971593405" LINK="#ID_1526746808" MODIFIED="1514345101525" TEXT="bus_if-&gt;ops = &amp;wland_sdio_bus_ops">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514266501485" ID="ID_282113788" MODIFIED="1514345101528" TEXT="wland_sdioh_attach(sdiodev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1770943044" ENDARROW="Default" ENDINCLINATION="55;0;" ID="Arrow_ID_1378951307" STARTARROW="None" STARTINCLINATION="55;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514266510902" ID="ID_90174333" MODIFIED="1514345101529" TEXT="sdiodev-&gt;bus = wland_sdio_probe(osh, sdiodev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_124161949" ENDARROW="Default" ENDINCLINATION="326;0;" ID="Arrow_ID_578797195" STARTARROW="None" STARTINCLINATION="326;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514266645139" ID="ID_1770943044" MODIFIED="1514352087483" POSITION="right" TEXT="wland_sdioh_attach(sdiodev)">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1770943044" ENDARROW="Default" ENDINCLINATION="55;0;" ID="Arrow_ID_1378951307" SOURCE="ID_282113788" STARTARROW="None" STARTINCLINATION="55;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514266688053" ID="ID_295821579" MODIFIED="1514345101530" TEXT="sdio_claim_host()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514266694029" ID="ID_1671104133" MODIFIED="1514345101531" TEXT="sdio_set_block_size(512)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514266716446" ID="ID_1826413453" MODIFIED="1514345101533" TEXT="sdio_enable_func(sdiodev-&gt;func)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514266743568" ID="ID_124161949" MODIFIED="1514352087489" POSITION="right" TEXT="wland_sdio_probe(&#xa;&#x9;struct osl_info *osh, &#xa;&#x9;struct wland_sdio_dev *sdiodev)">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_124161949" ENDARROW="Default" ENDINCLINATION="326;0;" ID="Arrow_ID_578797195" SOURCE="ID_90174333" STARTARROW="None" STARTINCLINATION="326;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514267362381" ID="ID_1371906111" MODIFIED="1514345101541" TEXT="struct wland_sdio *bus = malloc(sizeof(wlan_sdio))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267387979" ID="ID_1046578601" MODIFIED="1514345101544" TEXT="wland_pktq_init(&amp;bus-&gt;txq, (PRIOMASK + 1), TXQLEN);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267394212" ID="ID_1903783404" MODIFIED="1514345101550" TEXT="wland_pktq_init(&amp;bus-&gt;rxq, (PRIOMASK + 1), TXQLEN);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267594332" ID="ID_1769750114" MODIFIED="1514345101552" TEXT="// init bus">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267619045" ID="ID_1732337129" MODIFIED="1514345101553" TEXT="kthread_run(wland_sdio_watchdog_thread)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267636631" ID="ID_644137399" MODIFIED="1514345101553" TEXT="wland_bus_attach(0, sdiodev-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1349835036" ENDARROW="Default" ENDINCLINATION="555;0;" ID="Arrow_ID_873365319" STARTARROW="None" STARTINCLINATION="555;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267650776" ID="ID_1319663920" MODIFIED="1514345101554" TEXT="bus-&gt;rxbuf = osl_malloc(osh, bus-&gt;rxblen)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267666872" ID="ID_105320695" MODIFIED="1514345101555" TEXT="wland_bus_start(sdiodev-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_642800145" ENDARROW="Default" ENDINCLINATION="534;0;" ID="Arrow_ID_1381763562" STARTARROW="None" STARTINCLINATION="534;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514267696435" ID="ID_1349835036" MODIFIED="1514352087497" POSITION="right" TEXT="wland_bus_attach()">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1349835036" ENDARROW="Default" ENDINCLINATION="555;0;" ID="Arrow_ID_873365319" SOURCE="ID_644137399" STARTARROW="None" STARTINCLINATION="555;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514267954516" ID="ID_1102318592" MODIFIED="1514345101556" TEXT="drvr = malloc(sizeof(struct wland_private))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514267993221" ID="ID_545727101" MODIFIED="1514345101557" TEXT="wland_proto_attach(drvr)">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514268799542" ID="ID_1573278450" MODIFIED="1514345101557" TEXT="struct wland_proto *cdc = malloc(...)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514268850697" ID="ID_255037032" MODIFIED="1514345101559" TEXT="drvr-&gt;prot = cdc">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514268863830" ID="ID_859521161" MODIFIED="1514345101561" TEXT="drvr-&gt;hdrlen += WID_HEADER_LEN">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514268885144" ID="ID_1013869164" MODIFIED="1514345101563" TEXT="drvr-&gt;maxctl = ...">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514268003525" ID="ID_1975905043" MODIFIED="1514345101564" TEXT="wland_fweh_attach(drvr)">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514268943530" ID="ID_1559874716" MODIFIED="1514345101564">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// initialize firmware event handling</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514268962445" ID="ID_1676633834" MODIFIED="1514345101571" TEXT="struct wland_fw_info *fweh = &amp;drvr-&gt;fweh">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514343192341" ID="ID_1946021842" MODIFIED="1514345101572" TEXT="INIT_WORK(&amp;fweh-&gt;event_work, fweh_event_worker)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514343192338" ID="ID_928152934" MODIFIED="1514345101575" TEXT="spin_lock_init(&amp;fweh-&gt;evt_q_lock)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514343192333" ID="ID_994012042" MODIFIED="1514345101576" TEXT="INIT_LIST_HEAD(&amp;fweh-&gt;event_q)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514268016414" ID="ID_642800145" MODIFIED="1514352087502" POSITION="right" TEXT="wland_bus_start()">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_642800145" ENDARROW="Default" ENDINCLINATION="534;0;" ID="Arrow_ID_1381763562" SOURCE="ID_105320695" STARTARROW="None" STARTINCLINATION="534;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514268050080" ID="ID_328184304" MODIFIED="1514345101578">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// get mac address to mac_addr</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514268071265" ID="ID_1476942601" MODIFIED="1514345101580" TEXT="wland_add_if(&quot;wlan%d&quot;, mac_addr)">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514269393822" ID="ID_1172227272" MODIFIED="1514345101582">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// allocate netdev</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514269325306" ID="ID_1963317600" MODIFIED="1514345101584">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct net_device * ndev =
    </p>
    <p>
      &#160;&#160;&#160;&#160;alloc_netdev(sizeof(struct wland_if), name, ether_setup)
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514269113782" ID="ID_1398369255" MODIFIED="1514345101588" TEXT="struct wland_if *ifp = netdev_priv(ndev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514269369752" ID="ID_1281441603" MODIFIED="1514345101589" TEXT="ifp-&gt;ndev = ndev">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514268089722" ID="ID_1867969758" MODIFIED="1514345101589" TEXT="wland_fws_init(drvr)">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514269647104" ID="ID_1739215237" MODIFIED="1514345101590">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// init stats data structure</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514269602075" ID="ID_1777209882" MODIFIED="1514345101592" TEXT="drvr-&gt;fws = kzalloc(sizeof(*(drvr-&gt;fws))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514268096778" ID="ID_470546025" MODIFIED="1514345101593" TEXT="wland_fws_add_interface(ifp)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514268110802" ID="ID_403740175" MODIFIED="1514345101594" TEXT="cfg80211_attach(drvr, bus_if-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1737758156" ENDARROW="Default" ENDINCLINATION="539;0;" ID="Arrow_ID_1201649165" STARTARROW="None" STARTINCLINATION="539;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514268121835" ID="ID_1584202368" MODIFIED="1514345101595" TEXT="iwext_attach(drvr, bus_if-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514268128787" ID="ID_1206433861" MODIFIED="1514345101596" TEXT="netdev_attach(ifp)">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514276839393" ID="ID_1613626917" LINK="#ID_350087559" MODIFIED="1514345101596" TEXT="ndev-&gt;netdev_ops = &amp;wland_netdev_ops_pri">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514276948241" ID="ID_1031950409" MODIFIED="1514345101598" TEXT="register_netdev(ndev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514268138707" ID="ID_1582083272" MODIFIED="1514345101599" TEXT="wland_start_chip(ifp, device_role)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1066315231" ENDARROW="Default" ENDINCLINATION="792;0;" ID="Arrow_ID_1195920157" STARTARROW="None" STARTINCLINATION="792;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514268148547" ID="ID_1079561996" MODIFIED="1514345101600">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// notify registration_sem</font>
    </p>
    <p>
      wland_registration_sem_up(true)
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514269718956" ID="ID_1737758156" MODIFIED="1514352087509" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* cfg80211 register */</font>
    </p>
    <p>
      cfg80211_attach()
    </p>
  </body>
</html></richcontent>
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1737758156" ENDARROW="Default" ENDINCLINATION="539;0;" ID="Arrow_ID_1201649165" SOURCE="ID_403740175" STARTARROW="None" STARTINCLINATION="539;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514269729603" ID="ID_733594554" MODIFIED="1514345101607" TEXT="wland_setup_wiphy()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514270105750" ID="ID_630082124" MODIFIED="1514345101607" TEXT="https://01.org/linuxgraphics/gfx-docs/drm/80211/cfg80211.html">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514269806391" ID="ID_1722365202" LINK="#ID_638190726" MODIFIED="1514345101611" TEXT="wiphy_new(&amp;wl_cfg80211_ops, sizeof(struct wland_cfg80211_info))">
<cloud/>
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514269820566" ID="ID_1365862761" MODIFIED="1514345101618" TEXT="// set wiphy parameters">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514269840989" ID="ID_604729455" MODIFIED="1514345101619" TEXT="wiphy_register()">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514270589931" ID="ID_919290785" MODIFIED="1514345101619" TEXT="wland_alloc_vif()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514270623249" ID="ID_742030324" MODIFIED="1514345101620">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//register cfg80211 event handlers</font>
    </p>
    <p>
      wland_register_event_handlers()
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514276972680" ID="ID_1066315231" MODIFIED="1514352087513" POSITION="right" TEXT="wland_start_chip()">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1066315231" ENDARROW="Default" ENDINCLINATION="792;0;" ID="Arrow_ID_1195920157" SOURCE="ID_1582083272" STARTARROW="None" STARTINCLINATION="792;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514277052198" ID="ID_733765446" MODIFIED="1514345101624" TEXT="wland_bus_active()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514280189976" ID="ID_1136567024" MODIFIED="1514345101625" TEXT="wland_bus_init()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514280218586" ID="ID_1948524699" LINK="#ID_1137340587" MODIFIED="1514349216912" TEXT="wland_sdio_bus_init()">
<font BOLD="true" NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1514280414865" ID="ID_1334994037" MODIFIED="1514345101630" TEXT="wland_fil_set_cmd_data(ifp, WID_MAC_ROLE)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1457040373" ENDARROW="Default" ENDINCLINATION="449;0;" ID="Arrow_ID_896903336" STARTARROW="None" STARTINCLINATION="448;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514278528470" ID="ID_1730212714" MODIFIED="1514345101632" TEXT="wland_preinit_cmds()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514280450059" ID="ID_1798301300" MODIFIED="1514345101633" TEXT="wland_fil_set_cmd_data(ifp, WID_MAC_ADDR)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514280459444" ID="ID_1545440347" MODIFIED="1514345101635" TEXT="wland_fil_get_cmd_data(ifp, WID_MAC_ADDR)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514280515752" ID="ID_449301584" MODIFIED="1514345101635" TEXT="wland_fil_set_cmd_data(ifp, WID_PREAMBLE)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514280527536" ID="ID_1405704068" MODIFIED="1514345101637" TEXT="wland_set_scan_timeout()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514280548106" ID="ID_281030821" MODIFIED="1514345101637" TEXT="wland_fil_set_cmd_data(ifp, WID_LISTEN_INTERVAL)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514280566956" ID="ID_1124924747" MODIFIED="1514345101638" TEXT="wland_fil_set_cmd_data(ifp, WID_LINK_LOSS_THRESHOLD)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514280583526" ID="ID_135765207" MODIFIED="1514345101639" TEXT="wland_fil_set_cmd_data(ifp, WID_POWER_MANAGEMENT)">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514280628873" ID="ID_1457040373" MODIFIED="1514352087517" POSITION="right" TEXT="wland_fil_set_cmd_data()">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1457040373" ENDARROW="Default" ENDINCLINATION="449;0;" ID="Arrow_ID_896903336" SOURCE="ID_1334994037" STARTARROW="None" STARTINCLINATION="448;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514280744833" ID="ID_499510854" MODIFIED="1514345101641" TEXT="wland_wid_hdrpush()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514280800157" ID="ID_56852342" MODIFIED="1514345101642" TEXT="drvr-&gt;prot-&gt;buf[...] = ...">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514280793829" ID="ID_378226415" MODIFIED="1514345101643" TEXT="wland_proto_cdc_msg()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514280853329" ID="ID_1452012860" MODIFIED="1514345101644" TEXT="wland_bus_txctl()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514280871803" ID="ID_1627015544" MODIFIED="1514349216915" TEXT="wland_sdio_bus_txctl()">
<font BOLD="true" NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514352288547" ID="ID_1752792690" MODIFIED="1514352400454" POSITION="right" TEXT="wland_sdio_tx_dpc()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514352407138" ID="ID_848780841" MODIFIED="1514352622374">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// check length of tx queue</font><br />while (wland_pktq_mlen(&amp;bus-&gt;txq,~bus-&gt;flowcontrol))
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514352622401" ID="ID_1509967217" MODIFIED="1514352646768">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160; <font color="#00cccc">// wait up SDIO device</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;wland_sdio_clkctl(bus, CLK_AVAIL);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514352622386" ID="ID_1013561542" MODIFIED="1514352715318">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160; <font color="#00cccc">// do TX</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;wland_sdio_sendfromq(bus)
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514352685318" ID="ID_1632115596" MODIFIED="1514352699932" TEXT="wland_pktq_mdeq() //load packet from queue">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514352716528" ID="ID_217139560" MODIFIED="1514352723749" TEXT="wland_sdio_txpkt() //tx packet">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514352766971" ID="ID_1041916305" MODIFIED="1514352803258" TEXT="PKTPUSH(bus_if-&gt;osh, pkt, WID_HEADER_LEN)// add header">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514352780572" ID="ID_465449856" MODIFIED="1514352787162" TEXT="//pad alignment">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514352793589" ID="ID_1936482509" MODIFIED="1514353920577" TEXT="wland_sdio_send_pkt(bus, pkt, len)">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1936482509" ENDARROW="Default" ENDINCLINATION="138;0;" ID="Arrow_ID_1136415787" SOURCE="ID_1267722427" STARTARROW="None" STARTINCLINATION="138;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514352837577" ID="ID_125338393" MODIFIED="1514352857007" TEXT="sdioh_request_bytes(SDIOH_WRITE, URSDIO_FUNC1_FIFO_WR)">
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#6600ff" CREATED="1514352879868" ID="ID_517957986" MODIFIED="1514352881016" TEXT="sdio_writesb()">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#ff3300" CREATED="1514352811240" ID="ID_702576548" MODIFIED="1514352812532" TEXT="wland_txcomplete()">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514352731057" ID="ID_642711340" MODIFIED="1514352738078" TEXT="wland_txflowcontrol() // de-flow control">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514353866533" ID="ID_808380410" MODIFIED="1514353911685" TEXT="if (bus-&gt;ctrl_frame_stat) wland_sdio_txctl_frames(bus)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514353903416" ID="ID_1586899613" MODIFIED="1514353915677" TEXT="wland_pkt_buf_get_suitable_skb(bus, NULL, &amp;nbytes)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514353913080" ID="ID_1267722427" MODIFIED="1514353920578" TEXT="wland_sdio_send_pkt(bus, pkt, nbytes)">
<arrowlink DESTINATION="ID_1936482509" ENDARROW="Default" ENDINCLINATION="138;0;" ID="Arrow_ID_1136415787" STARTARROW="None" STARTINCLINATION="138;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514353938753" ID="ID_766952952" MODIFIED="1514353940007" TEXT="bus-&gt;ctrl_frame_stat = false">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514354585994" ID="ID_1248781135" MODIFIED="1514354588007" POSITION="right" TEXT="wland_sdio_rx_dpc()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514354661703" ID="ID_1674106554" MODIFIED="1514354663812" TEXT="wland_sdio_process_rxframes()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514354680385" ID="ID_1385948851" MODIFIED="1514354681189" TEXT="while (wland_pktq_mlen(&amp;bus-&gt;rxq, ~bus-&gt;flowcontrol))">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514354693657" ID="ID_515443409" MODIFIED="1514355479064" TEXT="  skb = wland_pktq_mdeq(&amp;bus-&gt;rxq) // pkt deque">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355488063" ID="ID_475077155" MODIFIED="1514355528012" TEXT="  buf = PKTDATA(bus_if-&gt;osh, skb)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355534056" ID="ID_505190896" MODIFIED="1514355537492" TEXT="  rx_type = (u8) buf[1] &gt;&gt; 4">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355553657" ID="ID_138976908" MODIFIED="1514355680327" TEXT="  if (rx_type == PKT_TYPE_CFG_RSP) //WID_MSG_RESP">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355573355" ID="ID_572575315" MODIFIED="1514355575647" TEXT="    msg_type = buf[2]">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355583035" ID="ID_223388649" MODIFIED="1514356114684">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160; <font color="#00cccc">//control response</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;if (msg_type == WLAND_WID_MSG_RESP)
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355606372" ID="ID_1560612605" MODIFIED="1514355614522" TEXT="        memcpy(bus-&gt;rxctl, skb-&gt;data, rx_len)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355615429" ID="ID_9200724" MODIFIED="1514355885408" TEXT="        dhd_os_ioctl_resp_wake(bus)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355646608" ID="ID_439161432" MODIFIED="1514356139402">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;<font color="#00cccc">//Firmware Event, wake fweh_event_worker()</font><br />&#160;&#160;&#160;if (msg_type == WLAND_WID_MSG_NETINFO)&#160;
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355729502" ID="ID_433759862" MODIFIED="1514355785990">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;&#160;firmweh_push_event(&amp;event_packet, buf);
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355806195" ID="ID_796058477" MODIFIED="1514356232492">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;<font color="#00cccc">// network event, assoc/de-assoc/auth/etc, </font>
    </p>
    <p>
      <font color="#00cccc">&#160;&#160;&#160;// call firmweh_push_event()</font>
    </p>
    <p>
      &#160;&#160;&#160;if (msg_type == WLAND_WID_MSG_EVENT)
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355843302" ID="ID_336439434" MODIFIED="1514355899322">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;&#160;wland_handle_network_link_event(bus_if-&gt;drvr,&amp;event_packet,buf);
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355908196" ID="ID_186700369" MODIFIED="1514356286429">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">&#160;&#160;&#160;&#160;// MAC Status, Connect/Disconnect, </font>
    </p>
    <p>
      <font color="#00cccc">&#160;&#160;&#160;&#160;// call firmeh_push_event </font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (msg_type == WLAND_WID_MSG_MAC_STATUS)
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355925757" ID="ID_1510167721" MODIFIED="1514355950468">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;wland_handle_mac_status(bus_if-&gt;drvr,&amp;event_packet,buf);
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355973640" ID="ID_1685529391" MODIFIED="1514356018145" TEXT="  else">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514355976704" ID="ID_1825048046" MODIFIED="1514356369646">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;<font color="#00cccc">//MSDU data</font>
    </p>
    <p>
      &#160;&#160;&#160;wland_rx_frames(bus-&gt;sdiodev-&gt;dev, skb);
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1426373229" ENDARROW="Default" ENDINCLINATION="650;0;" ID="Arrow_ID_115940235" STARTARROW="None" STARTINCLINATION="650;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514356365765" ID="ID_1426373229" MODIFIED="1514356377618" TEXT="wland_rx_frames(skb)">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1426373229" ENDARROW="Default" ENDINCLINATION="650;0;" ID="Arrow_ID_115940235" SOURCE="ID_1825048046" STARTARROW="None" STARTINCLINATION="650;0;"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514356412961" ID="ID_414992156" MODIFIED="1514356433654" TEXT="wland_proto_hdrpull() // remove header">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514356452515" ID="ID_1769347080" MODIFIED="1514356458377" TEXT="wland_netif_rx(skb)">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514356487646" ID="ID_661010225" MODIFIED="1514356489043" TEXT="netif_rx()">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514356655274" ID="ID_277394516" MODIFIED="1514356674855" POSITION="right" TEXT="firmweh_push_event(&#xa;struct wland_event_msg *event_packet, &#xa;void *data)">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514357053183" ID="ID_1235472" MODIFIED="1514357055260" TEXT="check fweh-&gt;evt_handler[event_packet-&gt;event_code]">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514357078377" ID="ID_1922057641" MODIFIED="1514357097975" TEXT="list_add_tail(&amp;event-&gt;q, &amp;fweh-&gt;event_q) //enqueue">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514357084945" ID="ID_747823546" MODIFIED="1514357179261">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//trigger fweh_event_worker()</font>
    </p>
    <p>
      schedule_work(&amp;fweh-&gt;event_work)
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1832416361" ENDARROW="Default" ENDINCLINATION="879;0;" ID="Arrow_ID_1535607970" STARTARROW="None" STARTINCLINATION="879;0;"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514357128917" ID="ID_1832416361" MODIFIED="1514357187670" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//firmware event worker</font>
    </p>
    <p>
      fweh_event_worker()
    </p>
  </body>
</html></richcontent>
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1832416361" ENDARROW="Default" ENDINCLINATION="879;0;" ID="Arrow_ID_1535607970" SOURCE="ID_747823546" STARTARROW="None" STARTINCLINATION="879;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514357204242" ID="ID_110985855" MODIFIED="1514357220810">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//dequeue event</font>
    </p>
    <p>
      while ((event = fweh_dequeue_event(fweh)))
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514357251022" ID="ID_1842078995" MODIFIED="1514357261259" TEXT="  wland_add_if() if code == WLAND_E_IF_ADD">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514357268087" ID="ID_1293131181" MODIFIED="1514357301351">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;wland_fws_macdesc_init() if code == WLAND_E_IF_CHANGE
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514357331100" ID="ID_1691999028" MODIFIED="1514357338329" TEXT="  wland_del_if() if code == WLAND_E_IF_DEL">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514357351541" ID="ID_654582221" MODIFIED="1514357361698" TEXT="  otherwise fweh-&gt;evt_handler[emsg_be-&gt;event_code](...)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358539701" ID="ID_1133392569" MODIFIED="1514358629075">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_ESCAN_RESULT, notify_escan_handler);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358629104" ID="ID_125723196" MODIFIED="1514358629106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_DISCONNECT_IND,notify_connect_status);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358629101" ID="ID_521644158" MODIFIED="1514358629103">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_CONNECT_IND, notify_connect_status);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358629098" ID="ID_44736442" MODIFIED="1514358629100">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_ROAM, notify_roaming_status);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358629095" ID="ID_398161703" MODIFIED="1514358629097">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_PFN_NET_FOUND,notify_sched_scan_results);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358629093" ID="ID_976321344" MODIFIED="1514358629095">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_IF_ADD, notify_vif_event);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358629089" ID="ID_569691726" MODIFIED="1514358629092">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_IF_DEL, notify_vif_event);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514358629077" ID="ID_1395254452" MODIFIED="1514358629087">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      (WLAND_E_IF_CHANGE, notify_vif_event);
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514265614095" ID="ID_1045710415" MODIFIED="1514352087525" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* SDIO Driver register */</font>
    </p>
    <p>
      struct sdio_driver wland_sdmmc_driver
    </p>
  </body>
</html></richcontent>
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514265651992" ID="ID_1790672297" MODIFIED="1514345101650" TEXT=".probe = wland_ops_sdio_probe()">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_943120403" ENDARROW="Default" ENDINCLINATION="1150;0;" ID="Arrow_ID_1284632247" STARTARROW="None" STARTINCLINATION="1150;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514265716518" ID="ID_1049117504" MODIFIED="1514345101651" TEXT=".remove = wland_ops_sdio_remove()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514344183248" ID="ID_485771263" MODIFIED="1514345101652" TEXT="wland_sdioh_detach()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514344196079" ID="ID_1114309100" MODIFIED="1514349216916" TEXT="sdio_claim_host()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514344203286" ID="ID_1137772971" MODIFIED="1514349216916" TEXT="sdio_disable_func()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514344208438" ID="ID_628921166" MODIFIED="1514349216917" TEXT="sdio_release_host()">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1514265716498" ID="ID_198863292" MODIFIED="1514345101655">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      .name = WLAND_SDIO_NAME(&quot;wlandfmac_sdio&quot;)
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514265716494" ID="ID_1765147396" MODIFIED="1514345101658">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      .id_table = wland_sdmmc_ids
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514344241504" ID="ID_1104545669" MODIFIED="1514345101660" TEXT="{SDIO_DEVICE(SDIO_VENDOR_ID_RDAWLAN, SDIO_DEVICE_ID_RDA599X)},">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514265716489" ID="ID_336272335" MODIFIED="1514345101663" TEXT=".pm = &amp;wland_sdio_pm_ops">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514344258655" ID="ID_1900209587" MODIFIED="1514345101664">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      .suspend = wland_sdio_suspend
    </p>
    <p>
      .resume = wland_sdio_resume
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514265716478" ID="ID_708699709" MODIFIED="1514345101666" TEXT=".shutdown = &amp;rda_wland_shutdown">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514280951281" ID="ID_1526746808" MODIFIED="1514352087538" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* host interface abstraction */</font>
    </p>
    <p>
      struct wland_bus_ops wland_sdio_bus_ops
    </p>
  </body>
</html></richcontent>
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514280969586" ID="ID_47671173" MODIFIED="1514345101669" TEXT=".stop = wland_sdio_bus_stop">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514344311516" ID="ID_614251453" MODIFIED="1514345101671">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* Clear the data packet queues */</font>
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514344326013" ID="ID_1848420574" MODIFIED="1514345101675">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* Clear rx control */</font>
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514341150226" ID="ID_286828555" MODIFIED="1514345101677" TEXT=".init = wland_sdio_bus_init">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514280274231" ID="ID_1059329633" MODIFIED="1514345101677">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* register interrupt */</font>
    </p>
    <p>
      wland_sdio_intr_register()
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514280287407" ID="ID_577779422" MODIFIED="1514354302209" TEXT="sdio_claim_irq(sdiodev-&gt;func, wland_sdioh_irqhandler)">
<cloud/>
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_988846518" ENDARROW="Default" ENDINCLINATION="692;0;" ID="Arrow_ID_1579230233" STARTARROW="None" STARTINCLINATION="692;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514280336435" ID="ID_1714900993" MODIFIED="1514349216919" TEXT="wland_sdio_intr_set()">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514280339427" ID="ID_1131503234" MODIFIED="1514345206965" TEXT="HOST ENABLE INTR">
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#6600ff" CREATED="1514280359685" ID="ID_17293601" MODIFIED="1514345206965" TEXT="SLAVE INTR ENABLE">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1514280294985" ID="ID_988846518" MODIFIED="1514345101684" TEXT="wland_sdioh_irqhandler()">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_988846518" ENDARROW="Default" ENDINCLINATION="692;0;" ID="Arrow_ID_1579230233" SOURCE="ID_577779422" STARTARROW="None" STARTINCLINATION="692;0;"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514354337351" ID="ID_481549260" MODIFIED="1514354351312">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//Read INTR status</font>
    </p>
    <p>
      wland_sdio_intr_get(bus-&gt;sdiodev, &amp;intstatus)
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514354374650" ID="ID_779810071" MODIFIED="1514354456818">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// read frames if rx frames available</font>
    </p>
    <p>
      pkt=wland_sdio_readframes(bus) if intsttus &amp; I_AHB2SDIO
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514354468553" ID="ID_750709109" MODIFIED="1514354490649">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// rx pkt enque</font>
    </p>
    <p>
      wland_prec_enq(bus-&gt;sdiodev-&gt;dev, &amp;bus-&gt;rxq, pkt, prec)
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514354507460" ID="ID_1174709412" MODIFIED="1514354509376" TEXT="WAKE_RX_WORK(bus)">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514354524725" ID="ID_1844959430" MODIFIED="1514354633342" TEXT="/* wake up rx worker */">
<arrowlink DESTINATION="ID_57976070" ENDARROW="Default" ENDINCLINATION="525;0;" ID="Arrow_ID_744728476" STARTARROW="None" STARTINCLINATION="525;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514354558279" ID="ID_1603973348" MODIFIED="1514354559372" TEXT="wland_sdio_RxWorker()">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514354576753" ID="ID_1340769858" LINK="#ID_1248781135" MODIFIED="1514354619761" TEXT="wland_sdio_rx_dpc()">
<cloud/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1514341150222" ID="ID_373039693" MODIFIED="1515479912696" TEXT=".txdata = wland_sdio_bus_txdata()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1515480103658" ID="ID_1176176461" MODIFIED="1515480107419" TEXT="Called by wland_bus_txdata()">
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514344527868" ID="ID_1427905011" MODIFIED="1514345101685" TEXT="/* convert priority to preceence level */">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514344571719" ID="ID_699407936" MODIFIED="1514354308003" TEXT="wland_prec_enq(pkt, prec)">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514349039391" ID="ID_1577029600" MODIFIED="1514349216921">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* pkt enque */
    </p>
    <p>
      wland_pktq_penq()
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514344599017" ID="ID_1362953085" MODIFIED="1514353787961" TEXT="WAKE_TX_WORK(bus)">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1362953085" ENDARROW="Default" ENDINCLINATION="157;0;" ID="Arrow_ID_80261655" SOURCE="ID_1099223080" STARTARROW="None" STARTINCLINATION="157;0;"/>
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514349177618" ID="ID_677836590" MODIFIED="1514349252036" TEXT="/* wake tx worker */">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514349252593" ID="ID_1562922455" MODIFIED="1514353796732" TEXT="wland_sdio_TxWorker()">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514349260258" ID="ID_61763936" LINK="#ID_1752792690" MODIFIED="1514352304983" TEXT="wland_sdio_tx_dpc()">
<cloud/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1514344638900" ID="ID_1670176877" MODIFIED="1514345101686" TEXT="wland_txflowcontrol()">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514341150219" ID="ID_763676988" MODIFIED="1515480080975" TEXT=".txctl = wland_sdio_bus_txctl()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1515480089940" ID="ID_1569712919" MODIFIED="1515480200837">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff6666" size="6">Called by wland_bus_txctl()</font>
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514353835034" ID="ID_25283963" MODIFIED="1514353838119" TEXT="bus-&gt;ctrl_frame_stat = true">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514353740723" ID="ID_274182058" MODIFIED="1514353742208" TEXT="bus-&gt;ctrl_frame_buf = msg">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514353747556" ID="ID_1646042860" MODIFIED="1514353757961" TEXT="bus-&gt;ctrl_frame_len = msglen">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514353754340" ID="ID_1099223080" MODIFIED="1514353787961" TEXT="WAKE_TX_WORK(bus)">
<arrowlink DESTINATION="ID_1362953085" ENDARROW="Default" ENDINCLINATION="157;0;" ID="Arrow_ID_80261655" STARTARROW="None" STARTINCLINATION="157;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514341150215" ID="ID_393609180" MODIFIED="1514353734839" TEXT=".rxctl = wland_sdio_bus_rxctl()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514353984285" ID="ID_1163772269" MODIFIED="1514354002792">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* Wait until control frame is available */</font>
    </p>
    <p>
      dhd_os_ioctl_resp_wait()
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514354108910" ID="ID_57976070" MODIFIED="1514354633342" TEXT="add_wait_queue()">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_57976070" ENDARROW="Default" ENDINCLINATION="525;0;" ID="Arrow_ID_744728476" SOURCE="ID_1844959430" STARTARROW="None" STARTINCLINATION="525;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514354143873" ID="ID_846919708" MODIFIED="1514354259996">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* wake up by*/</font>
    </p>
    <p>
      dhd_os_ioctl_resp_wake()
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514354026992" ID="ID_480261701" MODIFIED="1514354029813" TEXT="memcpy(msg, bus-&gt;rxctl, min(msglen, rxlen))">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514341150205" ID="ID_250898857" MODIFIED="1514353736639" TEXT=".gettxq = wland_sdio_bus_gettxq()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514354284483" ID="ID_1956792416" MODIFIED="1514354286632" TEXT="return &amp;bus-&gt;txq">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514276459174" ID="ID_638190726" MODIFIED="1514366695427" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">/* cfg80211 register DS */</font>
    </p>
    <p>
      struct cfg80211_ops wl_cfg80211_ops
    </p>
  </body>
</html></richcontent>
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514341859543" ID="ID_1153146028" MODIFIED="1514345101691" TEXT=".add_virtual_intf=cfg80211_add_virtual_iface,">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947511" ID="ID_38675756" MODIFIED="1514345101691" TEXT=".del_virtual_intf=cfg80211_del_virtual_iface()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947510" ID="ID_151827684" MODIFIED="1514345101692" TEXT=".change_virtual_intf=cfg80211_change_virtual_iface()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947509" ID="ID_873618540" MODIFIED="1514345101694" TEXT=".scan=cfg80211_scan()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947507" ID="ID_723461816" MODIFIED="1514345101694" TEXT=".set_wiphy_params=cfg80211_set_wiphy_params()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947504" ID="ID_21043991" MODIFIED="1514345101695" TEXT=".join_ibss=cfg80211_join_ibss()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947502" ID="ID_1055821376" MODIFIED="1514345101697" TEXT=".leave_ibss=cfg80211_leave_ibss()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947500" ID="ID_1744447528" MODIFIED="1514345101697" TEXT=".get_station=cfg80211_get_station()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947498" ID="ID_711429063" MODIFIED="1514345101698" TEXT=".set_tx_power=cfg80211_set_tx_power()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947496" ID="ID_1076407624" MODIFIED="1514345101698" TEXT=".get_tx_power=cfg80211_get_tx_power()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947494" ID="ID_1553283311" MODIFIED="1514345101699" TEXT=".add_key=cfg80211_add_key()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947490" ID="ID_83591985" MODIFIED="1514345101699" TEXT=".del_key=cfg80211_del_key()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947487" ID="ID_1244590492" MODIFIED="1514345101700" TEXT=".get_key=cfg80211_get_key()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947484" ID="ID_867685446" MODIFIED="1514345101700" TEXT=".set_default_key=cfg80211_config_default_key()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947466" ID="ID_188118411" MODIFIED="1514345101700" TEXT=".set_default_mgmt_key=cfg80211_config_default_mgmt_key()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947465" ID="ID_1463138828" MODIFIED="1514345101703" TEXT=".set_power_mgmt=cfg80211_set_power_mgmt()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947464" ID="ID_1937677471" MODIFIED="1514345101703" TEXT=".connect=cfg80211_connect()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947463" ID="ID_575152735" MODIFIED="1514345101704" TEXT=".disconnect=cfg80211_disconnect()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947461" ID="ID_16837914" MODIFIED="1514345101704" TEXT=".suspend=cfg80211_suspend()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947460" ID="ID_1848055653" MODIFIED="1514345101705" TEXT=".resume=cfg80211_resume()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947459" ID="ID_1463121372" MODIFIED="1514345101705" TEXT=".set_pmksa=cfg80211_set_pmksa()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947449" ID="ID_1545905271" MODIFIED="1514345101706" TEXT=".del_pmksa=cfg80211_del_pmksa()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947448" ID="ID_929919768" MODIFIED="1514345101706" TEXT=".flush_pmksa=cfg80211_flush_pmksa()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947447" ID="ID_1798905670" MODIFIED="1514345101707" TEXT=".start_ap=cfg80211_start_ap()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947445" ID="ID_1112874515" MODIFIED="1514345101707" TEXT=".stop_ap=cfg80211_stop_ap()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947444" ID="ID_292092880" MODIFIED="1514345101708" TEXT=".change_beacon=cfg80211_change_beacon()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947442" ID="ID_144659272" MODIFIED="1514345101708" TEXT=".del_station=cfg80211_del_station()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947440" ID="ID_1768988708" MODIFIED="1514345101709" TEXT=".mgmt_tx_cancel_wait=cfg80211_mgmt_tx_cancel_wait()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947438" ID="ID_170266787" MODIFIED="1514345101711" TEXT=".sched_scan_start=cfg80211_sched_scan_start()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947436" ID="ID_1370915382" MODIFIED="1514345101711" TEXT=".sched_scan_stop=cfg80211_sched_scan_stop()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947435" ID="ID_1431144413" MODIFIED="1514345101712" TEXT=".mgmt_frame_register=cfg80211_mgmt_frame_register()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947432" ID="ID_1274772106" MODIFIED="1514345101715" TEXT=".change_bss=cfg80211_change_bss()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947430" ID="ID_463595476" MODIFIED="1514345101716" TEXT=".mgmt_tx=cfg80211_mgmt_tx()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947429" ID="ID_653940564" MODIFIED="1514345101716" TEXT=".set_channel=cfg80211_set_channel()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947428" ID="ID_1026885640" MODIFIED="1514345101717" TEXT=".remain_on_channel=cfg80211_remain_on_channel()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947427" ID="ID_139502805" MODIFIED="1514345101717" TEXT=".cancel_remain_on_channel=cfg80211_cancel_remain_on_channel()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947426" ID="ID_454462592" MODIFIED="1514345101720" TEXT=".crit_proto_start=cfg80211_crit_proto_start()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947404" ID="ID_1914387449" MODIFIED="1514345101721" TEXT=".crit_proto_stop=cfg80211_crit_proto_stop()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947401" ID="ID_794708030" MODIFIED="1514345101721" TEXT=".tdls_oper=cfg80211_tdls_oper()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514341947396" ID="ID_1670367674" MODIFIED="1514345101722" TEXT=".set_cqm_rssi_config=cfg80211_set_cqm_rssi_config()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514276853565" ID="ID_350087559" MODIFIED="1514352087567" POSITION="left" TEXT="struct net_device_ops wland_netdev_ops_pri">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514276867378" ID="ID_1846223191" MODIFIED="1514345101725" TEXT=".ndo_open = netdev_open">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514276901202" ID="ID_320723280" MODIFIED="1514345101726" TEXT=".ndo_stop = netdev_stop">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514276901201" ID="ID_231359872" MODIFIED="1514345101727" TEXT=".ndo_get_stats = netdev_get_stats">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514276901200" ID="ID_1912701344" MODIFIED="1514345101727" TEXT=".ndo_do_ioctl = netdev_ioctl_entry">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514276901199" ID="ID_1805068032" MODIFIED="1514345101728" TEXT=".ndo_start_xmit = netdev_start_xmit">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514276901198" ID="ID_1466505532" MODIFIED="1514345101728" TEXT=".ndo_tx_timeout = netdev_tx_timeout">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514276901196" ID="ID_1238441951" MODIFIED="1514345101728" TEXT=".ndo_set_mac_address = netdev_set_mac_address,">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514276901193" ID="ID_1592891422" MODIFIED="1514345101729" TEXT=".ndo_set_rx_mode = netdev_set_multicast_list">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
</node>
</map>

<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1514256295287" ID="ID_93636897" MODIFIED="1514280204222">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Driver
    </p>
    <p>
      Init
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1514256317246" ID="ID_369065683" MODIFIED="1514257083564" POSITION="right" TEXT="wlanfmac_module_init()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514256363552" ID="ID_72748650" MODIFIED="1514257121340">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Init semaphore &lt;registration_sem&gt;
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514256996724" ID="ID_1257806697" MODIFIED="1514267732077">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      delay run wland_driver_init()
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1190088513" ENDARROW="Default" ENDINCLINATION="334;0;" ID="Arrow_ID_479571589" STARTARROW="None" STARTINCLINATION="334;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514257107701" ID="ID_901167670" MODIFIED="1514257134042" TEXT="wait &lt;registration_sem&gt;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514257077743" ID="ID_1190088513" MODIFIED="1514266310885" POSITION="right" TEXT="wlan_driver_init()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1190088513" ENDARROW="Default" ENDINCLINATION="334;0;" ID="Arrow_ID_479571589" SOURCE="ID_1257806697" STARTARROW="None" STARTINCLINATION="334;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514265492930" ID="ID_706060926" MODIFIED="1514267719479" TEXT="wland_sdio_register()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514265509690" ID="ID_1255562133" MODIFIED="1514267730733" TEXT="sdio_register_driver(&amp;wland_sdmmc_driver)">
<arrowlink DESTINATION="ID_1045710415" ENDARROW="Default" ENDINCLINATION="581;0;" ID="Arrow_ID_355045909" STARTARROW="None" STARTINCLINATION="581;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514265614095" ID="ID_1045710415" MODIFIED="1514265666828" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct sdio_driver
    </p>
    <p>
      wland_sdmmc_driver
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1045710415" ENDARROW="Default" ENDINCLINATION="581;0;" ID="Arrow_ID_355045909" SOURCE="ID_1255562133" STARTARROW="None" STARTINCLINATION="581;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514265651992" ID="ID_1790672297" MODIFIED="1514267736589" TEXT=".probe = wland_ops_sdio_probe()">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_943120403" ENDARROW="Default" ENDINCLINATION="338;0;" ID="Arrow_ID_1721141000" STARTARROW="None" STARTINCLINATION="338;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514265716518" ID="ID_1049117504" MODIFIED="1514265722457" TEXT=".remove = wland_ops_sdio_remove()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514265716498" ID="ID_198863292" MODIFIED="1514265801337">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      .name = WLAND_SDIO_NAME
    </p>
    <p>
      &#160;&#160;&#160;&#160;&quot;wlandfmac_sdio&quot;
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514265716494" ID="ID_1765147396" MODIFIED="1514265804630">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      .id_table = wland_sdmmc_ids
    </p>
    <p>
      &#160;&#160;&#160;&#160;{SDIO_DEVICE(SDIO_VENDOR_ID_RDAWLAN, SDIO_DEVICE_ID_RDA599X)},
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514265716489" ID="ID_336272335" MODIFIED="1514265744753" TEXT=".pm = &amp;wland_sdio_pm_ops">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514265716478" ID="ID_708699709" MODIFIED="1514265746490" TEXT=".shutdown = &amp;rda_wland_shutdown">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514266324397" ID="ID_943120403" MODIFIED="1514267730447" POSITION="right" TEXT="wland_ops_sdio_probe()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_943120403" ENDARROW="Default" ENDINCLINATION="338;0;" ID="Arrow_ID_1721141000" SOURCE="ID_1790672297" STARTARROW="None" STARTINCLINATION="338;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514266370920" ID="ID_794607213" MODIFIED="1514266542453" TEXT="osh = osl_attach(func, SDIO_BUS, true)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514266602450" ID="ID_877500853" MODIFIED="1514266604007" TEXT="osh = kmalloc(sizeof(struct osl_info))">
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514266399432" ID="ID_1531580217" MODIFIED="1514266406326" TEXT="bus_if = osl_malloc(sizeof(struct wland_bus))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514266413234" ID="ID_1872673652" MODIFIED="1514266418551" TEXT="sdiodev = osl_malloc(sizeof(struct wland_sdio_dev))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514266459203" ID="ID_1817467901" MODIFIED="1514266464272" TEXT="// initial sdiodev">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514266468363" ID="ID_1062388770" MODIFIED="1514266472561" TEXT="// initial bus_if">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514280936735" ID="ID_971593405" MODIFIED="1514280940680" TEXT="bus_if-&gt;ops = &amp;wland_sdio_bus_ops">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514266501485" ID="ID_282113788" MODIFIED="1514267710219" TEXT="wland_sdioh_attach(sdiodev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1770943044" ENDARROW="Default" ENDINCLINATION="55;0;" ID="Arrow_ID_1378951307" STARTARROW="None" STARTINCLINATION="55;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514266510902" ID="ID_90174333" MODIFIED="1514267784557" TEXT="sdiodev-&gt;bus = wland_sdio_probe(osh, sdiodev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_124161949" ENDARROW="Default" ENDINCLINATION="326;0;" ID="Arrow_ID_578797195" STARTARROW="None" STARTINCLINATION="326;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514280951281" ID="ID_1526746808" MODIFIED="1514280964462" POSITION="right" TEXT="struct wland_bus_ops wland_sdio_bus_ops">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514280969586" ID="ID_47671173" MODIFIED="1514280988583" TEXT=".stop = wland_sdio_bus_stop&#xa;.init = wland_sdio_bus_init&#xa;.txdata = wland_sdio_bus_txdata&#xa;.txctl = wland_sdio_bus_txctl&#xa;.rxctl = wland_sdio_bus_rxctl&#xa;.gettxq = wland_sdio_bus_gettxq,">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514266645139" ID="ID_1770943044" MODIFIED="1514266676329" POSITION="right" TEXT="wland_sdioh_attach(sdiodev)">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1770943044" ENDARROW="Default" ENDINCLINATION="55;0;" ID="Arrow_ID_1378951307" SOURCE="ID_282113788" STARTARROW="None" STARTINCLINATION="55;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514266688053" ID="ID_295821579" MODIFIED="1514266689746" TEXT="sdio_claim_host()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514266694029" ID="ID_1671104133" MODIFIED="1514266705915" TEXT="sdio_set_block_size(512)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514266716446" ID="ID_1826413453" MODIFIED="1514266718307" TEXT="sdio_enable_func(sdiodev-&gt;func)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514266743568" ID="ID_124161949" MODIFIED="1514267782237" POSITION="right" TEXT="wland_sdio_probe(&#xa;&#x9;struct osl_info *osh, &#xa;&#x9;struct wland_sdio_dev *sdiodev)">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_124161949" ENDARROW="Default" ENDINCLINATION="326;0;" ID="Arrow_ID_578797195" SOURCE="ID_90174333" STARTARROW="None" STARTINCLINATION="326;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514267362381" ID="ID_1371906111" MODIFIED="1514267374280" TEXT="struct wland_sdio *bus = malloc(sizeof(wlan_sdio))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267387979" ID="ID_1046578601" MODIFIED="1514267389754" TEXT="wland_pktq_init(&amp;bus-&gt;txq, (PRIOMASK + 1), TXQLEN);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267394212" ID="ID_1903783404" MODIFIED="1514267394841" TEXT="wland_pktq_init(&amp;bus-&gt;rxq, (PRIOMASK + 1), TXQLEN);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267594332" ID="ID_1769750114" MODIFIED="1514267597002" TEXT="// init bus">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267619045" ID="ID_1732337129" MODIFIED="1514267621100" TEXT="kthread_run(wland_sdio_watchdog_thread)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267636631" ID="ID_644137399" MODIFIED="1514267707970" TEXT="wland_bus_attach(0, sdiodev-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1349835036" ENDARROW="Default" ENDINCLINATION="555;0;" ID="Arrow_ID_873365319" STARTARROW="None" STARTINCLINATION="555;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267650776" ID="ID_1319663920" MODIFIED="1514267652589" TEXT="bus-&gt;rxbuf = osl_malloc(osh, bus-&gt;rxblen)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267666872" ID="ID_105320695" MODIFIED="1514269463508" TEXT="wland_bus_start(sdiodev-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_642800145" ENDARROW="Default" ENDINCLINATION="534;0;" ID="Arrow_ID_1381763562" STARTARROW="None" STARTINCLINATION="534;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514267696435" ID="ID_1349835036" MODIFIED="1514267702236" POSITION="right" TEXT="wland_bus_attach()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1349835036" ENDARROW="Default" ENDINCLINATION="555;0;" ID="Arrow_ID_873365319" SOURCE="ID_644137399" STARTARROW="None" STARTINCLINATION="555;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514267954516" ID="ID_1102318592" MODIFIED="1514267964689" TEXT="drvr = malloc(sizeof(struct wland_private))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514267993221" ID="ID_545727101" MODIFIED="1514268762773" TEXT="wland_proto_attach(drvr)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1664562297" ENDARROW="Default" ENDINCLINATION="364;0;" ID="Arrow_ID_1095139294" STARTARROW="None" STARTINCLINATION="364;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268003525" ID="ID_1975905043" MODIFIED="1514269021193" TEXT="wland_fweh_attach(drvr)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_67114118" ENDARROW="Default" ENDINCLINATION="208;0;" ID="Arrow_ID_1018628005" STARTARROW="None" STARTINCLINATION="208;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514268752546" ID="ID_1664562297" MODIFIED="1514268932281" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      wland_proto_attach(
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct wland_private *drvr)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1664562297" ENDARROW="Default" ENDINCLINATION="364;0;" ID="Arrow_ID_1095139294" SOURCE="ID_545727101" STARTARROW="None" STARTINCLINATION="364;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514268799542" ID="ID_1573278450" MODIFIED="1514268803587" TEXT="struct wland_proto *cdc = malloc(...)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268850697" ID="ID_255037032" MODIFIED="1514268853070" TEXT="drvr-&gt;prot = cdc">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268863830" ID="ID_859521161" MODIFIED="1514268866538" TEXT="drvr-&gt;hdrlen += WID_HEADER_LEN">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268885144" ID="ID_1013869164" MODIFIED="1514268887741" TEXT="drvr-&gt;maxctl = ...">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514268913162" ID="ID_67114118" MODIFIED="1514269021193" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      wland_fweh_attach(
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct wland_private *drvr)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_67114118" ENDARROW="Default" ENDINCLINATION="208;0;" ID="Arrow_ID_1018628005" SOURCE="ID_1975905043" STARTARROW="None" STARTINCLINATION="208;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514268943530" ID="ID_1559874716" MODIFIED="1514269020040">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// initialize firmware event handling</font>
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268962445" ID="ID_1676633834" MODIFIED="1514268978397" TEXT="struct wland_fw_info *fweh = &amp;drvr-&gt;fweh&#xa;INIT_WORK(&amp;fweh-&gt;event_work, fweh_event_worker)&#xa;spin_lock_init(&amp;fweh-&gt;evt_q_lock)&#xa;INIT_LIST_HEAD(&amp;fweh-&gt;event_q)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514268016414" ID="ID_642800145" MODIFIED="1514269463509" POSITION="right" TEXT="wland_bus_start()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_642800145" ENDARROW="Default" ENDINCLINATION="534;0;" ID="Arrow_ID_1381763562" SOURCE="ID_105320695" STARTARROW="None" STARTINCLINATION="534;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514268050080" ID="ID_328184304" MODIFIED="1514268057949" TEXT="// get mac address to mac_addr">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268071265" ID="ID_1476942601" MODIFIED="1514269495298" TEXT="wland_add_if(&quot;wlan%d&quot;, mac_addr)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1447013695" ENDARROW="Default" ENDINCLINATION="451;0;" ID="Arrow_ID_1968643211" STARTARROW="None" STARTINCLINATION="451;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268089722" ID="ID_1867969758" MODIFIED="1514269525584" TEXT="wland_fws_init(drvr)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_451106061" ENDARROW="Default" ENDINCLINATION="404;0;" ID="Arrow_ID_481214308" STARTARROW="None" STARTINCLINATION="404;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268096778" ID="ID_470546025" MODIFIED="1514269477986" TEXT="wland_fws_add_interface(ifp)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268110802" ID="ID_403740175" MODIFIED="1514276576400" TEXT="cfg80211_attach(drvr, bus_if-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1737758156" ENDARROW="Default" ENDINCLINATION="539;0;" ID="Arrow_ID_1201649165" STARTARROW="None" STARTINCLINATION="539;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268121835" ID="ID_1584202368" MODIFIED="1514268122775" TEXT="iwext_attach(drvr, bus_if-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268128787" ID="ID_1206433861" MODIFIED="1514276605563" TEXT="netdev_attach(ifp)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_184111694" ENDARROW="Default" ENDINCLINATION="523;0;" ID="Arrow_ID_1386023858" STARTARROW="None" STARTINCLINATION="523;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268138707" ID="ID_1582083272" MODIFIED="1514276980884" TEXT="wland_start_chip(ifp, device_role)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1066315231" ENDARROW="Default" ENDINCLINATION="792;0;" ID="Arrow_ID_1195920157" STARTARROW="None" STARTINCLINATION="792;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514268148547" ID="ID_1079561996" MODIFIED="1514268201031">
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
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514269064882" ID="ID_1447013695" MODIFIED="1514269495296" POSITION="right" TEXT="wland_add_if()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1447013695" ENDARROW="Default" ENDINCLINATION="451;0;" ID="Arrow_ID_1968643211" SOURCE="ID_1476942601" STARTARROW="None" STARTINCLINATION="451;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514269393822" ID="ID_1172227272" MODIFIED="1514269436067">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// allocate netdev</font>
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514269325306" ID="ID_1963317600" MODIFIED="1514269439748">
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
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514269113782" ID="ID_1398369255" MODIFIED="1514269362789" TEXT="struct wland_if *ifp = netdev_priv(ndev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514269369752" ID="ID_1281441603" MODIFIED="1514269372109" TEXT="ifp-&gt;ndev = ndev">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514269513536" ID="ID_451106061" MODIFIED="1514269522864" POSITION="right" TEXT="wland_fws_init()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_451106061" ENDARROW="Default" ENDINCLINATION="404;0;" ID="Arrow_ID_481214308" SOURCE="ID_1867969758" STARTARROW="None" STARTINCLINATION="404;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514269647104" ID="ID_1739215237" MODIFIED="1514269715749">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">// init stats data structure</font>
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514269602075" ID="ID_1777209882" MODIFIED="1514269602680" TEXT="drvr-&gt;fws = kzalloc(sizeof(*(drvr-&gt;fws))">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514269718956" ID="ID_1737758156" MODIFIED="1514276576398" POSITION="right" TEXT="cfg80211_attach()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1737758156" ENDARROW="Default" ENDINCLINATION="539;0;" ID="Arrow_ID_1201649165" SOURCE="ID_403740175" STARTARROW="None" STARTINCLINATION="539;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514269729603" ID="ID_733594554" MODIFIED="1514270854521" TEXT="wland_setup_wiphy()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514270105750" ID="ID_630082124" MODIFIED="1514270106851" TEXT="https://01.org/linuxgraphics/gfx-docs/drm/80211/cfg80211.html">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514269806391" ID="ID_1722365202" MODIFIED="1514277351601" TEXT="wiphy_new(&amp;wl_cfg80211_ops, sizeof(struct wland_cfg80211_info))">
<arrowlink DESTINATION="ID_638190726" ENDARROW="Default" ENDINCLINATION="501;0;" ID="Arrow_ID_1025196072" STARTARROW="None" STARTINCLINATION="501;0;"/>
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514269820566" ID="ID_1365862761" MODIFIED="1514269827604" TEXT="// set wiphy parameters">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514269840989" ID="ID_604729455" MODIFIED="1514269841970" TEXT="wiphy_register()">
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514270589931" ID="ID_919290785" MODIFIED="1514270590904" TEXT="wland_alloc_vif()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514270623249" ID="ID_742030324" MODIFIED="1514270642108">
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
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514276459174" ID="ID_638190726" MODIFIED="1514277351601" POSITION="right" TEXT="struct cfg80211_ops wl_cfg80211_ops = {...}">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_638190726" ENDARROW="Default" ENDINCLINATION="501;0;" ID="Arrow_ID_1025196072" SOURCE="ID_1722365202" STARTARROW="None" STARTINCLINATION="501;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1514276600227" ID="ID_184111694" MODIFIED="1514276605563" POSITION="right" TEXT="netdev_attach()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_184111694" ENDARROW="Default" ENDINCLINATION="523;0;" ID="Arrow_ID_1386023858" SOURCE="ID_1206433861" STARTARROW="None" STARTINCLINATION="523;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514276839393" ID="ID_1613626917" MODIFIED="1514276928333" TEXT="ndev-&gt;netdev_ops = &amp;wland_netdev_ops_pri">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_350087559" ENDARROW="Default" ENDINCLINATION="173;0;" ID="Arrow_ID_1442883567" STARTARROW="None" STARTINCLINATION="173;0;"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276948241" ID="ID_1031950409" MODIFIED="1514276949471" TEXT="register_netdev(ndev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514276853565" ID="ID_350087559" MODIFIED="1514276928332" POSITION="right" TEXT="struct net_device_ops wland_netdev_ops_pri">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_350087559" ENDARROW="Default" ENDINCLINATION="173;0;" ID="Arrow_ID_1442883567" SOURCE="ID_1613626917" STARTARROW="None" STARTINCLINATION="173;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514276867378" ID="ID_1846223191" MODIFIED="1514276901193" TEXT=".ndo_open = netdev_open">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276901202" ID="ID_320723280" MODIFIED="1514276901203" TEXT=".ndo_stop = netdev_stop">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276901201" ID="ID_231359872" MODIFIED="1514276901202" TEXT=".ndo_get_stats = netdev_get_stats">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276901200" ID="ID_1912701344" MODIFIED="1514276901201" TEXT=".ndo_do_ioctl = netdev_ioctl_entry">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276901199" ID="ID_1805068032" MODIFIED="1514276901200" TEXT=".ndo_start_xmit = netdev_start_xmit">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276901198" ID="ID_1466505532" MODIFIED="1514276901199" TEXT=".ndo_tx_timeout = netdev_tx_timeout">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276901196" ID="ID_1238441951" MODIFIED="1514276901197" TEXT=".ndo_set_mac_address = netdev_set_mac_address,">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514276901193" ID="ID_1592891422" MODIFIED="1514276901194" TEXT=".ndo_set_rx_mode = netdev_set_multicast_list">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514276972680" ID="ID_1066315231" MODIFIED="1514278527043" POSITION="right" TEXT="wland_start_chip()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1066315231" ENDARROW="Default" ENDINCLINATION="792;0;" ID="Arrow_ID_1195920157" SOURCE="ID_1582083272" STARTARROW="None" STARTINCLINATION="792;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514277052198" ID="ID_733765446" MODIFIED="1514277055092" TEXT="wland_bus_active()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514280189976" ID="ID_1136567024" MODIFIED="1514280204222" TEXT="wland_bus_init()">
<font NAME="Consolas" SIZE="14"/>
<node COLOR="#111111" CREATED="1514280218586" ID="ID_1948524699" MODIFIED="1514280621609" TEXT="wland_sdio_bus_init()">
<arrowlink DESTINATION="ID_1137340587" ENDARROW="Default" ENDINCLINATION="506;0;" ID="Arrow_ID_1200121296" STARTARROW="None" STARTINCLINATION="506;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1514280414865" ID="ID_1334994037" MODIFIED="1514280883183" TEXT="wland_fil_set_cmd_data(ifp, WID_MAC_ROLE)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1457040373" ENDARROW="Default" ENDINCLINATION="449;0;" ID="Arrow_ID_896903336" STARTARROW="None" STARTINCLINATION="449;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1514278528470" ID="ID_1730212714" MODIFIED="1514278529682" TEXT="wland_preinit_cmds()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514280450059" ID="ID_1798301300" MODIFIED="1514280451440" TEXT="wland_fil_set_cmd_data(ifp, WID_MAC_ADDR)">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514280459444" ID="ID_1545440347" MODIFIED="1514280460497" TEXT="wland_fil_get_cmd_data(ifp, WID_MAC_ADDR)">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514280515752" ID="ID_449301584" MODIFIED="1514280516814" TEXT="wland_fil_set_cmd_data(ifp, WID_PREAMBLE)">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514280527536" ID="ID_1405704068" MODIFIED="1514280528494" TEXT="wland_set_scan_timeout()">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514280548106" ID="ID_281030821" MODIFIED="1514280549087" TEXT="wland_fil_set_cmd_data(ifp, WID_LISTEN_INTERVAL)">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514280566956" ID="ID_1124924747" MODIFIED="1514280567977" TEXT="wland_fil_set_cmd_data(ifp, WID_LINK_LOSS_THRESHOLD)">
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514280583526" ID="ID_135765207" MODIFIED="1514280584354" TEXT="wland_fil_set_cmd_data(ifp, WID_POWER_MANAGEMENT)">
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514280254549" ID="ID_1137340587" MODIFIED="1514280259150" POSITION="right" TEXT="wland_sdio_bus_init()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1137340587" ENDARROW="Default" ENDINCLINATION="506;0;" ID="Arrow_ID_1200121296" SOURCE="ID_1948524699" STARTARROW="None" STARTINCLINATION="506;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514280274231" ID="ID_1059329633" MODIFIED="1514280275187" TEXT="wland_sdio_intr_register()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514280287407" ID="ID_577779422" MODIFIED="1514280298865" TEXT="sdio_claim_irq(sdiodev-&gt;func, wland_sdioh_irqhandler)">
<arrowlink DESTINATION="ID_988846518" ENDARROW="Default" ENDINCLINATION="692;0;" ID="Arrow_ID_1579230233" STARTARROW="None" STARTINCLINATION="692;0;"/>
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1514280336435" ID="ID_1714900993" MODIFIED="1514280337407" TEXT="wland_sdio_intr_set()">
<font NAME="Consolas" SIZE="14"/>
<node COLOR="#111111" CREATED="1514280339427" ID="ID_1131503234" MODIFIED="1514280371786" TEXT="HOST ENABLE INTR">
<font NAME="Consolas" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1514280359685" ID="ID_17293601" MODIFIED="1514280364786" TEXT="SLAVE INTR ENABLE">
<font NAME="Consolas" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514280294985" ID="ID_988846518" MODIFIED="1514280298864" POSITION="right" TEXT="wland_sdioh_irqhandler()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_988846518" ENDARROW="Default" ENDINCLINATION="692;0;" ID="Arrow_ID_1579230233" SOURCE="ID_577779422" STARTARROW="None" STARTINCLINATION="692;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1514280628873" ID="ID_1457040373" MODIFIED="1514280883683" POSITION="right" TEXT="wland_fil_set_cmd_data()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1457040373" ENDARROW="Default" ENDINCLINATION="449;0;" ID="Arrow_ID_896903336" SOURCE="ID_1334994037" STARTARROW="None" STARTINCLINATION="449;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#00b439" CREATED="1514280744833" ID="ID_499510854" MODIFIED="1514280745885" TEXT="wland_wid_hdrpush()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514280800157" ID="ID_56852342" MODIFIED="1514280818707" TEXT="drvr-&gt;prot-&gt;buf[...] = ...">
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514280793829" ID="ID_378226415" MODIFIED="1514280795057" TEXT="wland_proto_cdc_msg()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#990000" CREATED="1514280853329" ID="ID_1452012860" MODIFIED="1514280855446" TEXT="wland_bus_txctl()">
<font NAME="Consolas" SIZE="14"/>
<node COLOR="#111111" CREATED="1514280871803" ID="ID_1627015544" MODIFIED="1514280901495" TEXT="wland_sdio_bus_txctl()">
<arrowlink DESTINATION="ID_1116029844" ENDARROW="Default" ENDINCLINATION="592;0;" ID="Arrow_ID_301050259" STARTARROW="None" STARTINCLINATION="592;0;"/>
<font BOLD="true" NAME="Consolas" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514280881059" ID="ID_1116029844" MODIFIED="1514280885764" POSITION="right" TEXT="wland_sdio_bus_txdata()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1116029844" ENDARROW="Default" ENDINCLINATION="592;0;" ID="Arrow_ID_301050259" SOURCE="ID_1627015544" STARTARROW="None" STARTINCLINATION="592;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</map>

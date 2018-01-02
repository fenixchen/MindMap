<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1514873729238" ID="ID_1105484857" MODIFIED="1514873781888">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      Linux Wireless Networking<br />a short walk&#160;
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="30"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1514873797100" ID="ID_350928662" MODIFIED="1514873797799" POSITION="right" TEXT="https://www.linux.com/blog/linux-wireless-Networking-short-walk">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
</node>
<node COLOR="#0033ff" CREATED="1514884027365" ID="ID_685440087" MODIFIED="1514884027930" POSITION="right" TEXT="https://stackoverflow.com/questions/7157181/how-to-learn-the-structure-of-linux-wireless-drivers-mac80211">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
</node>
<node COLOR="#0033ff" CREATED="1514873931628" ID="ID_1996913041" LINK="WLAN_SW/LWN_arch.jpg" MODIFIED="1514873962430" POSITION="right" TEXT="Archtecture">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
</node>
<node COLOR="#0033ff" CREATED="1514873990945" ID="ID_827941368" MODIFIED="1514873999382" POSITION="right" TEXT="Layer">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514874000161" ID="ID_780122877" MODIFIED="1514874002150" TEXT="User Space">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874002386" ID="ID_656642590" MODIFIED="1514874003902" TEXT="Kernel Space">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874004138" ID="ID_1003272983" MODIFIED="1514874006518" TEXT="Hardware">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514883859016" ID="ID_649494363" MODIFIED="1514883882663" POSITION="right" TEXT="MLME - Media Access Control(MAC) Sublayer Management Entity">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514883890427" ID="ID_812482547" MODIFIED="1514883903232" TEXT="Authenticat/Deauthenticate">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514883904708" ID="ID_1639231368" MODIFIED="1514883918153" TEXT="Assocate/Disassociate/Reassociate">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514883919589" ID="ID_179144531" MODIFIED="1514883921162" TEXT="Beacon">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514883922373" ID="ID_1974723491" MODIFIED="1514883933274" TEXT="Probe(for STA)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514874010226" ID="ID_1036186647" MODIFIED="1514874026344" POSITION="right" TEXT="WiFi Devices type">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514874026771" ID="ID_168730911" MODIFIED="1514874039809" TEXT="Depends on where MLME is implemented">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874045093" ID="ID_578154891" MODIFIED="1514883642949" TEXT="Full MAC(MLME Implemented by HW)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874069343" ID="ID_891750986" MODIFIED="1514883648325" TEXT="Soft MAC(MLME Implemented by SW)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514874091128" ID="ID_1381428541" MODIFIED="1514874101981" POSITION="right" TEXT="Wireless Subsystem">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514874213289" ID="ID_1492975043" MODIFIED="1514874214062" TEXT="help the WiFi driver to interface with rest of the kernel and user space">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874102369" ID="ID_1478687865" MODIFIED="1514874249410" TEXT="cfg80211">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514874255108" ID="ID_873038571" MODIFIED="1514874261425" TEXT="provides configuration management services in the kernel&#xa;">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514874270333" ID="ID_441254913" MODIFIED="1514874270738" TEXT="provides management interface between kernel and user space via nl80211">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514874284174" ID="ID_1108133093" MODIFIED="1514874284531" TEXT="Both soft MAC and full MAC devices need to work with">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514874106593" ID="ID_899918691" MODIFIED="1514874108366" TEXT="mac80211">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514874300359" ID="ID_310085249" MODIFIED="1514874300749" TEXT="a driver API that supports only software MAC devices">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514874329802" ID="ID_1045892036" MODIFIED="1514874349160" POSITION="right" TEXT="Subsystem + Devices">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514874334642" ID="ID_1595352030" MODIFIED="1514874335480" TEXT="MAC">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514874356500" ID="ID_1713533446" MODIFIED="1514874456880" TEXT="Upper MAC - Management aspect of MAC - by SW">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514874387566" ID="ID_983964598" MODIFIED="1514874392171" TEXT="Probing">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514874392830" ID="ID_1516371068" MODIFIED="1514874397955" TEXT="Authentication">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514874398183" ID="ID_153760745" MODIFIED="1514874402715" TEXT="Assocation">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514874360940" ID="ID_1322637681" MODIFIED="1514874440623" TEXT="Lower MAC - time critical operations - by HW">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514874412088" ID="ID_1081615882" MODIFIED="1514874414276" TEXT="ACK">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1514874335923" ID="ID_152879524" MODIFIED="1514874444135" TEXT="PHY - by HW">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514874558283" ID="ID_1890432981" MODIFIED="1514874560351" POSITION="right" TEXT="struct ieee80211_ops">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514874919445" ID="ID_871380428" MODIFIED="1514874919978" TEXT="mac80211 provides to the WiFi device drivers">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874930286" ID="ID_1674351262" MODIFIED="1514874941548" TEXT="drivers implement these handlers">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874941935" ID="ID_1759139623" MODIFIED="1514874942356" TEXT="different devices will have different driver implementations">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874954640" ID="ID_984858966" MODIFIED="1514874954956" TEXT="mapping between driver implementation of the handlers to the common mac80211 API">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514874964465" ID="ID_20198437" MODIFIED="1514874966485" TEXT="APIs">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514874966825" ID="ID_588959606" MODIFIED="1514874979702" TEXT="register by ieee80211_alloc_hw()">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514875583982" ID="ID_390976087" MODIFIED="1514875630982" POSITION="right" TEXT="Paths splited">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514874998011" ID="ID_1808170898" MODIFIED="1514875605700" TEXT="Data Path - 80211 data frames">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514875003172" ID="ID_590499440" MODIFIED="1514875611005" TEXT="Management Path - management frames">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514875633754" ID="ID_504161772" MODIFIED="1514880781882" POSITION="right" TEXT="Data Path(TX)">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514875647475" ID="ID_32971051" MODIFIED="1514875668489" TEXT="User Space">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514875668829" ID="ID_428530385" MODIFIED="1514875671705" TEXT="Create socket">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514875672141" ID="ID_150684245" MODIFIED="1514875674881" TEXT="bind to interface">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514875675349" ID="ID_597584859" MODIFIED="1514875680954" TEXT="put content to buffer">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514875681366" ID="ID_122852727" MODIFIED="1514875683394" TEXT="send it">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514875698407" ID="ID_1368097597" MODIFIED="1514875699428" TEXT="syscall">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514875709032" ID="ID_478221913" MODIFIED="1514875713277" TEXT="sk_buff">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514875718240" ID="ID_1009687866" MODIFIED="1514875725894" TEXT="pointer to the data bufer">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514875726129" ID="ID_1610919664" MODIFIED="1514875732534" TEXT="track data length">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514875748587" ID="ID_157028260" MODIFIED="1514875755351" TEXT="Pass to network layer">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514875782285" ID="ID_1913377856" MODIFIED="1514875782697" TEXT="device agnostic layer">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514875829408" ID="ID_699057782" MODIFIED="1514875839598" TEXT="link HW link Ethernet and WiFi">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514875849850" ID="ID_1014355622" MODIFIED="1514875897106" TEXT="struct net_device">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514875897366" ID="ID_432768115" MODIFIED="1514875897842" TEXT="struct net_device_ops">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514875906510" ID="ID_1191807558" MODIFIED="1514875916667" TEXT="ndo_start_xmit(skb,dev)">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514875929624" ID="ID_1267556786" MODIFIED="1514875934869" TEXT="dev_queue_xmit()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514875937088" ID="ID_1214751282" MODIFIED="1514875949398" TEXT="ops-&gt;ndo_start_xmit(skb,dev)">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514875955641" ID="ID_913179863" MODIFIED="1514875962303" TEXT="Call ndo_start_xmit()">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1514876025439" ID="ID_1767118882" MODIFIED="1514876027155" TEXT="struct net_device_ops ieee80211_dataif_ops">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514876033336" ID="ID_1247778062" MODIFIED="1514877420743" TEXT="ieee80211_subif_start_xmit()">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_302378741" ENDARROW="Default" ENDINCLINATION="742;0;" ID="Arrow_ID_612726103" STARTARROW="None" STARTINCLINATION="742;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514877437967" ID="ID_835617555" MODIFIED="1514877465245" TEXT="HW insert PHY header and other information then TX the packet to aire">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514877474658" ID="ID_598456165" MODIFIED="1514877489623" TEXT="Feedback the status to driver(by ieee80211_tx_info)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514877500379" ID="ID_756930180" MODIFIED="1514877521954" TEXT="driver invokde ieee80211_tx_status() to get tx status">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514876064994" ID="ID_302378741" MODIFIED="1514880556049" TEXT="ieee80211_subif_start_xmit()">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_302378741" ENDARROW="Default" ENDINCLINATION="742;0;" ID="Arrow_ID_612726103" SOURCE="ID_1247778062" STARTARROW="None" STARTINCLINATION="742;0;"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514876080339" ID="ID_1035542015" MODIFIED="1514876088800" TEXT="ieee80211_xmit()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514878462491" ID="ID_867374434" MODIFIED="1514878463119" TEXT="ieee80211_tx()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514878471459" ID="ID_719403938" MODIFIED="1514878471984" TEXT="ieee80211_tx_frags()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514878483860" ID="ID_962449950" MODIFIED="1514880565343" TEXT="drv_tx()">
<arrowlink DESTINATION="ID_1624912800" ENDARROW="Default" ENDINCLINATION="275;0;" ID="Arrow_ID_1976686232" STARTARROW="None" STARTINCLINATION="275;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514877253473" ID="ID_1624912800" MODIFIED="1514880565342" TEXT="ieee80211_ops-&gt;tx()">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1624912800" ENDARROW="Default" ENDINCLINATION="1003;0;" ID="Arrow_ID_1112756603" SOURCE="ID_768594002" STARTARROW="None" STARTINCLINATION="1003;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1624912800" ENDARROW="Default" ENDINCLINATION="275;0;" ID="Arrow_ID_1976686232" SOURCE="ID_962449950" STARTARROW="None" STARTINCLINATION="275;0;"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514877255338" ID="ID_1997359015" MODIFIED="1514880548659" TEXT="prepart TX desc">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514877270970" ID="ID_299525681" MODIFIED="1514880548659" TEXT="Frame Length">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514877274259" ID="ID_16500732" MODIFIED="1514880548659" TEXT="ACK policy">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514877278011" ID="ID_1005640910" MODIFIED="1514880548659" TEXT="RTS/CTS">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514877282996" ID="ID_1716565513" MODIFIED="1514880548659" TEXT="Retry limit">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514877287628" ID="ID_1862258128" MODIFIED="1514880548660" TEXT="more fragments">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514877292028" ID="ID_1584304068" MODIFIED="1514880548660" TEXT="MCS">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514877307437" ID="ID_68246044" MODIFIED="1514880548661" TEXT="Convert information to what HW can understand">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514877346704" ID="ID_857970957" MODIFIED="1514880548661" TEXT="condition the frame(alignment)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514877354457" ID="ID_1667841934" MODIFIED="1514880548661" TEXT="put the frame on a queue">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514877358945" ID="ID_804214440" MODIFIED="1514880548661" TEXT="send frame + desc to HW via interface(USB/SDIO/...)">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514875637730" ID="ID_1396252284" MODIFIED="1514880842513" POSITION="right" TEXT="MGMT Path(TX)">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514877795705" ID="ID_1924944182" MODIFIED="1514877850394" TEXT="wpa_supplicant - for STAs">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514877824620" ID="ID_425579653" MODIFIED="1514877827592" TEXT="scan">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514877827836" ID="ID_1962187084" MODIFIED="1514877831136" TEXT="authentication">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514877831364" ID="ID_776086275" MODIFIED="1514877834257" TEXT="assocation">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514877837292" ID="ID_861758416" MODIFIED="1514877846642" TEXT="host_apd - for AP">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514877864103" ID="ID_1463497381" MODIFIED="1514877878348" TEXT="both use netlink socket to communicate with kernel">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514877890816" ID="ID_1416532877" MODIFIED="1514877900062" TEXT="handler in kernel is nl80211 in cfg80211">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514877908609" ID="ID_1942712491" MODIFIED="1514877940952" TEXT="invoke the send handlers in netlink library to send commands(ex:NL80211_CMD_TRIGGER_SCAN) to kernel">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514877947133" ID="ID_665563356" MODIFIED="1514878015839">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      kernel receive the command by nl80211, mapping cmd(.cmd) to action(.doit) in <b>struct genl_ops nl80211_ops</b>
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514878028546" ID="ID_1578952770" MODIFIED="1514878037784" TEXT="static const struct genl_opsnl80211_ops[] = {...}">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514878058013" ID="ID_925344154" MODIFIED="1514878061418" TEXT="SCAN data path">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514878290886" ID="ID_604022791" MODIFIED="1514878403965">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct genl_ops nl80211_ops[] = {
    </p>
    <p>
      &#160;{.cmd = <b>NL80211_CMD_TRIGGER_SCAN</b>,
    </p>
    <p>
      &#160;&#160;.doit=<b>nl80211_trigger_scan</b>,...}}
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514878377061" ID="ID_258023475" MODIFIED="1514878409781">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct cfg80211_ops mac80211_config_ops = {
    </p>
    <p>
      &#160;.scan = <b>ieee80211_scan</b>,}
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880181898" ID="ID_364633541" MODIFIED="1514880183590" TEXT="ieee80211_request_scan()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880188962" ID="ID_913162660" MODIFIED="1514880190686" TEXT="__ieee80211_start_scan()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880255847" ID="ID_1963607894" MODIFIED="1514880259236" TEXT="ieee80211_scan_state_send_probe()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880347702" ID="ID_880516334" MODIFIED="1514880349538" TEXT="ieee80211_send_probe_req()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880361558" ID="ID_1450038572" MODIFIED="1514880362827" TEXT="ieee80211_tx_skb_tid_band()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880374736" ID="ID_273551415" MODIFIED="1514880376796" TEXT="__ieee80211_tx_skb_tid_band()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880390481" ID="ID_1585785920" MODIFIED="1514880391365" TEXT="ieee80211_xmit()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880393777" ID="ID_296153721" MODIFIED="1514880395949" TEXT="ieee80211_tx()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880396193" ID="ID_151107138" MODIFIED="1514880400006" TEXT="ieee80211_tx_frags()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880401025" ID="ID_768594002" MODIFIED="1514880528092" TEXT="drv_tx()">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1624912800" ENDARROW="Default" ENDINCLINATION="1003;0;" ID="Arrow_ID_1112756603" STARTARROW="None" STARTINCLINATION="1003;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514880843330" ID="ID_421561605" MODIFIED="1514880845255" POSITION="right" TEXT="RX Path">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514880848770" ID="ID_858049658" MODIFIED="1514880862576" TEXT="Packet captured by HW over the aire">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514880864556" ID="ID_377222494" MODIFIED="1514880886546" TEXT="HW generate INTR, call interrupt handler">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514880887150" ID="ID_1550648724" MODIFIED="1514880927205" TEXT="Sanity check, filling up the RX desc, pass the pkt to mac80211">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514880939313" ID="ID_1535349584" MODIFIED="1514880942070" TEXT="directly">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514880942306" ID="ID_1810599552" MODIFIED="1514880950374" TEXT="putting the pkt to RX queue">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514880951946" ID="ID_293774934" MODIFIED="1514880992082" TEXT="ieee80211_rx() -&gt; ieee80211_rx_handlers()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514881164626" ID="ID_1701032980" MODIFIED="1514881166318" TEXT="__ieee80211_rx_handle_packet()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514881311812" ID="ID_157230789" MODIFIED="1514881313017" TEXT="ieee80211_prepare_and_rx_handle()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514881326518" ID="ID_190774118" MODIFIED="1514881327546" TEXT="ieee80211_invoke_rx_handlers()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514881338870" ID="ID_1939712570" MODIFIED="1514881340475" TEXT="ieee80211_rx_handlers()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514881421501" ID="ID_142681037" MODIFIED="1514881613415" TEXT="ieee80211_rx_h_data() - Data FRMs">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514881443398" ID="ID_1137657767" MODIFIED="1514881446491" TEXT="__ieee80211_data_to_8023()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514881528605" ID="ID_1768757618" MODIFIED="1514881529993" TEXT="ieee80211_deliver_skb()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514881545622" ID="ID_1380155669" MODIFIED="1514881546618" TEXT="netif_receive_skb()">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1514881604490" ID="ID_1936063542" MODIFIED="1514881609311" TEXT="CALL_RXH(ieee80211_rx_h_mgmt) - MGMT FRMs">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514881694753" ID="ID_850504663" MODIFIED="1514881696125" TEXT="ieee80211_queue_work(&amp;rx-&gt;local-&gt;hw, &amp;sdata-&gt;work)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514881715115" ID="ID_873883279" MODIFIED="1514881716711" TEXT="ieee80211_iface_work()">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514881733340" ID="ID_201293031" MODIFIED="1514881735136" TEXT="ieee80211_ibss_rx_queued_mgmt()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514881798880" ID="ID_1992719311" MODIFIED="1514881799829" TEXT="ieee80211_rx_mgmt_beacon()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514881802457" ID="ID_1414669266" MODIFIED="1514881803573" TEXT="ieee80211_rx_mgmt_probe_resp()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514881808513" ID="ID_1321937419" MODIFIED="1514881809318" TEXT="ieee80211_rx_mgmt_auth()">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514881836739" ID="ID_710675199" MODIFIED="1514881837808" TEXT="cfg80211_rx_mlme_mgmt()">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#ff3300" CREATED="1514881811529" ID="ID_257669967" MODIFIED="1514881812350" TEXT="ieee80211_rx_mgmt_deauth()">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514881840204" ID="ID_334506817" MODIFIED="1514881841240" TEXT="cfg80211_rx_mlme_mgmt()">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#ff3300" CREATED="1514881814498" ID="ID_125476428" MODIFIED="1514881815262" TEXT="ieee80211_rx_mgmt_disassoc()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514881817666" ID="ID_1820005487" MODIFIED="1514881818782" TEXT="ieee80211_rx_mgmt_assoc_resp()">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514881843452" ID="ID_482049636" MODIFIED="1514881844905" TEXT="cfg80211_rx_mlme_mgmt()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514881865901" ID="ID_13374983" MODIFIED="1514881896636" TEXT="cfg80211_process_auth()">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514881907681" ID="ID_1584009584" MODIFIED="1514881910509" TEXT="nl80211_send_rx_auth()">
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#ff3300" CREATED="1514881915145" ID="ID_905574418" MODIFIED="1514881916374" TEXT="nl80211_send_mlme_event()">
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#ff3300" CREATED="1514881873886" ID="ID_1412637264" MODIFIED="1514881875283" TEXT="cfg80211_process_deauth()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514881877958" ID="ID_1019249993" MODIFIED="1514881878819" TEXT="cfg80211_process_disassoc()">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514881957532" ID="ID_1368671424" MODIFIED="1514881975826" POSITION="right" TEXT="Flow patterns">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514881979966" ID="ID_1613299232" MODIFIED="1514881982747" TEXT="configuration">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514882009464" ID="ID_725060130" MODIFIED="1514882012949" TEXT="device detected">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514882013808" ID="ID_1805992053" MODIFIED="1514882732458" TEXT="probe">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514882736430" ID="ID_1554070474" MODIFIED="1514882742179" TEXT="register ieee80211_ops">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514882748103" ID="ID_1220686948" MODIFIED="1514882807807" TEXT="ieee80211_alloc_hw()">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514881982990" ID="ID_870474229" MODIFIED="1514881991939" TEXT="TX">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514881992191" ID="ID_220248547" MODIFIED="1514881994363" TEXT="RX">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514882816915" ID="ID_735011924" MODIFIED="1514882819160" POSITION="right" TEXT="struct wiphy">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
</node>
<node COLOR="#0033ff" CREATED="1514882825948" ID="ID_662209672" MODIFIED="1514882830017" POSITION="right" TEXT="struct ieee80211_local">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
</node>
<node COLOR="#0033ff" CREATED="1514882922516" ID="ID_718861513" MODIFIED="1514882925672" POSITION="right" TEXT="hw_to_local()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514882927027" ID="ID_1422014550" MODIFIED="1514882936409" TEXT="convert ieee80211_hw to ieee80211_local">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
</node>
</map>

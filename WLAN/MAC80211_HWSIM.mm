<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1514688700100" ID="ID_59204599" MODIFIED="1514714502453" TEXT="MAC80211_HWSIM">
<font NAME="Consolas" SIZE="30"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1514688743743" ID="ID_1583569308" MODIFIED="1514714502193" POSITION="right" TEXT="Params">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514688746944" ID="ID_1836991538" MODIFIED="1514714502196" TEXT="radios">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514688750192" ID="ID_1083368886" MODIFIED="1514714502203" TEXT="channels">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514688754601" ID="ID_1957623757" MODIFIED="1514714502208" TEXT="regtest">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514688758360" ID="ID_1653994289" MODIFIED="1514714502211" TEXT="p2p">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514688736689" ID="ID_1379799688" MODIFIED="1514714502223" POSITION="right" TEXT="init_mac80211_hwsim">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514688802732" ID="ID_5903370" MODIFIED="1514714502226" TEXT="struct ieee80211_ops mac80211_hwsim_ops">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514688782040" ID="ID_189845245" MODIFIED="1514714502233" TEXT="struct ieee80211_ops mac80211_hwsim_mchan_ops = mac80211_hwsim_ops">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514688863048" ID="ID_127176965" MODIFIED="1514714502238" TEXT="mac80211_hwsim_new_radio">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514690568685" ID="ID_607238981" MODIFIED="1514714502251">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct mac80211_hwsim_data *data;
    </p>
    <p>
      struct ieee80211_hw *hw;
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514688976625" ID="ID_1941284868" MODIFIED="1514714502271">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      hw = ieee80211_alloc_hw_nm(
    </p>
    <p>
      &#160;&#160;sizeof(*data), <font color="#00cccc">//struct mac80211_hwsim_data</font>
    </p>
    <p>
      &#160;&#160;ops,&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#00cccc">//mac80211_hwsim_ops</font>
    </p>
    <p>
      &#160;&#160;param-&gt;hwname) <font color="#00cccc">//null</font>
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514689735080" ID="ID_669455171" MODIFIED="1514714502308">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct wiphy *wiphy = wiphy_new_nm(
    </p>
    <p>
      &#160;&#160;&amp;mac80211_config_ops, <font color="#00cccc">//struct cfg80211_ops</font>
    </p>
    <p>
      &#160;&#160;priv_size, <font color="#00cccc">//sizeof(ieee80211_local) + priv_data_len</font>
    </p>
    <p>
      &#160;&#160;requested_name);
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514690171016" ID="ID_354214162" MODIFIED="1514714502323" TEXT="struct cfg80211_registered_device *rdev=malloc(...)">
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#6600ff" CREATED="1514690189122" ID="ID_259795655" MODIFIED="1514714502331" TEXT="rdev-&gt;ops = ops;">
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#6600ff" CREATED="1514690513562" ID="ID_1813913596" MODIFIED="1514714502333" TEXT="return &amp;rdev-&gt;wiphy;">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#ff3300" CREATED="1514689906821" ID="ID_1568886498" MODIFIED="1514714502333" TEXT="struct ieee80211_local *local = wiphy_priv(wiphy)">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514690497824" ID="ID_46106411" MODIFIED="1514714502336" TEXT="local-&gt;hw.wiphy = wiphy;">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514690540739" ID="ID_803625913" MODIFIED="1514714502338" TEXT="return &amp;local-&gt;hw;">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514690585439" ID="ID_1074250922" MODIFIED="1514714502341" TEXT="data = hw-&gt;priv;">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514690590975" ID="ID_495555012" MODIFIED="1514714502341" TEXT="data-&gt;hw = hw;">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514691255744" ID="ID_1468411507" MODIFIED="1514714502343" TEXT="//set data-&gt;addresses[2]">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514691343670" ID="ID_1162536285" MODIFIED="1514714502346" TEXT="ieee80211_register_hw(hw)">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514691410771" ID="ID_863144648" MODIFIED="1514714502348" TEXT="wiphy_register(local-&gt;hw.wiphy)">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514692548039" ID="ID_995835404" MODIFIED="1514714502356" TEXT="ieee80211_if_add(local, &quot;wlan%d&quot;, NULL,NL80211_IFTYPE_STATION,NULL);">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514692987416" ID="ID_47968654" MODIFIED="1514714502388">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ndev = alloc_netdev_mqs(
    </p>
    <p>
      &#160;&#160;sizeof(*sdata)+local-&gt;hw.vif_data_size,
    </p>
    <p>
      &#160;&#160;name,NET_NAME_UNKNOWN,
    </p>
    <p>
      &#160; <b><font color="#ff3300">ieee80211_if_setup,</font></b>
    </p>
    <p>
      &#160;&#160;txqs, 1);
    </p>
  </body>
</html></richcontent>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#ff3300" CREATED="1514693113313" ID="ID_35792667" MODIFIED="1514714502406" TEXT="dev-&gt;netdev_ops = &amp;ieee80211_dataif_ops;">
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
<node COLOR="#6600ff" CREATED="1514693044692" ID="ID_913378635" MODIFIED="1514714502408" TEXT="register_netdevice(ndev);">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514693160525" ID="ID_310293204" MODIFIED="1514714502413" POSITION="right" TEXT="Data Structures">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514694072135" ID="ID_1087755642" MODIFIED="1514714502418">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//cfg80211 ops for mac80211</font>
    </p>
    <p>
      struct cfg80211_ops mac80211_config_ops
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514694022268" ID="ID_1243890699" MODIFIED="1514714502426">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//mac80211 ops for hwsim</font>
    </p>
    <p>
      struct ieee80211_ops mac80211_hwsim_ops
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514694104946" ID="ID_15166247" MODIFIED="1514714502431">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc">//netdevice ops for mac80211</font>
    </p>
    <p>
      struct net_device_ops ieee80211_dataif_ops
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514714350127" ID="ID_529145811" MODIFIED="1514715024788" POSITION="right" TEXT="mac80211_hwsim_start()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514714517469" ID="ID_1764489709" MODIFIED="1514715057813" TEXT="by drv_start()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514714532030" ID="ID_690580709" MODIFIED="1514714534168" TEXT="by ieee80211_do_open()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514714538473" ID="ID_885933519" MODIFIED="1514715133823" TEXT="by ieee80211_open()">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_885933519" ENDARROW="Default" ENDINCLINATION="44;0;" ID="Arrow_ID_998476046" SOURCE="ID_1750503755" STARTARROW="None" STARTINCLINATION="44;0;"/>
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1514714970631" ID="ID_234968009" MODIFIED="1514714973315" TEXT="by __dev_open()">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514715025358" FOLDED="true" ID="ID_1906943710" MODIFIED="1514716470315" POSITION="right" TEXT="mac80211_hwsim_add_interface()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514715059766" ID="ID_935892543" MODIFIED="1514715061604" TEXT="by drv_add_interface()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514715104981" ID="ID_1750503755" MODIFIED="1514715133823" TEXT="by ieee80211_do_open()">
<arrowlink DESTINATION="ID_885933519" ENDARROW="Default" ENDINCLINATION="44;0;" ID="Arrow_ID_998476046" STARTARROW="None" STARTINCLINATION="44;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514716460607" ID="ID_461174767" MODIFIED="1514716461611" POSITION="right" TEXT="ieee80211_start_ap()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514716471959" ID="ID_402288995" MODIFIED="1514716473926" TEXT="by nl80211_start_ap()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514716515943" ID="ID_45758093" MODIFIED="1514716516650" TEXT="struct genl_ops nl80211_ops">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514716622542" ID="ID_1092633768" MODIFIED="1514716625757" TEXT="Call rdev_start_ap()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514716669211" ID="ID_215929479" MODIFIED="1514716672498" TEXT="Call ieee80211_start_ap()">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
</node>
</map>

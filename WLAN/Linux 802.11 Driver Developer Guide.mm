<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1514425090129" ID="ID_549783099" MODIFIED="1514425190902">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Guide
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="30"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1514425223901" ID="ID_116671919" MODIFIED="1514427477307" POSITION="right" TEXT="cfg80211 subsystem">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514425637023" ID="ID_216556253" MODIFIED="1514425637869" TEXT="https://www.kernel.org/doc/html/v4.12/driver-api/80211/cfg80211.html">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514425417760" ID="ID_688160368" MODIFIED="1514425468146" TEXT="WHAT">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514425241427" ID="ID_135468476" MODIFIED="1514425432549" TEXT="configuration API for 802.11 devices in Linux">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514425256140" ID="ID_1433772192" MODIFIED="1514425432558" TEXT="bridges userspace and drivers">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514425268861" ID="ID_1787917972" MODIFIED="1514425432560" TEXT="must, directly or indirectly via mac80211">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514425322160" ID="ID_756012610" MODIFIED="1514425432565" TEXT="offer a consistent API through nl80211">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514425387318" ID="ID_1156435816" MODIFIED="1514425432568" TEXT="help enforce regulatory spectrum use restrictions">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514425450618" FOLDED="true" ID="ID_1759236728" MODIFIED="1514427137001" TEXT="Device registration ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514425469795" ID="ID_1919439811" MODIFIED="1514425470393" TEXT="register the hardware device with cfg80211">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514425485548" ID="ID_1832590418" MODIFIED="1514425486057" TEXT="wiphy">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1514425498669" ID="ID_313508924" MODIFIED="1514425499026" TEXT=" each instance describes a physical wireless device connected to the system">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514425515191" ID="ID_410679620" MODIFIED="1514425515563" TEXT="Each such wiphy can have zero, one, or many virtual interfaces associated with it">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514425577555" ID="ID_187296077" MODIFIED="1514425577912" TEXT="ieee80211_ptr pointer to a struct wireless_dev">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1514425588700" ID="ID_1137944754" MODIFIED="1514425589081" TEXT="Drivers can optionally allow creating or destroying virtual interfaces">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1514426346939" ID="ID_319997276" MODIFIED="1514426347552" TEXT=" enum ieee80211_channel_flags">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426357101" ID="ID_61600716" MODIFIED="1514426357409" TEXT=" struct ieee80211_channel">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426364869" ID="ID_648355691" MODIFIED="1514426365161" TEXT=" enum ieee80211_rate_flags">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426373014" ID="ID_490342039" MODIFIED="1514426373322" TEXT=" struct ieee80211_rate">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426378543" ID="ID_1133488227" MODIFIED="1514426378755" TEXT=" struct ieee80211_sta_ht_cap">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426384302" ID="ID_542240940" MODIFIED="1514426384651" TEXT=" struct ieee80211_supported_band">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426390464" ID="ID_405486418" MODIFIED="1514426390692" TEXT=" enum cfg80211_signal_type">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426399807" ID="ID_1124331431" MODIFIED="1514426400837" TEXT=" enum wiphy_params_flags">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426411145" ID="ID_1852350619" MODIFIED="1514426411453" TEXT=" enum wiphy_flags">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426426386" ID="ID_1172435832" MODIFIED="1514426427892" TEXT=" struct wiphy">
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426438691" ID="ID_142246554" MODIFIED="1514426440155" TEXT=" struct wireless_dev">
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426451652" ID="ID_752595581" MODIFIED="1514426452633" TEXT=" struct wiphy * wiphy_new(const struct cfg80211_ops * ops, int sizeof_priv)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426457476" ID="ID_783158781" MODIFIED="1514426457752" TEXT=" void wiphy_read_of_freq_limits(struct wiphy * wiphy)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426481014" ID="ID_1764956560" MODIFIED="1514426481498" TEXT=" int wiphy_register(struct wiphy * wiphy)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426485998" ID="ID_610372288" MODIFIED="1514426486386" TEXT=" void wiphy_unregister(struct wiphy * wiphy)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426490854" ID="ID_1504439436" MODIFIED="1514426491163" TEXT=" void wiphy_free(struct wiphy * wiphy)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426504912" ID="ID_1026001729" MODIFIED="1514426505348" TEXT=" const char * wiphy_name(const struct wiphy * wiphy)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426509208" ID="ID_1180467564" MODIFIED="1514426509556" TEXT=" struct device * wiphy_dev(struct wiphy * wiphy)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426514575" ID="ID_1112553091" MODIFIED="1514426514860" TEXT=" void * wiphy_priv(struct wiphy * wiphy)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426518055" ID="ID_221581000" MODIFIED="1514426518404" TEXT=" struct wiphy * priv_to_wiphy(void * priv)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426524728" ID="ID_1587720400" MODIFIED="1514426525605" TEXT=" void set_wiphy_dev(struct wiphy * wiphy, struct device * dev)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426531600" ID="ID_1323182370" MODIFIED="1514426531926" TEXT=" void * wdev_priv(struct wireless_dev * wdev)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426537832" ID="ID_7233174" MODIFIED="1514426538334" TEXT=" struct ieee80211_iface_limit">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426546578" ID="ID_34299388" MODIFIED="1514426546822" TEXT=" struct ieee80211_iface_combination">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426703837" ID="ID_1374922729" MODIFIED="1514426704186" TEXT=" int cfg80211_check_combinations(struct wiphy * wiphy, struct iface_combination_params * params)">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514426708862" FOLDED="true" ID="ID_1046201310" MODIFIED="1514427135065" TEXT="Actions and configuration">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514426737495" ID="ID_1534171709" MODIFIED="1514426737764" TEXT="offer a set of configuration operations and other actions that are invoked by userspace">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426754689" ID="ID_466134878" MODIFIED="1514426757541" TEXT=" struct cfg80211_ops">
<font BOLD="true" NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426802980" ID="ID_812944571" MODIFIED="1514426803313" TEXT=" struct vif_params">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426812093" ID="ID_574274720" MODIFIED="1514426812673" TEXT=" struct key_params">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426817749" ID="ID_844695717" MODIFIED="1514426818058" TEXT=" enum survey_info_flags">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426822453" ID="ID_315131113" MODIFIED="1514426822802" TEXT=" struct survey_info">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426828846" ID="ID_1389801393" MODIFIED="1514426829131" TEXT=" struct cfg80211_beacon_data">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426836991" ID="ID_865317879" MODIFIED="1514426837268" TEXT=" struct cfg80211_ap_settings">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426847967" ID="ID_734255260" MODIFIED="1514426848341" TEXT=" struct station_parameters">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426857384" ID="ID_652989667" MODIFIED="1514426857661" TEXT=" enum rate_info_flags">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426861392" ID="ID_42672703" MODIFIED="1514426861701" TEXT=" struct rate_info">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426869969" ID="ID_1690961884" MODIFIED="1514426870470" TEXT=" struct station_info">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426885882" ID="ID_901272191" MODIFIED="1514426886287" TEXT=" enum monitor_flags">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426890731" ID="ID_1658541532" MODIFIED="1514426891088" TEXT=" struct mpath_info">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426895731" ID="ID_1413172712" MODIFIED="1514426896160" TEXT=" struct bss_parameters">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426902388" ID="ID_697093105" MODIFIED="1514426902832" TEXT=" struct ieee80211_txq_params">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426915068" ID="ID_362129910" MODIFIED="1514426915425" TEXT=" struct cfg80211_crypto_settings">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426920261" ID="ID_89376748" MODIFIED="1514426920570" TEXT=" struct cfg80211_auth_request">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426924461" ID="ID_849323156" MODIFIED="1514426924802" TEXT=" struct cfg80211_assoc_request">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426936038" ID="ID_1356277832" MODIFIED="1514426936339" TEXT=" struct cfg80211_deauth_request">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426941870" ID="ID_1531095107" MODIFIED="1514426942267" TEXT=" struct cfg80211_disassoc_request">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426948527" ID="ID_1015084535" MODIFIED="1514426948868" TEXT=" struct cfg80211_ibss_params">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426954160" ID="ID_1960378762" MODIFIED="1514426954489" TEXT=" struct cfg80211_connect_params">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426961897" ID="ID_1982575862" MODIFIED="1514426962293" TEXT=" struct cfg80211_pmksa">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426971553" ID="ID_770258459" MODIFIED="1514426971917" TEXT=" void cfg80211_rx_mlme_mgmt(struct net_device * dev, const u8 * buf, size_t len)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426987514" ID="ID_1471249873" MODIFIED="1514426987806" TEXT=" void cfg80211_auth_timeout(struct net_device * dev, const u8 * addr)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514426993594" ID="ID_1698654265" MODIFIED="1514426993911" TEXT=" void cfg80211_rx_assoc_resp(struct net_device * dev, struct cfg80211_bss * bss, const u8 * buf, size_t len, int uapsd_queues)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427003276" ID="ID_1486761778" MODIFIED="1514427003512" TEXT=" void cfg80211_assoc_timeout(struct net_device * dev, struct cfg80211_bss * bss)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427008675" ID="ID_758784576" MODIFIED="1514427010008" TEXT=" void cfg80211_tx_mlme_mgmt(struct net_device * dev, const u8 * buf, size_t len)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427019700" ID="ID_1388275607" MODIFIED="1514427020065" TEXT=" void cfg80211_ibss_joined(struct net_device * dev, const u8 * bssid, struct ieee80211_channel * channel, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427024877" ID="ID_733329333" MODIFIED="1514427025225" TEXT=" struct cfg80211_connect_resp_params">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427031525" ID="ID_337458292" MODIFIED="1514427031882" TEXT=" void cfg80211_connect_done(struct net_device * dev, struct cfg80211_connect_resp_params * params, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427036206" ID="ID_1793055762" MODIFIED="1514427036602" TEXT=" void cfg80211_connect_result(struct net_device * dev, const u8 * bssid, const u8 * req_ie, size_t req_ie_len, const u8 * resp_ie, size_t resp_ie_len, u16 status, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427046294" ID="ID_539150989" MODIFIED="1514427046611" TEXT=" void cfg80211_connect_bss(struct net_device * dev, const u8 * bssid, struct cfg80211_bss * bss, const u8 * req_ie, size_t req_ie_len, const u8 * resp_ie, size_t resp_ie_len, int status, gfp_t gfp, enum nl80211_timeout_reason timeout_reason)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427055047" ID="ID_1292794170" MODIFIED="1514427055443" TEXT=" void cfg80211_connect_timeout(struct net_device * dev, const u8 * bssid, const u8 * req_ie, size_t req_ie_len, gfp_t gfp, enum nl80211_timeout_reason timeout_reason)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427063344" ID="ID_1095396836" MODIFIED="1514427063676" TEXT=" void cfg80211_roamed(struct net_device * dev, struct cfg80211_roam_info * info, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427067712" ID="ID_1918560378" MODIFIED="1514427068117" TEXT=" void cfg80211_disconnected(struct net_device * dev, u16 reason, const u8 * ie, size_t ie_len, bool locally_generated, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427077297" ID="ID_1158483317" MODIFIED="1514427077653" TEXT=" void cfg80211_ready_on_channel(struct wireless_dev * wdev, u64 cookie, struct ieee80211_channel * chan, unsigned int duration, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427086977" ID="ID_987305796" MODIFIED="1514427087501" TEXT=" void cfg80211_remain_on_channel_expired(struct wireless_dev * wdev, u64 cookie, struct ieee80211_channel * chan, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427093722" ID="ID_1985414038" MODIFIED="1514427094038" TEXT=" void cfg80211_new_sta(struct net_device * dev, const u8 * mac_addr, struct station_info * sinfo, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427099874" ID="ID_869351101" MODIFIED="1514427100431" TEXT=" bool cfg80211_rx_mgmt(struct wireless_dev * wdev, int freq, int sig_dbm, const u8 * buf, size_t len, u32 flags)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427106627" ID="ID_1181738537" MODIFIED="1514427107144" TEXT=" void cfg80211_mgmt_tx_status(struct wireless_dev * wdev, u64 cookie, const u8 * buf, size_t len, bool ack, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427115820" ID="ID_1003687875" MODIFIED="1514427116200" TEXT=" void cfg80211_cqm_rssi_notify(struct net_device * dev, enum nl80211_cqm_rssi_threshold_event rssi_event, s32 rssi_level, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427120820" ID="ID_1016556001" MODIFIED="1514427121129" TEXT=" void cfg80211_cqm_pktloss_notify(struct net_device * dev, const u8 * peer, u32 num_packets, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427128156" ID="ID_1604104798" MODIFIED="1514427128489" TEXT=" void cfg80211_michael_mic_failure(struct net_device * dev, const u8 * addr, enum nl80211_key_type key_type, int key_id, const u8 * tsc, gfp_t gfp)">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514427138293" FOLDED="true" ID="ID_1064073642" MODIFIED="1514427321111" TEXT="Scanning and BSS list handling">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514427158814" ID="ID_1821513648" MODIFIED="1514427159051" TEXT="To start a scan, the scan operation will be invoked with a scan definition">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427175407" ID="ID_1734576933" MODIFIED="1514427175828" TEXT="contains the channels to scan, and the SSIDs to send probe requests for (including the wildcard, if desired)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427200674" ID="ID_1623227308" MODIFIED="1514427201030" TEXT="When scanning finds a BSS, cfg80211 needs to be notified of that, because it is responsible for maintaining the BSS list">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427215290" ID="ID_920492220" MODIFIED="1514427215624" TEXT=" the driver should not maintain a list itself.">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427226469" ID="ID_839760975" MODIFIED="1514427226848" TEXT="drivers do not maintain a BSS list">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427241380" ID="ID_950439775" MODIFIED="1514427241817" TEXT=" struct cfg80211_ssid">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427256486" ID="ID_1428514729" MODIFIED="1514427256866" TEXT=" struct cfg80211_scan_request">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427268567" ID="ID_1849087677" MODIFIED="1514427269035" TEXT=" void cfg80211_scan_done(struct cfg80211_scan_request * request, struct cfg80211_scan_info * info)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427292425" ID="ID_1503978361" MODIFIED="1514427292756" TEXT=" struct cfg80211_bss">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514427321566" ID="ID_848422437" MODIFIED="1514427322047" TEXT="Utility functions">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514427332683" ID="ID_1912903427" MODIFIED="1514427332983" TEXT="Data path helpers">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514427339444" ID="ID_94502791" MODIFIED="1514427339744" TEXT=" int ieee80211_data_to_8023(struct sk_buff * skb, const u8 * addr, enum nl80211_iftype iftype)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427345548" ID="ID_94939849" MODIFIED="1514427345897" TEXT=" int ieee80211_data_from_8023(struct sk_buff * skb, const u8 * addr, enum nl80211_iftype iftype, const u8 * bssid, bool qos)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514427352492" ID="ID_1960705458" MODIFIED="1514427352905" TEXT=" void ieee80211_amsdu_to_8023s(struct sk_buff * skb, struct sk_buff_head * list, const u8 * addr, enum nl80211_iftype iftype, const unsigned int extra_headroom, const u8 * check_da, const u8 * check_sa)">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514427358294" ID="ID_466653018" MODIFIED="1514427358666" TEXT="Regulatory enforcement infrastructure">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514427365790" ID="ID_933705668" MODIFIED="1514427366115" TEXT="RFkill integration">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514427400048" ID="ID_1910927047" MODIFIED="1514427400597" TEXT="Test mode">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1514427482430" ID="ID_1555076698" MODIFIED="1514427483043" POSITION="right" TEXT="mac80211 subsystem">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1514428501866" ID="ID_1174060532" MODIFIED="1514428502190" TEXT="Basic hardware handling">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428532668" ID="ID_287338981" MODIFIED="1514428533152" TEXT="PHY configuration">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428540428" ID="ID_1892985940" MODIFIED="1514428540929" TEXT="Virtual interfaces">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428548885" ID="ID_378090627" MODIFIED="1514428549234" TEXT="Receive and transmit processing">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428579271" ID="ID_929272918" MODIFIED="1514428579572" TEXT="Frame filtering">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428585687" ID="ID_1692701961" MODIFIED="1514428586028" TEXT="The mac80211 workqueue">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428603841" ID="ID_973820981" MODIFIED="1514428604158" TEXT="LED support">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428617434" ID="ID_742196613" MODIFIED="1514428617711" TEXT="Hardware crypto acceleration">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428628731" ID="ID_239325042" MODIFIED="1514428629047" TEXT="Powersave support">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428634499" ID="ID_438375953" MODIFIED="1514428634880" TEXT="Beacon filter support">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428647924" ID="ID_1921066202" MODIFIED="1514428648417" TEXT="Multiple queues and QoS support">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428657981" ID="ID_27976303" MODIFIED="1514428658226" TEXT="Access point mode support">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514428668253" ID="ID_1348772750" MODIFIED="1514428683407" TEXT="support for powersaving clients">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514428795607" ID="ID_738808590" MODIFIED="1514428795940" TEXT="Supporting multiple virtual interfaces">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428807880" ID="ID_1006149394" MODIFIED="1514428808172" TEXT="Station handling">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428823362" ID="ID_1053711674" MODIFIED="1514428823679" TEXT="Hardware scan offload">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428830586" ID="ID_1142839683" MODIFIED="1514428858570" TEXT="Aggregation">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1514428850395" ID="ID_277257681" MODIFIED="1514428850816" TEXT="TX A-MPDU aggregation">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1514428859444" ID="ID_1544309016" MODIFIED="1514428859760" TEXT="RX A-MPDU aggregation">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1514428867932" ID="ID_973811838" MODIFIED="1514428868441" TEXT="Spatial Multiplexing Powersave (SMPS)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428891589" ID="ID_1968369318" MODIFIED="1514428891908" TEXT="Rate Control API">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1514428900824" ID="ID_457864523" MODIFIED="1514428901108" TEXT="Key handling">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
</node>
</map>

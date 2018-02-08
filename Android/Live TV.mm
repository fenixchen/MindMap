<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1517452518795" ID="ID_174167293" MODIFIED="1517452551013" TEXT="Live TV">
<font NAME="Consolas" SIZE="30"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1517469483984" ID="ID_64247541" MODIFIED="1517469560122" POSITION="left" TEXT="JNI_OnLoad()">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1517469534992" ID="ID_374109757" MODIFIED="1517469867681" TEXT=" register_android_server_tv_TvInputHal()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517469892085" ID="ID_1190364580" MODIFIED="1517470337598" TEXT="Register Native Function to com.android.server.tv.TvInputHal">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517470345379" ID="ID_1314751359" MODIFIED="1517470391335" TEXT="// JAVA will these functions implemented by C">
<font BOLD="true" NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517469923695" ID="ID_1941515674" MODIFIED="1517469927899" TEXT="nativeOpen">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1517470435326" ID="ID_306532402" MODIFIED="1517470454060" TEXT="JTvInputHal::createInstance()">
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#ff3300" CREATED="1517470744387" ID="ID_1648492108" MODIFIED="1517470913333">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Get TvInput Service
    </p>
    <p>
      sp&lt;ITvInput&gt; <b><font color="#00cccc">tvInput</font></b>&#160;= ITvInput::getService()
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="14"/>
</node>
<node COLOR="#ff3300" CREATED="1517470756499" ID="ID_240615294" MODIFIED="1517470910103">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Create JTvInputHal Instance
    </p>
    <p>
      return new JTvInputHal(env, thiz, <b><font color="#009999">tvInput</font></b>, looper)
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#ff3300" CREATED="1517469928239" ID="ID_1867658654" MODIFIED="1517469936141" TEXT="nativeAddOrUpdateStream">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1517470471551" ID="ID_1800308438" MODIFIED="1517470479133" TEXT="get surface">
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#6600ff" CREATED="1517470483064" ID="ID_633646016" MODIFIED="1517471597165" TEXT="tvInputHanl-&gt;addOrUpdteStream(deviceId, streamId, surface)">
<arrowlink DESTINATION="ID_422963000" ENDARROW="Default" ENDINCLINATION="1606;0;" ID="Arrow_ID_524440526" STARTARROW="None" STARTINCLINATION="1606;0;"/>
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#ff3300" CREATED="1517469936472" ID="ID_30230206" MODIFIED="1517469941147" TEXT="nativeRemoveStream">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1517470531761" ID="ID_1482600489" MODIFIED="1517470532309" TEXT=" tvInputHal-&gt;removeStream(deviceId, streamId)">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#ff3300" CREATED="1517469942135" ID="ID_665151317" MODIFIED="1517469947614" TEXT="nativeGetStreamConfigs">
<font NAME="Consolas" SIZE="18"/>
<node COLOR="#6600ff" CREATED="1517470622045" ID="ID_661072631" MODIFIED="1517470652995">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // call tvInputHal to get configs
    </p>
    <p>
      configs=tvInputHal-&gt;getStreamConfigs(deviceId);
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="16"/>
<node COLOR="#ff3300" CREATED="1517470680032" ID="ID_1389980026" MODIFIED="1517470701060" TEXT="mTvInput-&gt;getStreamConfiguations()">
<font NAME="Consolas" SIZE="14"/>
</node>
</node>
<node COLOR="#6600ff" CREATED="1517470558826" ID="ID_1227908543" MODIFIED="1517470668314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Call TvStreamConfig.Builder(xxx) to build objects
    </p>
  </body>
</html>
</richcontent>
<font NAME="Consolas" SIZE="16"/>
</node>
<node COLOR="#6600ff" CREATED="1517470828719" ID="ID_17382528" MODIFIED="1517470829564" TEXT="Return array of TvStreamConfig ">
<font NAME="Consolas" SIZE="16"/>
</node>
</node>
<node COLOR="#ff3300" CREATED="1517469948248" ID="ID_1450641009" MODIFIED="1517469949966" TEXT="nativeClose">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1517469548928" ID="ID_1070828064" MODIFIED="1517469878232" TEXT="Mapping Java(com/android/server/tv/TvInputHal)">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517470373659" ID="ID_832377968" MODIFIED="1517470392285" TEXT="// native C will call these java functions">
<font BOLD="true" NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517469618003" ID="ID_932212574" MODIFIED="1517475314484" TEXT="deviceAvailableFromNative">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_932212574" ENDARROW="Default" ENDINCLINATION="338;0;" ID="Arrow_ID_1422586434" SOURCE="ID_1896779989" STARTARROW="None" STARTINCLINATION="338;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517469623195" ID="ID_1544162164" MODIFIED="1517469878235" TEXT="deviceUnavailableFromNative">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517469632123" ID="ID_937353206" MODIFIED="1517469878254" TEXT="streamConfigsChangedFromNative">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517469659564" ID="ID_1185325294" MODIFIED="1517469878255" TEXT="firstFrameCapturedFromNative">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1517469751623" ID="ID_1269676286" MODIFIED="1517469797712" TEXT="Create instanace of (android/media/tv/TvStreamConfig)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517469805074" ID="ID_440173962" MODIFIED="1517469810512" TEXT="Create Instance of (android/media/tv/TvStreamConfig$Builder)">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1517474697579" ID="ID_1702979878" MODIFIED="1517474706972" TEXT="JTvInputHal::JTvInputHal()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517474707526" ID="ID_1258794796" MODIFIED="1517474726556" TEXT="mTvInputCallback = new TvInputCallback(this)">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517474726909" ID="ID_243568155" MODIFIED="1517474911440" TEXT="mTvInput-&gt;setCalllback(mTvInputCallback)">
<arrowlink DESTINATION="ID_1551862490" ENDARROW="Default" ENDINCLINATION="830;0;" ID="Arrow_ID_208207754" STARTARROW="None" STARTINCLINATION="830;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1517475290799" ID="ID_347231424" MODIFIED="1517475293116" TEXT=" JTvInputHal::TvInputCallback::notify()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517475303604" ID="ID_1896779989" MODIFIED="1517475314485" TEXT=" mHal-&gt;mLooper-&gt;sendMessage(new NotifyHandler(mHal, event), static_cast&lt;int&gt;(event.type));">
<arrowlink DESTINATION="ID_932212574" ENDARROW="Default" ENDINCLINATION="338;0;" ID="Arrow_ID_1422586434" STARTARROW="None" STARTINCLINATION="338;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1517471575392" ID="ID_296149457" MODIFIED="1517471579733" TEXT="JTvInputHal">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517471580383" ID="ID_422963000" MODIFIED="1517472842255" TEXT="addOrUpdateStream()">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_422963000" ENDARROW="Default" ENDINCLINATION="1606;0;" ID="Arrow_ID_524440526" SOURCE="ID_633646016" STARTARROW="None" STARTINCLINATION="1606;0;"/>
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517471680771" ID="ID_1534384532" MODIFIED="1517471686042" TEXT="Find connection for streamId">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517471697428" ID="ID_950640230" MODIFIED="1517471703659" TEXT="get connection.mSurface">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517471725774" ID="ID_122778034" MODIFIED="1517472893998" TEXT="mTvInput-&gt;getStreamConfigurations return list of streams">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517472894505" ID="ID_1274071830" MODIFIED="1517472922888" TEXT="find list for streamId to configIndex">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517472924890" ID="ID_1839054194" MODIFIED="1517473587073" TEXT="mTvInput-&gt;openStream(deviceId, streamId) =&gt; sidebandStream">
<arrowlink DESTINATION="ID_1541714535" ENDARROW="Default" ENDINCLINATION="837;0;" ID="Arrow_ID_1505897843" STARTARROW="None" STARTINCLINATION="837;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517473050831" ID="ID_816853737" MODIFIED="1517473062596" TEXT="connection.mSourceHandle = sidebandStream">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517473062976" ID="ID_1417864729" MODIFIED="1517473082446" TEXT="connection.mSurface-&gt;setSidebandStream(connection.mSourceHandle)">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1517473242768" ID="ID_1537708228" MODIFIED="1517473246821" TEXT="removeStream()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517473249904" ID="ID_779681228" MODIFIED="1517473252565" TEXT="get connection">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517473256040" ID="ID_835368243" MODIFIED="1517473269534" TEXT="connection.mThread-&gt;shutdown()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517473269849" ID="ID_46179736" MODIFIED="1517473280015" TEXT="mTvInput-&gt;closeStream()">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517473282633" ID="ID_519633000" MODIFIED="1517473288991" TEXT="connection.mSourceHandle.clear()">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1517473416519" ID="ID_1721387617" MODIFIED="1517473424325" POSITION="left" TEXT="ITvInput Services">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1517472046636" ID="ID_335202477" MODIFIED="1517473426598" TEXT="ITvInput.hal">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517472149728" ID="ID_1035161451" MODIFIED="1517473426599" TEXT="HAL interface definition language">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517472173218" ID="ID_54674932" MODIFIED="1517473426600" TEXT="Binderized HALs(Rather than Passthrough HALs)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517472201289" ID="ID_1083255834" MODIFIED="1517473426601" TEXT="https://source.android.com/devices/architecture/hal-types">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1517473434776" ID="ID_242223772" MODIFIED="1517473435430" TEXT="hardware/interfaces/tv/input/1.0/default/service.cpp">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1517473443072" ID="ID_1777614193" MODIFIED="1517473443638" TEXT="return defaultPassthroughServiceImplementation&lt;ITvInput&gt;();">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1517473471345" ID="ID_171820150" MODIFIED="1517473478080" TEXT="TvInput.h/TvInput.cpp">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1517473531700" ID="ID_187215144" MODIFIED="1517473536634" TEXT="TvInput Class">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517473634553" ID="ID_1556804648" MODIFIED="1517473650479" TEXT="TvInput(tv_input_device_t* device)">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517473651137" ID="ID_977467988" MODIFIED="1517473654647" TEXT="mDevice = device">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1517474890855" ID="ID_1551862490" MODIFIED="1517475093768" TEXT="setCallback()">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1551862490" ENDARROW="Default" ENDINCLINATION="830;0;" ID="Arrow_ID_208207754" SOURCE="ID_243568155" STARTARROW="None" STARTINCLINATION="830;0;"/>
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517474937452" ID="ID_1487993852" MODIFIED="1517475176703" TEXT="mCallback = callback">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1487993852" ENDARROW="Default" ENDINCLINATION="81;0;" ID="Arrow_ID_538878559" SOURCE="ID_860886268" STARTARROW="None" STARTINCLINATION="81;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1517474957946" ID="ID_947775104" MODIFIED="1517474961438" TEXT="notify()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517474966806" ID="ID_675053089" MODIFIED="1517474978023" TEXT="TvInputEvent tvInputEvent">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517474981407" ID="ID_860886268" MODIFIED="1517475176704" TEXT="mCallback-&gt;notify(tvInputEvent)">
<arrowlink DESTINATION="ID_1487993852" ENDARROW="Default" ENDINCLINATION="81;0;" ID="Arrow_ID_538878559" STARTARROW="None" STARTINCLINATION="81;0;"/>
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1517473537236" ID="ID_1541714535" MODIFIED="1517473587072" TEXT="openStream()">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1541714535" ENDARROW="Default" ENDINCLINATION="837;0;" ID="Arrow_ID_1505897843" SOURCE="ID_1839054194" STARTARROW="None" STARTINCLINATION="837;0;"/>
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517473562357" ID="ID_688398673" MODIFIED="1517473568867" TEXT="tv_stream_t stream">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517473569205" ID="ID_1985281738" MODIFIED="1517473576772" TEXT="stream.stream_id = streamId">
<font NAME="Consolas" SIZE="18"/>
</node>
<node COLOR="#ff3300" CREATED="1517473542436" ID="ID_1901199295" MODIFIED="1517473556507" TEXT="mDevice-&gt;open_stream(mDevice, deviceId, &amp;stream)">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1517473984040" ID="ID_920318527" MODIFIED="1517473990797" POSITION="left" TEXT="tv_input HAL">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1517473991360" ID="ID_1938195763" MODIFIED="1517474011894" TEXT="tv_input.h/tv_input.cpp">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1517474034323" ID="ID_908262615" MODIFIED="1517474221556">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      typedef struct <b>tv_input_module</b>&#160;{&#160;&#160;&#160;&#160;&#160;<br />struct hw_module_t common;&#160;<br />} tv_input_module_t;
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1517474086821" ID="ID_1044625942" MODIFIED="1517474224201">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      typedef struct <b>tv_input_device</b>&#160;{<br />int (*initialize)(..);<br />int (*get_stream_configurations)(..);<br />int (*open_stream)(..);<br />int (*close_stream)(..);<br />int (*request_capture)(..);<br />int (*cancel_capture)(..);<br />} tv_input_device_t;&#160;
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1517470252325" ID="ID_1325124740" MODIFIED="1517475584620" POSITION="right" TEXT="TvInputHal.java">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1517475339959" ID="ID_1293523472" MODIFIED="1517475354154" TEXT="Call native">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517475365107" ID="ID_734372473" MODIFIED="1517475367297" TEXT="nativeOpen">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475371634" ID="ID_709428537" MODIFIED="1517475379462" TEXT="nativeAddOrpdateStream">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475381216" ID="ID_1333235386" MODIFIED="1517475386342" TEXT="nativeRemoveStream">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475386664" ID="ID_815535199" MODIFIED="1517475394900" TEXT="nativeGetStreamConfigs">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475397183" ID="ID_347573391" MODIFIED="1517475399579" TEXT="nativeClose">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1517475345446" ID="ID_357078878" MODIFIED="1517475560945" TEXT="Notified by native">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517475448398" ID="ID_1808665177" MODIFIED="1517476128584" TEXT="onDeviceAvailabledeviceAvailableFromNative()">
<font NAME="Consolas" SIZE="20"/>
<node COLOR="#ff3300" CREATED="1517476117374" ID="ID_275605896" MODIFIED="1517476133336" TEXT=" mHandler.obtainMessage(EVENT_DEVICE_AVAILABLE, info).sendToTarget()&#xa;">
<font NAME="Consolas" SIZE="18"/>
</node>
</node>
<node COLOR="#990000" CREATED="1517475458388" ID="ID_914450753" MODIFIED="1517475464129" TEXT="onDeviceUnavailable">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475464492" ID="ID_1408928014" MODIFIED="1517475470960" TEXT="onStreamConfigurationChanged">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475471802" ID="ID_1224639862" MODIFIED="1517475477296" TEXT="onFirstFrameCaptured">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475489175" ID="ID_941123161" MODIFIED="1517475500155" TEXT="After Notified, call mCallback.onXXX()">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1517475585484" ID="ID_455542207" MODIFIED="1517475596630">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      //looper handler
    </p>
    <p>
      handleMessage(Message msg)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517475610042" ID="ID_530522484" MODIFIED="1517475610448" TEXT="EVENT_DEVICE_AVAILABLE">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475617098" ID="ID_1619691516" MODIFIED="1517475634375" TEXT="EVENT_DEVICE_UNAVAILABLE">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475623282" ID="ID_1883781101" MODIFIED="1517475633141" TEXT="EVENT_STREAM_CONFIGURATION_CHANGED">
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517475629825" ID="ID_1525550874" MODIFIED="1517475631903" TEXT="EVENT_FIRST_FRAME_CAPTURED">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1517476164493" ID="ID_149324719" MODIFIED="1517476532479" POSITION="right" TEXT="TvInputHardwareManager.java">
<edge STYLE="linear" WIDTH="4"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_149324719" ENDARROW="Default" ENDINCLINATION="887;0;" ID="Arrow_ID_1238463445" SOURCE="ID_1752067200" STARTARROW="None" STARTINCLINATION="887;0;"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1517476260562" ID="ID_56223965" MODIFIED="1517476263319" TEXT="Listener">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517476274866" ID="ID_763362332" MODIFIED="1517476305962" TEXT="void onStateChanged(String inputId, int state);&#xa;void onHardwareDeviceAdded(TvInputHardwareInfo info);&#xa;void onHardwareDeviceRemoved(TvInputHardwareInfo info);&#xa;void onHdmiDeviceAdded(HdmiDeviceInfo device);&#xa;void onHdmiDeviceRemoved(HdmiDeviceInfo device);&#xa;void onHdmiDeviceUpdated(String inputId, HdmiDeviceInfo device);">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1517476485947" ID="ID_1677992464" MODIFIED="1517476497584" POSITION="right" TEXT="TvInputManagerService">
<edge STYLE="linear" WIDTH="4"/>
<font NAME="Consolas" SIZE="24"/>
<node COLOR="#00b439" CREATED="1517476499203" ID="ID_1363713932" MODIFIED="1517476501058" TEXT="extends SystemService">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
</node>
<node COLOR="#00b439" CREATED="1517476515764" ID="ID_1551697845" MODIFIED="1517476543644" TEXT="TvInputManagerService()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517476517668" ID="ID_1752067200" MODIFIED="1517476532480" TEXT=" mTvInputHardwareManager = new TvInputHardwareManager(context, new HardwareListener());">
<arrowlink DESTINATION="ID_149324719" ENDARROW="Default" ENDINCLINATION="887;0;" ID="Arrow_ID_1238463445" STARTARROW="None" STARTINCLINATION="887;0;"/>
<font NAME="Consolas" SIZE="20"/>
</node>
<node COLOR="#990000" CREATED="1517476620706" ID="ID_33671016" MODIFIED="1517476621935" TEXT="class HardwareListener implements TvInputHardwareManager.Listener">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1517476544070" ID="ID_1798987769" MODIFIED="1517476546299" TEXT="onStart()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="Consolas" SIZE="22"/>
<node COLOR="#990000" CREATED="1517476554110" ID="ID_1184417605" MODIFIED="1517476564100" TEXT=" publishBinderService(Context.TV_INPUT_SERVICE,..)">
<font NAME="Consolas" SIZE="20"/>
</node>
</node>
</node>
</node>
</map>

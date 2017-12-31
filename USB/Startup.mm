<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1510797206092" ID="ID_1639680227" MODIFIED="1510888031702" TEXT="Steps">
<font NAME="SimHei" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1510887200110" ID="ID_274559962" MODIFIED="1510887240535" POSITION="right" TEXT="subsystem register &lt;devices&gt;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510887625443" ID="ID_312491182" MODIFIED="1510887635624" TEXT="decl_subsys(devices, &amp;ktype_device, &amp;device_hotplug_ops);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510888317805" ID="ID_1478093909" MODIFIED="1510888338820" TEXT="struct subsystem devices_subsys">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510888202165" ID="ID_734644946" MODIFIED="1510888342108" TEXT="  s-&gt;kset.kobj.name = &quot;devices&quot;">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510888240864" ID="ID_1286397233" MODIFIED="1510888343564" TEXT="  s-&gt;kset.ktype = &amp;type_devices">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510887608985" ID="ID_824214211" MODIFIED="1510887619335" TEXT="subsystem_register(&amp;devices_subsys);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510893355411" ID="ID_1551765870" MODIFIED="1510893356063" TEXT="struct subsystem *s = &amp;devices_subsys ">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510888410596" ID="ID_226418825" MODIFIED="1510888420314" TEXT="subsystem_init(&amp;device_subsysys)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510887893470" ID="ID_458986085" MODIFIED="1510888424193" TEXT="init_rwsem(&amp;s-&gt;rwsem)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510887901727" ID="ID_435978282" MODIFIED="1510888424194" TEXT="kset_init(&amp;s-&gt;kset)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510888476577" ID="ID_1110854422" MODIFIED="1510888497527" TEXT="struct kset *k = &amp;devices_subsys.kset"/>
<node COLOR="#111111" CREATED="1510888441158" ID="ID_350857451" MODIFIED="1510888764117" TEXT="kobject_init(&amp;k-&gt;obj)">
<node COLOR="#111111" CREATED="1510888518869" ID="ID_785476952" MODIFIED="1510888538090" TEXT="struct kobject *kobj = &amp;device_subsys.kset.kobj"/>
<node COLOR="#111111" CREATED="1510888541910" ID="ID_134317409" MODIFIED="1510888588934" TEXT="kref_init(&amp;kobj-&gt;kref); &#x5f15;&#x7528;&#x8ba1;&#x6570;"/>
<node COLOR="#111111" CREATED="1510888560511" ID="ID_1126759527" MODIFIED="1510888582150" TEXT="INIT_LIST_HEAD(&amp;kobj-&gt;entry); &#x7528;&#x4e8e;&#x6302;&#x5230;kset"/>
<node COLOR="#111111" CREATED="1510888600066" ID="ID_1629305458" MODIFIED="1510888753428">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      kobj-&gt;kset = kset_get(kobj-&gt;kset);
    </p>
    <p>
      # kobj-&gt;kset == NULL, so finally kobj-&gt;kset is still NULL
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1510888463096" ID="ID_1131090922" MODIFIED="1510888463604" TEXT="INIT_LIST_HEAD(&amp;k-&gt;list);"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510887923321" ID="ID_233555419" MODIFIED="1510887923829" TEXT="kset_add(&amp;s-&gt;kset)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510893345181" ID="ID_856310073" MODIFIED="1510893352472" TEXT="struct kset *k = &amp;s-&gt;kset">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510893321335" ID="ID_1992967437" MODIFIED="1510893422600" TEXT="kobject_add(&amp;k-&gt;kobj)">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510893424522" ID="ID_747217114" MODIFIED="1510893425535" TEXT="&lt;devices&gt; parent: &lt;NULL&gt;, set:&lt;NULL&gt;"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510887200110" ID="ID_883610540" MODIFIED="1510887254157" POSITION="right" TEXT="subsystem register &lt;bus&gt;">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1510897586772" ID="ID_1986995555" MODIFIED="1510899296685" POSITION="right" TEXT="platform_bus_init()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510899130705" ID="ID_1280265959" MODIFIED="1510899215767" TEXT="#&#x6ce8;&#x518c;device &quot;platform&quot;&#x5230;devices subsystem">
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510897646332" ID="ID_441591554" MODIFIED="1510899126488">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct device platform_bus = {.bus_id = &quot;platform&quot;, }
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510897640845" ID="ID_938776406" MODIFIED="1510899838729" TEXT="device_register(&amp;platform_bus)">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_938776406" ENDARROW="Default" ENDINCLINATION="1046;0;" ID="Arrow_ID_1862142423" SOURCE="ID_1587009431" STARTARROW="None" STARTINCLINATION="1046;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510897804634" ID="ID_1083192091" MODIFIED="1510898747864" TEXT="device_initialize(&amp;platform_bus)">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510898085453" ID="ID_635761318" MODIFIED="1510898635829">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>#&#21152;&#20837;&#21040;devices subsystem</b>
    </p>
    <p>
      dev-&gt;kobj.kset = &amp;devices_subsys.kset
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1510887265545" ID="ID_1364772810" MODIFIED="1510897843456" TEXT="device_add(&amp;platform_bus)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510898204374" ID="ID_946916775" MODIFIED="1510898204890" TEXT="dev-&gt;kobj.parent = &amp;parent-&gt;kobj"/>
<node COLOR="#111111" CREATED="1510898210693" ID="ID_510054548" MODIFIED="1510898218480" TEXT="kobject_add(&amp;dev-&gt;kobj)">
<node COLOR="#111111" CREATED="1510898249128" ID="ID_240002739" MODIFIED="1510898294832">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#21152;&#20837;kset&#30340;list&#20013;
    </p>
    <p>
      list_add_tail(&amp;kobj-&gt;entry, &amp;kobj-&gt;kset-&gt;list);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1510898357754" ID="ID_1052297701" MODIFIED="1510898363182" TEXT="bus_add_device(dev)">
<node COLOR="#111111" CREATED="1510898365457" ID="ID_1998335789" MODIFIED="1510898370469" TEXT="NO BUS"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1510899134312" ID="ID_195494233" MODIFIED="1510899215771">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#27880;&#20876;bus &quot;platform&quot;, &#21152;&#20837;&#21040;&quot;bus&quot; system
    </p>
    <p>
      #&#27880;&#20876;subsystem &quot;platform&quot;
    </p>
    <p>
      &#27880;&#20876;kset &quot;drivers&quot; and &quot;devices&quot;
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font BOLD="true" NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510898464733" ID="ID_1555728502" MODIFIED="1511143215858" TEXT="struct bus_type platform_bus_type = {&#xa;.name = &quot;platform&quot;,&#xa;.match = platform_match,&#xa;};">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1555728502" ENDARROW="Default" ENDINCLINATION="895;0;" ID="Arrow_ID_188028980" SOURCE="ID_1917481697" STARTARROW="None" STARTINCLINATION="895;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1555728502" ENDARROW="Default" ENDINCLINATION="1341;0;" ID="Arrow_ID_1693738705" SOURCE="ID_810440578" STARTARROW="None" STARTINCLINATION="1341;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510898513423" ID="ID_1941908884" MODIFIED="1510898549472">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int platform_match(struct device *dev, struct device_driver *drv)
    </p>
    <p>
      {
    </p>
    <p>
      struct platform_device *pdev;
    </p>
    <p>
      pdev = container_of(dev, struct platform_device, dev);
    </p>
    <p>
      return (strcmp(pdev-&gt;name, drv-&gt;name) == 0);
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510900807197" ID="ID_1515503974" MODIFIED="1510900807198" TEXT="">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510897601162" ID="ID_1063222432" MODIFIED="1510898458955" TEXT="bus_register(&amp;platform_bus_type);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510898667411" ID="ID_569659514" MODIFIED="1510898681846" TEXT="&#x8bbe;&#x7f6e;bus-&gt;subsys.kset.kobj&#x540d;&#x79f0;">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898682466" ID="ID_1661139259" MODIFIED="1510899396550">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # &#21152;&#20837;&#21040;bus subsystem
    </p>
    <p>
      subsys_set_kset(bus, bus_subsys);
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898811539" ID="ID_1913840026" MODIFIED="1510898845121" TEXT="subsystem_register(&amp;bus-&gt;subsys); &#x6ce8;&#x518c;platform subsystem">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898924099" ID="ID_1120492530" MODIFIED="1510898992153">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#33ffcc">#&#27880;&#20876;kset &quot;devices&quot; &#21040;bus-&gt;subsys</font>
    </p>
    <p>
      kobject_set_name(&amp;bus-&gt;devices.kobj, &quot;devices&quot;);
    </p>
    <p>
      bus-&gt;devices.subsys = &amp;bus-&gt;subsys;
    </p>
    <p>
      kset_register(&amp;bus-&gt;devices);
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898941704" ID="ID_1222552620" MODIFIED="1510899022644">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#33ffcc">#&#27880;&#20876;kset &quot;drivers&quot; &#21040;bus-&gt;subsys</font>
    </p>
    <p>
      kobject_set_name(&amp;bus-&gt;drivers.kobj, &quot;drivers&quot;);
    </p>
    <p>
      bus-&gt;drivers.subsys = &amp;bus-&gt;subsys;
    </p>
    <p>
      bus-&gt;drivers.ktype = &amp;ktype_driver;
    </p>
    <p>
      kset_register(&amp;bus-&gt;drivers);
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510899278230" ID="ID_104746386" MODIFIED="1510899511543" POSITION="right" TEXT="usb_init()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510899300491" ID="ID_245094446" MODIFIED="1510899310439" TEXT="# &#x6ce8;&#x518c;bus &quot;usb&quot;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510899318113" ID="ID_508439869" MODIFIED="1510899329910">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier New">struct bus_type usb_bus_type = { </font>
    </p>
    <p>
      <font face="Courier New">.name = &quot;usb&quot;, </font>
    </p>
    <p>
      <font face="Courier New">.match = usb_device_match, </font>
    </p>
    <p>
      <font face="Courier New">.uevent = usb_uevent, </font>
    </p>
    <p>
      <font face="Courier New">.pm = &amp;usb_bus_pm_ops, </font>
    </p>
    <p>
      <font face="Courier New">}; </font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510899384569" ID="ID_1270069783" MODIFIED="1510899406635" TEXT="&#x52a0;&#x5165;&#x5230;subsystem &quot;bus&quot;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510899372018" ID="ID_1394774870" MODIFIED="1510899379966" TEXT="&#x6ce8;&#x518c;subsystem &quot;usb&quot;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510899411941" ID="ID_1010427122" MODIFIED="1510899433448" TEXT="&#x6ce8;&#x518c;&quot;driver&quot;/&quot;device&quot; kset &#x5230; &quot;usb&quot; bus">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511142771943" ID="ID_1496814444" MODIFIED="1511142772903" TEXT="usb_hub_init()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511142813005" ID="ID_986673942" MODIFIED="1511142826709">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct usb_driver hub_driver = {
    </p>
    <p>
      .name = &quot;hub&quot;,
    </p>
    <p>
      .probe = hub_probe,
    </p>
    <p>
      .disconnect = hub_disconnect,
    </p>
    <p>
      .suspend = hub_suspend,
    </p>
    <p>
      .resume = hub_resume,
    </p>
    <p>
      .reset_resume = hub_reset_resume,
    </p>
    <p>
      .pre_reset = hub_pre_reset,
    </p>
    <p>
      .post_reset = hub_post_reset,
    </p>
    <p>
      #ifdef CONFIG_USB_ENABLE_REDUCE_CODE
    </p>
    <p>
      .ioctl = NULL,
    </p>
    <p>
      #else
    </p>
    <p>
      .ioctl = hub_ioctl,
    </p>
    <p>
      #endif
    </p>
    <p>
      .id_table = hub_id_table,
    </p>
    <p>
      .supports_autosuspend = 1,
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511142804109" ID="ID_736310300" MODIFIED="1511142805225" TEXT="usb_register(&amp;hub_driver)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511142786356" ID="ID_233789151" MODIFIED="1511142792393" TEXT="kthread_run(hub_thread, NULL, &quot;khubd&quot;);">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1511143452565" ID="ID_1216844027" MODIFIED="1511143506486" TEXT="usb_register_device_driver(&amp;usb_generic_driver)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511143464062" ID="ID_1528887191" MODIFIED="1511143469717">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct usb_device_driver usb_generic_driver = {
    </p>
    <p>
      .name = &quot;usb&quot;,
    </p>
    <p>
      .probe = generic_probe,
    </p>
    <p>
      .disconnect = generic_disconnect,
    </p>
    <p>
      #ifdef CONFIG_PM
    </p>
    <p>
      .suspend = generic_suspend,
    </p>
    <p>
      .resume = generic_resume,
    </p>
    <p>
      #endif
    </p>
    <p>
      .supports_autosuspend = 1,
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143538019" ID="ID_977493421" MODIFIED="1511143545338">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      new_udriver-&gt;drvwrap.for_devices = 1;
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143545391" ID="ID_1359185335" MODIFIED="1511143545394">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      new_udriver-&gt;drvwrap.driver.name = (char *) new_udriver-&gt;name;
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143545387" ID="ID_170495105" MODIFIED="1511143545390">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      new_udriver-&gt;drvwrap.driver.bus = &amp;usb_bus_type;
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143545383" ID="ID_536605793" MODIFIED="1511143545386">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      new_udriver-&gt;drvwrap.driver.probe = usb_probe_device;
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143545378" ID="ID_1559843867" MODIFIED="1511143545381">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      new_udriver-&gt;drvwrap.driver.remove = usb_unbind_device;
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143545355" ID="ID_1816753856" MODIFIED="1511143545376">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      new_udriver-&gt;drvwrap.driver.owner = owner;
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143545340" ID="ID_867218565" MODIFIED="1511143545347">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      retval = driver_register(&amp;new_udriver-&gt;drvwrap.driver);
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510899456576" ID="ID_1362517751" MODIFIED="1510899488913" POSITION="right" TEXT="ehci_hcd_init()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510899480245" ID="ID_1179169024" MODIFIED="1510899480889" TEXT="platform_device_register(&amp;usb_ehci_device);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510899532519" ID="ID_1638165230" MODIFIED="1510899746042">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Arial">static struct </font><font face="Arial" color="#6600cc">platform_device</font><font face="Arial">&#160;usb_ehci_device = { </font>
    </p>
    <p>
      <font face="Arial">.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;s2-ehci&quot;, </font>
    </p>
    <p>
      <font face="Arial">.id&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= 0, </font>
    </p>
    <p>
      <font face="Arial">.dev = { </font>
    </p>
    <p>
      <font face="Arial">.dma_mask&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &amp;ehci_dmamask, </font>
    </p>
    <p>
      <font face="Arial">.coherent_dma_mask&#160;&#160;&#160;&#160;&#160;&#160;= 0xffffffff, </font>
    </p>
    <p>
      <font face="Arial">}, </font>
    </p>
    <p>
      <font face="Arial">.num_resources&#160;&#160;= ARRAY_SIZE(usb_ehci_resources), </font>
    </p>
    <p>
      <font face="Arial">.resource&#160;&#160;&#160;&#160;&#160;&#160;&#160;= usb_ehci_resources, </font>
    </p>
    <p>
      <font face="Arial">}; </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510899641568" ID="ID_1880357391" MODIFIED="1510899654747" TEXT="device_initialize() #&#x52a0;&#x5165;&#x5230;device subsystem">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510899766936" ID="ID_719624866" MODIFIED="1510899776284" TEXT="platform_device_add(pdev)">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510899776751" ID="ID_1587009431" MODIFIED="1510899858323">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#33ffcc">#&#35774;&#32622;platform_device&#30340;parent&#20026;platform_bus </font>
    </p>
    <p>
      <font color="#33ffcc">#platform_bus&#26159;&#19968;&#20010;device</font>
    </p>
    <p>
      pdev-&gt;dev.parent = &amp;platform_bus;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_938776406" ENDARROW="Default" ENDINCLINATION="1046;0;" ID="Arrow_ID_1862142423" STARTARROW="None" STARTINCLINATION="1046;0;"/>
</node>
<node COLOR="#111111" CREATED="1510899796903" ID="ID_1917481697" MODIFIED="1510899898478">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#33ffcc">#&#35774;&#32622;bus&#20026;platform_bus_type</font>
    </p>
    <p>
      pdev-&gt;dev.bus = &amp;platform_bus_type;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1555728502" ENDARROW="Default" ENDINCLINATION="895;0;" ID="Arrow_ID_188028980" STARTARROW="None" STARTINCLINATION="895;0;"/>
</node>
<node COLOR="#111111" CREATED="1510899910255" ID="ID_1651070897" MODIFIED="1510899912819" TEXT="&#x8bbe;&#x7f6e;pdev-&gt;dev.bus_id"/>
<node COLOR="#111111" CREATED="1510899919141" ID="ID_1363265957" MODIFIED="1510900012962">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#33ffcc">#&#28155;&#21152;platform_device&#21040;device subsystem</font>
    </p>
    <p>
      device_add(&amp;pdev-&gt;dev)
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_805514450" ENDARROW="Default" ENDINCLINATION="636;0;" ID="Arrow_ID_796940948" STARTARROW="None" STARTINCLINATION="636;0;"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1510899998587" ID="ID_805514450" MODIFIED="1510900187978" TEXT="device_add(&amp;pdev-&gt;dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_805514450" ENDARROW="Default" ENDINCLINATION="636;0;" ID="Arrow_ID_796940948" SOURCE="ID_1363265957" STARTARROW="None" STARTINCLINATION="636;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510900025504" ID="ID_484452170" MODIFIED="1510900046994" TEXT="kobject_add(&amp;dev-&gt;kobj)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900031031" ID="ID_763922840" MODIFIED="1510900091773" TEXT="bus_add_device(dev)">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510900062915" ID="ID_986663383" MODIFIED="1510900063543" TEXT="bus &lt;platform&gt; add device &lt;s2-ehci0&gt;"/>
<node COLOR="#111111" CREATED="1510900106981" ID="ID_959809399" MODIFIED="1510900170916">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#33ffcc">#&#28155;&#21152;&#21040;platform_bus&#30340;devices list&#20013;</font>
    </p>
    <p>
      list_add_tail(&amp;dev-&gt;bus_list, &amp;dev-&gt;bus-&gt;devices.list);
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1510900161742" ID="ID_1697268996" MODIFIED="1510900190364" TEXT="device_attach(dev);">
<arrowlink DESTINATION="ID_1465642676" ENDARROW="Default" ENDINCLINATION="336;0;" ID="Arrow_ID_1697441635" STARTARROW="None" STARTINCLINATION="336;0;"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1510900185884" ID="ID_1465642676" MODIFIED="1510900190364" TEXT="device_attach(dev);">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1465642676" ENDARROW="Default" ENDINCLINATION="336;0;" ID="Arrow_ID_1697441635" SOURCE="ID_1697268996" STARTARROW="None" STARTINCLINATION="336;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510900219439" ID="ID_1678625234" MODIFIED="1510900230714" TEXT="dev: s2-ehci0, bus: platform, match:0x8012f52c">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900283647" ID="ID_1861403094" MODIFIED="1510901424711" TEXT="#&#x5bf9;&#x6bcf;&#x4e00;&#x4e2a;driver&#x548c;&#x5f53;&#x524d;device&#x8c03;&#x7528;driver_probe_device()">
<arrowlink DESTINATION="ID_1755704607" ENDARROW="Default" ENDINCLINATION="657;0;" ID="Arrow_ID_528529560" STARTARROW="None" STARTINCLINATION="657;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510899490035" ID="ID_11255789" MODIFIED="1510899506302" TEXT="platform_driver_register(&amp;ehci_hcd_driver);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510899590759" ID="ID_1866933907" MODIFIED="1510899754873">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Arial">static struct </font><font face="Arial" color="#6600cc">platform_driver</font><font face="Arial">&#160;ehci_hcd_driver = { </font>
    </p>
    <p>
      <font face="Arial">.probe = ehci_hcd_drv_probe, </font>
    </p>
    <p>
      <font face="Arial">.remove = ehci_hcd_drv_remove, </font>
    </p>
    <p>
      <font face="Arial">.shutdown = usb_hcd_platform_shutdown, </font>
    </p>
    <p>
      <font face="Arial">.driver = { </font>
    </p>
    <p>
      <font face="Arial">.name = &quot;s2-ehci&quot;, </font>
    </p>
    <p>
      <font face="Arial">.owner = THIS_MODULE, </font>
    </p>
    <p>
      <font face="Arial">.pm = USB_EHCI_PMOPS, </font>
    </p>
    <p>
      <font face="Arial">} </font>
    </p>
    <p>
      <font face="Arial">};</font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900586601" ID="ID_810440578" MODIFIED="1510900667042">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#35774;&#32622;driver&#30340;bus&#20026;bus &quot;platform&quot;
    </p>
    <p>
      drv-&gt;driver.bus = &amp;platform_bus_type;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1555728502" ENDARROW="Default" ENDINCLINATION="1341;0;" ID="Arrow_ID_1693738705" STARTARROW="None" STARTINCLINATION="1341;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900835809" ID="ID_35018049" MODIFIED="1510900842629" TEXT="struct platform_driver *drv=&amp;ehci_hcd_driver">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900812932" ID="ID_1572220193" MODIFIED="1510900908844" TEXT="drv-&gt;driver.probe=platform_drv_probe;">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900857127" ID="ID_510068382" MODIFIED="1510900911828" TEXT="drv-&gt;driver.remove=platform_drv_remove">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900903689" ID="ID_1787195483" MODIFIED="1510900904181" TEXT="drv-&gt;driver.shutdown = platform_drv_shutdown;">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900922526" ID="ID_490273941" MODIFIED="1510901024970" TEXT="driver_register(&amp;drv-&gt;driver);">
<arrowlink DESTINATION="ID_581453737" ENDARROW="Default" ENDINCLINATION="252;0;" ID="Arrow_ID_1946601653" STARTARROW="None" STARTINCLINATION="252;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510900947091" FOLDED="true" ID="ID_581453737" MODIFIED="1510901051468" TEXT="driver_register(struct device_driver *drv)">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_581453737" ENDARROW="Default" ENDINCLINATION="252;0;" ID="Arrow_ID_1946601653" SOURCE="ID_490273941" STARTARROW="None" STARTINCLINATION="252;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510900963097" ID="ID_867314262" MODIFIED="1510900986006">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#21021;&#22987;&#21270;drv&#30340;device&#38142;&#34920;
    </p>
    <p>
      INIT_LIST_HEAD(&amp;drv-&gt;devices);
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900992590" ID="ID_514649882" MODIFIED="1510900993106" TEXT="bus_add_driver(drv);">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510901034064" ID="ID_645476782" MODIFIED="1510901034445" TEXT="bus_add_driver(struct device_driver *drv)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510901052806" ID="ID_753950075" MODIFIED="1510901053379" TEXT=" bus &lt;platform&gt; add driver &lt;s2-ehci&gt;">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510901076867" ID="ID_806198032" MODIFIED="1510901077503" TEXT="drv-&gt;kobj.kset = &amp;bus-&gt;drivers;">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510901117238" ID="ID_797144751" MODIFIED="1510901117754" TEXT="kobject_register(&amp;drv-&gt;kobj)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510901123645" ID="ID_1617584713" MODIFIED="1510901283522" TEXT="driver_attach(drv);">
<arrowlink DESTINATION="ID_1491278053" ENDARROW="Default" ENDINCLINATION="177;0;" ID="Arrow_ID_1715060924" STARTARROW="None" STARTINCLINATION="177;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510901135668" ID="ID_1491278053" MODIFIED="1510901283521" TEXT="driver_attach(struct device_driver *drv)">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1491278053" ENDARROW="Default" ENDINCLINATION="177;0;" ID="Arrow_ID_1715060924" SOURCE="ID_1617584713" STARTARROW="None" STARTINCLINATION="177;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510901139435" ID="ID_349905802" MODIFIED="1510901241893">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#31867;&#20284;device_attach(),
    </p>
    <p>
      #&#23545;&#24403;&#21069;bus-&gt;devices.list&#20013;&#25152;&#26377;&#30340;device&#25191;&#34892;drive_probe_device
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510901264683" ID="ID_1102713361" MODIFIED="1510901392684" TEXT="driver_probe_device(drv, dev)">
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1755704607" ENDARROW="Default" ENDINCLINATION="574;0;" ID="Arrow_ID_1924868607" STARTARROW="None" STARTINCLINATION="574;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510900280256" ID="ID_1755704607" MODIFIED="1510901424711" TEXT="driver_probe_device(drv,dev)">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1755704607" ENDARROW="Default" ENDINCLINATION="657;0;" ID="Arrow_ID_528529560" SOURCE="ID_1861403094" STARTARROW="None" STARTINCLINATION="657;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1755704607" ENDARROW="Default" ENDINCLINATION="574;0;" ID="Arrow_ID_1924868607" SOURCE="ID_1102713361" STARTARROW="None" STARTINCLINATION="574;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510900355014" ID="ID_1204570315" MODIFIED="1510901412391">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26816;&#26597;&#26159;&#21542;match drv-&gt;bus-&gt;match(dev,drv)
    </p>
    <p>
      &#22914;&#26524;match&#32487;&#32493;&#25191;&#34892;
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900458215" ID="ID_1484983851" MODIFIED="1510901412391">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      dev-&gt;driver=drv;
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900458212" ID="ID_1808505225" MODIFIED="1510901529688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      drv-&gt;probe(dev); #&#35843;&#29992;driver&#30340;probe&#20989;&#25968;ehci_hcd_drv_probe()
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510900458208" ID="ID_1194659768" MODIFIED="1510901538817">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      device_bind_driver(); #&#23558;device&#21152;&#20837;&#21040;drv-&gt;devices&#21015;&#34920;&#20013;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1856221400" ENDARROW="Default" ENDINCLINATION="582;0;" ID="Arrow_ID_167142149" STARTARROW="None" STARTINCLINATION="582;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510901535329" ID="ID_1856221400" MODIFIED="1510901538817" POSITION="right" TEXT="ehci_hcd_drv_probe(pdev) ">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1856221400" ENDARROW="Default" ENDINCLINATION="582;0;" ID="Arrow_ID_167142149" SOURCE="ID_1194659768" STARTARROW="None" STARTINCLINATION="582;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510901586819" ID="ID_1830160908" MODIFIED="1510901663419">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static const struct hc_driver ehci_hc_driver = {
    </p>
    <p>
      .description = hcd_name, //&quot;ehci_hcd&quot;
    </p>
    <p>
      .product_desc = &quot;S2 EHCI Host Controller&quot;,
    </p>
    <p>
      .hcd_priv_size = sizeof(struct ehci_hcd),
    </p>
    <p>
      .irq = ehci_irq,
    </p>
    <p>
      .flags = HCD_USB2 | HCD_MEMORY,
    </p>
    <p>
      .reset = drv_ehci_setup,
    </p>
    <p>
      .start = ehci_run,
    </p>
    <p>
      .stop = ehci_stop,
    </p>
    <p>
      .shutdown = ehci_shutdown,
    </p>
    <p>
      .urb_enqueue = ehci_urb_enqueue,
    </p>
    <p>
      .urb_dequeue = ehci_urb_dequeue,
    </p>
    <p>
      .endpoint_disable = ehci_endpoint_disable,
    </p>
    <p>
      .endpoint_reset = ehci_endpoint_reset,
    </p>
    <p>
      .get_frame_number = ehci_get_frame,
    </p>
    <p>
      .hub_status_data = ehci_hub_status_data,
    </p>
    <p>
      .hub_control = ehci_hub_control,
    </p>
    <p>
      .bus_suspend = ehci_bus_suspend,
    </p>
    <p>
      .bus_resume = ehci_bus_resume,
    </p>
    <p>
      .relinquish_port = ehci_relinquish_port,
    </p>
    <p>
      .port_handed_over = ehci_port_handed_over,
    </p>
    <p>
      .clear_tt_buffer_complete = ehci_clear_tt_buffer_complete,
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510902636438" ID="ID_387044809" MODIFIED="1510902637106" TEXT="struct usb_hcd *hcd;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510901551575" ID="ID_1717085387" MODIFIED="1510901562402" TEXT="hcd = usb_create_hcd(&amp;ehci_hc_driver, &amp;pdev-&gt;dev, &quot;s2-ehci-hcd&quot;);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510902558408" ID="ID_270934726" MODIFIED="1510902612314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#22810;&#20998;&#37197;&#30340;&#31354;&#38388;&#20174;&#26469;&#23384;&#25918;ehci_hcd
    </p>
    <p>
      kzalloc(sizeof(*hcd) + driver-&gt;hcd_priv_size)
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510902649796" ID="ID_143718778" MODIFIED="1510902652593" TEXT="hcd-&gt;driver = driver">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510902672305" ID="ID_106860106" MODIFIED="1510902680565" TEXT="usb_bus_init(hcd-&gt;bus)">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510901751310" ID="ID_280596137" MODIFIED="1510901764585" TEXT="drv_start_ehc(pdev); #&#x786c;&#x4ef6;&#x521d;&#x59cb;&#x5316;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510904277746" ID="ID_1703943228" MODIFIED="1510904286634" TEXT="ehci = hcd_to_ehci(hcd); //&#x4ece;hcd&#x83b7;&#x53d6;ehci&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510904296308" ID="ID_574303325" MODIFIED="1510904307631" TEXT="ehci-&gt;regs = ...# &#x521d;&#x59cb;&#x5316;ehci base addr">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510904317522" ID="ID_1096287364" MODIFIED="1510904346900" TEXT="usb_add_hcd(hcd, pdev-&gt;resource[1].start, IRQF_DISABLED | IRQF_SHARED);">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1588756055" ENDARROW="Default" ENDINCLINATION="519;0;" ID="Arrow_ID_8454809" STARTARROW="None" STARTINCLINATION="519;0;"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510904324633" ID="ID_1588756055" MODIFIED="1510904346899" POSITION="right" TEXT="usb_add_hcd(hcd, irqnum, irqflags)">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1588756055" ENDARROW="Default" ENDINCLINATION="519;0;" ID="Arrow_ID_8454809" SOURCE="ID_1096287364" STARTARROW="None" STARTINCLINATION="519;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510904354325" ID="ID_870615313" MODIFIED="1510904365656" TEXT="hcd_buffer_create(); #&#x5206;&#x914d;DMA buffer pool">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510904494651" ID="ID_852146818" MODIFIED="1510904501831" TEXT="[I]hcd_buffer_create()[71] pool:buffer-32, size:32&#xa;[I]hcd_buffer_create()[71] pool:buffer-128, size:128&#xa;[I]hcd_buffer_create()[71] pool:buffer-512, size:512&#xa;[I]hcd_buffer_create()[71] pool:buffer-2048, size:2048">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510904390057" ID="ID_568434349" MODIFIED="1510904516697">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #hcd-&gt;self&#26159;usb_bus&#27880;&#20876;
    </p>
    <p>
      usb_register_bus(&amp;hcd-&gt;self)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510904529879" ID="ID_989619805" MODIFIED="1510904530683" TEXT="Register usb bus s2-ehci-hcd as bus &lt;1&gt;">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510904544981" ID="ID_1498210759" MODIFIED="1510904557922">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # &#20998;&#37197;Roothub
    </p>
    <p>
      rhdev = usb_alloc_dev(NULL, &amp;hcd-&gt;self, 0)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510904567930" ID="ID_1937110025" MODIFIED="1510904568519" TEXT="Alloc RootHub: usb1">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510904603173" ID="ID_237320939" MODIFIED="1510904603682" TEXT="hcd-&gt;driver-&gt;reset(hcd)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510904645320" ID="ID_1076162247" MODIFIED="1510904658158">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [V]drv_ehci_setup()[585] CALLED
    </p>
    <p>
      [V]ehci_init()[543] CALLED
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510904677612" ID="ID_697735650" MODIFIED="1510904783324">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # &#27880;&#20876;&#20013;&#26029;
    </p>
    <p>
      request_irq(irqnum, &amp;usb_hcd_irq, irqflags,hcd-&gt;irq_descr, hcd)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510904712344" ID="ID_1186569515" MODIFIED="1510904712980" TEXT="[I]request_irq()[78] register irq &lt;39&gt; for dev &lt;ehci_hcd:usb1&gt; handler&lt;0x8012b4fc&gt; ">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510904771161" ID="ID_625772089" MODIFIED="1510904771161" TEXT="hcd-&gt;driver-&gt;start(hcd)">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510904772096" ID="ID_796342142" MODIFIED="1510904772924" TEXT="hcd-&gt;driver-&gt;start(hcd)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510904788446" ID="ID_101989515" MODIFIED="1510905269914" TEXT="ehci_run()">
<arrowlink DESTINATION="ID_274195339" ENDARROW="Default" ENDINCLINATION="53;0;" ID="Arrow_ID_1500673133" STARTARROW="None" STARTINCLINATION="53;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510905263442" ID="ID_274195339" MODIFIED="1510905815473" TEXT="ehci_run (struct usb_hcd *hcd)">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_274195339" ENDARROW="Default" ENDINCLINATION="53;0;" ID="Arrow_ID_1500673133" SOURCE="ID_101989515" STARTARROW="None" STARTINCLINATION="53;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510905384883" ID="ID_510857364" MODIFIED="1510905387087" TEXT="ehci_reset()">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510905396417" ID="ID_142794982" MODIFIED="1510905397142" TEXT="CMD_RESET"/>
<node COLOR="#111111" CREATED="1510905405081" ID="ID_962367" MODIFIED="1510905409564" TEXT="handshake()"/>
</node>
<node COLOR="#990000" CREATED="1510905436708" ID="ID_1565433019" MODIFIED="1510905438888" TEXT="CMD_RUN">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510905827907" ID="ID_1754027882" MODIFIED="1510905837174" TEXT="usb_hcd_irq()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510905839218" ID="ID_428228871" MODIFIED="1510905864037">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #Port Change Detect(PCD)
    </p>
    <p>
      ehci_irq()
    </p>
  </body>
</html>
</richcontent>
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510905865783" ID="ID_1909980226" MODIFIED="1510905872962" TEXT="usb_hcd_poll_rh_status()">
<node COLOR="#111111" CREATED="1510905881788" ID="ID_1022872873" MODIFIED="1510905886600" TEXT="!hcd-&gt;rh_registered, exit"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1510905906009" ID="ID_1402893090" MODIFIED="1511143601328" TEXT="register_root_hub(hcd)">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_1052723017" ENDARROW="Default" ENDINCLINATION="311;0;" ID="Arrow_ID_539176005" STARTARROW="None" STARTINCLINATION="311;0;"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511143589231" ID="ID_38399114" MODIFIED="1511143590115" TEXT="&#x9;if (hcd-&gt;uses_new_polling &amp;&amp; hcd-&gt;poll_rh) &#x9;&#x9;usb_hcd_poll_rh_status(hcd);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511143597567" ID="ID_1052723017" MODIFIED="1511143601328" POSITION="right" TEXT="register_root_hub(hcd) ">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1052723017" ENDARROW="Default" ENDINCLINATION="311;0;" ID="Arrow_ID_539176005" SOURCE="ID_1402893090" STARTARROW="None" STARTINCLINATION="311;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511143615658" ID="ID_315549091" MODIFIED="1511143616054" TEXT="usb_set_device_state(usb_dev, USB_STATE_ADDRESS);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511143626330" ID="ID_1253521587" MODIFIED="1511143638059">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#33719;&#21462;roothub&#30340;device desc
    </p>
    <p>
      usb_get_device_descriptor(usb_dev, USB_DT_DEVICE_SIZE)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511143648764" ID="ID_305282317" MODIFIED="1511143658991">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # &#28155;&#21152;roothub device
    </p>
    <p>
      usb_new_device (usb_dev)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511143668662" ID="ID_591010494" MODIFIED="1511143669281" TEXT="hcd-&gt;rh_registered = 1;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511143691686" ID="ID_1832267948" MODIFIED="1511143692051" POSITION="right" TEXT="usb_new_device(struct usb_device *udev)">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511143706096" ID="ID_608098932" MODIFIED="1511143744656">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#35835;&#21462;&#35774;&#22791;Configuration Descriptor
    </p>
    <p>
      usb_enumerate_device(udev)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511143761428" ID="ID_1304391079" MODIFIED="1511143832113">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#28155;&#21152;usb device
    </p>
    <p>
      device_add(&amp;udev-&gt;dev)
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511143853666" ID="ID_648546141" MODIFIED="1511143865487" TEXT="kobject_add(&amp;dev-&gt;kobj)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143935368" ID="ID_1725944702" MODIFIED="1511143958835" TEXT="bus_add_device(dev)">
<arrowlink DESTINATION="ID_291231178" ENDARROW="Default" ENDINCLINATION="556;0;" ID="Arrow_ID_998734826" STARTARROW="None" STARTINCLINATION="556;0;"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1511143767484" ID="ID_1700707851" MODIFIED="1511143767976" TEXT="usb_create_ep_devs(&amp;udev-&gt;dev, &amp;udev-&gt;ep0, udev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511143842122" ID="ID_291231178" MODIFIED="1511143958834" POSITION="right" TEXT="bus_add_device(dev)">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_291231178" ENDARROW="Default" ENDINCLINATION="556;0;" ID="Arrow_ID_998734826" SOURCE="ID_1725944702" STARTARROW="None" STARTINCLINATION="556;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511143879524" ID="ID_1841402817" MODIFIED="1511143950859" TEXT="list_add_tail(&amp;dev-&gt;bus_list, &amp;dev-&gt;bus-&gt;devices.list);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511143884703" ID="ID_351043911" MODIFIED="1511143950859" TEXT="device_attach(dev);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511143897789" ID="ID_530865099" MODIFIED="1511143950859" TEXT="list_for_each(entry, &amp;bus-&gt;drivers.list)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511143903734" ID="ID_925570495" MODIFIED="1511144004474" TEXT="    driver_probe_device(drv, dev)">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1511143972187" ID="ID_1116149946" MODIFIED="1511144708171">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Courier New"><b>// Call usb_device_match</b></font>
    </p>
    <p>
      if (drv-&gt;bus-&gt;match(dev, drv))
    </p>
  </body>
</html>
</richcontent>
</node>
<node COLOR="#111111" CREATED="1511143984428" ID="ID_963476169" MODIFIED="1511144749909">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font face="Century">//Call generic_probe()</font></b>
    </p>
    <p>
      <font face="Century">drv-&gt;probe(dev)</font>
    </p>
  </body>
</html>
</richcontent>
<arrowlink DESTINATION="ID_1038924580" ENDARROW="Default" ENDINCLINATION="508;0;" ID="Arrow_ID_1268446718" STARTARROW="None" STARTINCLINATION="508;0;"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511144741172" ID="ID_1038924580" MODIFIED="1511144749908" POSITION="right" TEXT="generic_probe(usb_device *udev)">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1038924580" ENDARROW="Default" ENDINCLINATION="508;0;" ID="Arrow_ID_1268446718" SOURCE="ID_963476169" STARTARROW="None" STARTINCLINATION="508;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511144799417" ID="ID_928185692" MODIFIED="1511144822110" TEXT="c = usb_choose_configuration(udev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511144817353" ID="ID_1383358102" MODIFIED="1511144818430" TEXT="usb_set_configuration(udev, c)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511145035873" ID="ID_1804027821" MODIFIED="1511145048615" TEXT="struct usb_host_config *cp = best_config">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511145052691" ID="ID_295798749" MODIFIED="1511145089194" TEXT="Allocate(cp-&gt;desc.bNumInterfaces * sizeof(struct usb_interface))">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511145493491" ID="ID_726021604" MODIFIED="1511145499577" TEXT="#Allocate bandwidth">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511145506020" ID="ID_365306387" MODIFIED="1511145513225" TEXT="USB_REQ_SET_CONFIGURATION">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511145611588" ID="ID_1203407172" MODIFIED="1511145612609" TEXT="usb_set_device_state(dev, USB_STATE_CONFIGURED);">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511145618765" ID="ID_722605435" MODIFIED="1511146740836" TEXT="foreach (interfaces)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511146741663" ID="ID_770524449" MODIFIED="1511146743364" TEXT="    initialize_interface(intf)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511146751272" ID="ID_968606574" MODIFIED="1511146752845" TEXT="    device_add(&amp;intf-&gt;dev)">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1511146764529" ID="ID_319296852" MODIFIED="1511146765061" TEXT="usb_probe_interface"/>
<node COLOR="#111111" CREATED="1511146776538" ID="ID_823913801" MODIFIED="1511146777102" TEXT="driver-&gt;probe(intf, id)"/>
<node COLOR="#111111" CREATED="1511146786162" ID="ID_1601740611" MODIFIED="1511146799014" TEXT="hub_probe()">
<arrowlink DESTINATION="ID_302186106" ENDARROW="Default" ENDINCLINATION="781;0;" ID="Arrow_ID_1175640807" STARTARROW="None" STARTINCLINATION="781;0;"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1511144808817" ID="ID_1551754263" MODIFIED="1511144811302" TEXT="usb_notify_add_device(udev)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511146792179" ID="ID_302186106" MODIFIED="1511146799013" POSITION="right" TEXT="hub_probe">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_302186106" ENDARROW="Default" ENDINCLINATION="781;0;" ID="Arrow_ID_1175640807" SOURCE="ID_1601740611" STARTARROW="None" STARTINCLINATION="781;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511146816005" ID="ID_1833893725" MODIFIED="1511146816497" TEXT="hub = kzalloc(sizeof(*hub), GFP_KERNEL);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511146825965" ID="ID_1170707598" MODIFIED="1511146826450" TEXT="INIT_DELAYED_WORK(&amp;hub-&gt;init_work, NULL);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511146834798" ID="ID_484244695" MODIFIED="1511146835387" TEXT="hub_configure(hub, endpoint)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511147004747" ID="ID_382664285" MODIFIED="1511147030017" TEXT="usb_fill_int_urb(hub-&gt;urb, hdev, pipe, *hub-&gt;buffer, maxp, hub_irq,hub, endpoint-&gt;bInterval)">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511147009043" ID="ID_1399730700" MODIFIED="1511147041297" TEXT="hub_activate(hub, HUB_INIT);">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1511165776303" ID="ID_70575398" MODIFIED="1511165837648" TEXT="schedule_delayed_work(hub_init_func2)"/>
<node COLOR="#111111" CREATED="1511165841940" ID="ID_1560320009" MODIFIED="1511245796500" TEXT="hub_init_func2()">
<arrowlink DESTINATION="ID_809014231" ENDARROW="Default" ENDINCLINATION="455;0;" ID="Arrow_ID_1859420601" STARTARROW="None" STARTINCLINATION="455;0;"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1511243613938" ID="ID_809014231" MODIFIED="1511245796499" TEXT="hub_init_func2()">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_809014231" ENDARROW="Default" ENDINCLINATION="455;0;" ID="Arrow_ID_1859420601" SOURCE="ID_1560320009" STARTARROW="None" STARTINCLINATION="455;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511243629955" ID="ID_43134321" MODIFIED="1511243630744" TEXT="hub_activate(hub, HUB_INIT2);">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1511244353793" ID="ID_999036437" MODIFIED="1511244356605" TEXT="hub_port_status()">
<node COLOR="#111111" CREATED="1511244369586" ID="ID_442137358" MODIFIED="1511245719876" TEXT="get_port_status()">
<node COLOR="#111111" CREATED="1511244914770" ID="ID_593405982" MODIFIED="1511245046920" TEXT="usb_control_msg(USB_REQ_GET_STATUS)"/>
</node>
</node>
<node COLOR="#111111" CREATED="1511245726431" ID="ID_968350358" MODIFIED="1511245734892" TEXT="check port status"/>
<node COLOR="#111111" CREATED="1511245765224" ID="ID_1165155645" MODIFIED="1511245766549" TEXT="if (need_debounce_delay)"/>
<node COLOR="#111111" CREATED="1511165776303" ID="ID_1011434633" MODIFIED="1511246035397" TEXT="     schedule_delayed_work(hub_init_func3)">
<arrowlink DESTINATION="ID_1655144140" ENDARROW="Default" ENDINCLINATION="518;0;" ID="Arrow_ID_742037318" STARTARROW="None" STARTINCLINATION="518;0;"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1511245797851" ID="ID_1655144140" MODIFIED="1511246035396" TEXT="hub_init_func3()">
<edge STYLE="bezier" WIDTH="thin"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1655144140" ENDARROW="Default" ENDINCLINATION="518;0;" ID="Arrow_ID_742037318" SOURCE="ID_1011434633" STARTARROW="None" STARTINCLINATION="518;0;"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511245808260" ID="ID_1431682332" MODIFIED="1511245817145" TEXT="usb_submit_urb(hub-&gt;urb, GFP_NOIO);">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511245877944" ID="ID_817528103" MODIFIED="1511245880181" TEXT="kick_khubd()">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1511246691428" ID="ID_1477226353" MODIFIED="1511246710340">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      //&#28155;&#21152;hub&#21040;hub_event_list&#20013;
    </p>
    <p>
      list_add_tail(&amp;hub-&gt;event_list, &amp;hub_event_list);
    </p>
  </body>
</html>
</richcontent>
</node>
<node COLOR="#111111" CREATED="1511245993577" ID="ID_1533388710" MODIFIED="1511246726260" TEXT="&#x5524;&#x9192;hub_thread&#x7ebf;&#x7a0b;">
<arrowlink DESTINATION="ID_1235357084" ENDARROW="Default" ENDINCLINATION="400;0;" ID="Arrow_ID_92358530" STARTARROW="None" STARTINCLINATION="400;0;"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511246024219" ID="ID_1235357084" MODIFIED="1511246031940" POSITION="right" TEXT="hub_thread()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1235357084" ENDARROW="Default" ENDINCLINATION="400;0;" ID="Arrow_ID_92358530" SOURCE="ID_1533388710" STARTARROW="None" STARTINCLINATION="400;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511246055605" ID="ID_1421377956" MODIFIED="1511246068315" TEXT="while (1){">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511246069031" ID="ID_562669398" MODIFIED="1511246074219" TEXT="    wait_events()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511246074559" ID="ID_661906612" MODIFIED="1511246095009" TEXT="    hub_events()">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_92909348" ENDARROW="Default" ENDINCLINATION="167;0;" ID="Arrow_ID_1068438880" STARTARROW="None" STARTINCLINATION="167;0;"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511246078279" ID="ID_43177627" MODIFIED="1511246079212" TEXT="}">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511246091104" ID="ID_92909348" MODIFIED="1511246095008" POSITION="right" TEXT="hub_events()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_92909348" ENDARROW="Default" ENDINCLINATION="167;0;" ID="Arrow_ID_1068438880" SOURCE="ID_661906612" STARTARROW="None" STARTINCLINATION="167;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511247170576" ID="ID_1797205089" MODIFIED="1511247201281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #&#21462;&#20986;&#25346;&#22312;event_list&#19978;&#30340;hub
    </p>
    <p>
      hub = list_entry(tmp, struct usb_hub, event_list);
    </p>
    <p>
      list_del_init(tmp);
    </p>
  </body>
</html>
</richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511247210627" ID="ID_1303131490" MODIFIED="1511247211695" TEXT="for (i = 1; i &lt;= hub-&gt;descriptor-&gt;bNbrPorts; i++) {">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511247229339" ID="ID_1136000266" MODIFIED="1511247231009" TEXT="    connect_change = test_bit(i, hub-&gt;change_bits);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511247239517" ID="ID_900295667" MODIFIED="1511247942257" TEXT="    if (connect_change) hub_port_connect_change()">
<edge STYLE="bezier" WIDTH="thin"/>
<arrowlink DESTINATION="ID_95075000" ENDARROW="Default" ENDINCLINATION="310;0;" ID="Arrow_ID_1662730470" STARTARROW="None" STARTINCLINATION="310;0;"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511247227124" ID="ID_837561227" MODIFIED="1511247228224" TEXT="}">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1511247932920" ID="ID_95075000" MODIFIED="1511247942257" POSITION="right" TEXT="hub_port_connect_change()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_95075000" ENDARROW="Default" ENDINCLINATION="310;0;" ID="Arrow_ID_1662730470" SOURCE="ID_900295667" STARTARROW="None" STARTINCLINATION="310;0;"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1511247945881" ID="ID_1588820992" MODIFIED="1511247955638" TEXT="show portspeed(portstatus)">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511247982044" ID="ID_1404315578" MODIFIED="1511247983608" TEXT="usb_alloc_dev()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511247995174" ID="ID_301564454" MODIFIED="1511247995497" TEXT="usb_set_device_state(udev, USB_STATE_POWERED);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511248006637" ID="ID_775044788" MODIFIED="1511248006970" TEXT="choose_address(udev);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1511248013910" ID="ID_974809780" MODIFIED="1511248014755" TEXT="hub_port_init()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1511248090036" ID="ID_1843880066" MODIFIED="1511248091192" TEXT="hub_port_reset()">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1511248232798" ID="ID_418868212" MODIFIED="1511248233642" TEXT="ehci_chirp_voltage_low(hcd);"/>
<node COLOR="#111111" CREATED="1511248103148" ID="ID_794243854" MODIFIED="1511248104017" TEXT="USB_REQ_SET_FEATURE"/>
<node COLOR="#111111" CREATED="1511248330381" ID="ID_803273268" MODIFIED="1511248332106" TEXT="hub_port_wait_reset()">
<node COLOR="#111111" CREATED="1511248706413" ID="ID_1781616241" MODIFIED="1511248722343" TEXT="while (!hub_port_status(...))"/>
<node COLOR="#111111" CREATED="1511248723082" ID="ID_697517994" MODIFIED="1511248733631" TEXT="    get port status"/>
<node COLOR="#111111" CREATED="1511248736556" ID="ID_172030177" MODIFIED="1511248741976" TEXT="    sleep"/>
</node>
<node COLOR="#111111" CREATED="1511249056530" ID="ID_430963303" MODIFIED="1511249057103" TEXT="USB_PORT_FEAT_C_RESET"/>
<node COLOR="#111111" CREATED="1511249063331" ID="ID_132940886" MODIFIED="1511249067920" TEXT="usb_set_device_state(USB_STATE_DEFAULT)"/>
</node>
<node COLOR="#990000" CREATED="1511249220295" ID="ID_1980566443" MODIFIED="1511249328755" TEXT="GET_DESCRIPTOR">
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1511249262986" ID="ID_817902895" MODIFIED="1511249328756" TEXT="hub_set_address()">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1511249264802" ID="ID_870100258" MODIFIED="1511249281208" TEXT="USB_REQ_SET_ADDRESS"/>
</node>
<node COLOR="#990000" CREATED="1511250570154" ID="ID_8991914" MODIFIED="1511250578215" TEXT="usb_get_device_descriptor()">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510708868693" ID="ID_1993363776" MODIFIED="1510888032184" POSITION="left" TEXT="SysFS">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#00b439" CREATED="1510708902569" ID="ID_943911519" MODIFIED="1510888032185" TEXT="struct kset">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510714181006" ID="ID_1956635666" MODIFIED="1510888032185">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc"># &#20855;&#26377;&#30456;&#21516;&#31867;&#22411;&#30340;kobject&#30340;&#38598;&#21512;</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708966481" ID="ID_1965548645" MODIFIED="1510888032185" TEXT="struct subsystem *subsys; &#x6240;&#x5728;subsystem&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708988952" ID="ID_1280433523" MODIFIED="1510888032186" TEXT="struct kobj_type *ktype; kset&#x5bf9;&#x8c61;&#x7c7b;&#x578b;&#x63cf;&#x8ff0;&#x7b26;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708988949" ID="ID_1841405342" MODIFIED="1510888032186" TEXT="struct list_head list;&#x94fe;&#x63a5;kset&#x4e2d;&#x6240;&#x6709;kobject&#x7684;&#x94fe;&#x8868;&#x5934;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708988948" ID="ID_1758052820" MODIFIED="1510888032186" TEXT="struct kobject kobj; &#x5d4c;&#x5165;&#x7684;kobj,&#x6240;&#x6709;&#x5c5e;&#x4e8e;kset&#x7684;kobject&#x7684;parent&#x6307;&#x5411;kobj">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510714147410" ID="ID_901962616" MODIFIED="1510888032187" TEXT="struct kset_hotplug_ops * hotplug_ops; &#x6307;&#x5411;&#x70ed;&#x63d2;&#x62d4;&#x64cd;&#x4f5c;&#x8868;&#x7684;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510708899129" ID="ID_921192648" MODIFIED="1510888032189" TEXT="struct subsystem">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510714369830" ID="ID_1310840591" MODIFIED="1510888032190">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc"># &#19968;&#31995;&#21015;kset&#30340;&#38598;&#21512;,&#25551;&#36848;&#31995;&#32479;&#20013;&#26576;&#19968;&#20010;&#35774;&#22791;&#23376;&#31995;&#32479;</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708921719" ID="ID_426215511" MODIFIED="1510888032190" TEXT="struct kset kset;  &#x5185;&#x5d4c;&#x7684;kset&#x5bf9;&#x8c61;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708928494" ID="ID_756933118" MODIFIED="1510888032190" TEXT="struct rw_semaphore rwsem; &#x4e92;&#x65a5;&#x8bbf;&#x95ee;&#x4fe1;&#x53f7;&#x91cf;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510888075875" ID="ID_1209052316" MODIFIED="1510888155959" TEXT="decl_subsys">
<font NAME="SimHei" SIZE="14"/>
<node COLOR="#111111" CREATED="1510888086605" ID="ID_1931239813" MODIFIED="1510888106612">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #define decl_subsys(_name,_type,_hotplug_ops) \
    </p>
    <p>
      struct subsystem _name##_subsys = { \
    </p>
    <p>
      .kset = { \
    </p>
    <p>
      .kobj = { .name = __stringify(_name) }, \
    </p>
    <p>
      .ktype = _type, \
    </p>
    <p>
      } \
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1510651509792" ID="ID_646525568" MODIFIED="1510888032197" TEXT="struct bus_type">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510708823380" ID="ID_325152965" MODIFIED="1510888032197" TEXT="char *name">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708827530" ID="ID_1535850950" MODIFIED="1510888032198" TEXT="struct subsystem subsys">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708834345" ID="ID_1884418836" MODIFIED="1510888032198" TEXT="struct kset drivers">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510708842929" ID="ID_1976088487" MODIFIED="1510888032199" TEXT="struct kset devices">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510714803495" ID="ID_1501192519" MODIFIED="1510888032201" TEXT="subsystem_register()">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708910120" ID="ID_1661843031" MODIFIED="1510888032201" TEXT="struct kobject">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510714196260" ID="ID_1009280768" MODIFIED="1510888032202" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cccc"># Kobject&#36890;&#24120;&#36890;&#36807;kset&#32452;&#32455;&#25104;&#23618;&#27425;&#21270;&#30340;&#32467;&#26500;</font>
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510709022530" ID="ID_252243094" MODIFIED="1510888032202" STYLE="fork" TEXT="char *k_name; &#x6307;&#x5411;&#x8bbe;&#x5907;&#x540d;&#x79f0;&#x7684;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510709050829" ID="ID_1893910531" MODIFIED="1510888032203" TEXT="char name[KOBJ_NAME_LEN]; &#x8bbe;&#x5907;&#x540d;&#x79f0;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510709050828" ID="ID_1904884745" MODIFIED="1510888032203" TEXT="kref kref; &#x5bf9;&#x8c61;&#x5f15;&#x7528;&#x8ba1;&#x6570;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510709050827" ID="ID_1383984206" MODIFIED="1510888032203" TEXT="struct list_head entry; &#x7528;&#x4e8e;&#x6302;&#x63a5;&#x5230;kset">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510709050826" ID="ID_1479144916" MODIFIED="1510888032204" TEXT="struct kobject *parent; &#x7236;&#x5bf9;&#x8c61;&#x7684;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510709050825" ID="ID_1216674992" MODIFIED="1510888032204" TEXT="struct kset *kset; &#x6240;&#x5c5e;kset">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510709050819" ID="ID_769686406" MODIFIED="1510888032205" TEXT="struct kobj_type *ktype; &#x6307;&#x5411;&#x5bf9;&#x8c61;&#x7c7b;&#x578b;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510713992262" ID="ID_1697561985" MODIFIED="1510888032205" TEXT="struct dentry *dentry; sysfs&#x6587;&#x4ef6;&#x7cfb;&#x7edf;&#x4e2d;&#x6587;&#x4ef6;&#x8282;&#x70b9;&#x8def;&#x5f84;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510709057117" ID="ID_1876609391" MODIFIED="1510888032209" TEXT="struct kref">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510709078011" ID="ID_1157956385" MODIFIED="1510888032209" TEXT="atomic_t refcount">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510709063972" ID="ID_1677421268" MODIFIED="1510888032210" TEXT="struct kobj_type">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510709092769" ID="ID_324020926" MODIFIED="1510888032210" TEXT="void (*release) (struct kobject *);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1510887643436" ID="ID_626364080" MODIFIED="1510897956403">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct device
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
<node COLOR="#990000" CREATED="1510897967532" ID="ID_899051139" MODIFIED="1510898003002">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct list_head bus_list; /* node in bus's list */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003128" ID="ID_1205929079" MODIFIED="1510898003132">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct list_head driver_list; </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003122" ID="ID_159792251" MODIFIED="1510898003126">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct device *parent; </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003116" ID="ID_1523964689" MODIFIED="1510898003120">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct device_type *type; </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003109" ID="ID_1069329988" MODIFIED="1510898060625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct kobject kobj; </font>
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003104" ID="ID_1409358544" MODIFIED="1510898003107">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">char bus_id[BUS_ID_SIZE]; /* position on parent bus */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003099" ID="ID_1202351584" MODIFIED="1510898003102">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct bus_type *bus; /* type of bus device is on */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003093" ID="ID_1837233510" MODIFIED="1510898050024">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct device_driver *driver; /*which driver has allocated this device */</font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003082" ID="ID_510761979" MODIFIED="1510898003087">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">void *driver_data; /* data private to the driver */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003074" ID="ID_1754949521" MODIFIED="1510898003078">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">u64 *dma_mask; /* dma mask (if dma'able device) */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003069" ID="ID_886563425" MODIFIED="1510898003073">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">u64 coherent_dma_mask;/* Like dma_mask, but for </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003048" ID="ID_1401791827" MODIFIED="1510898003052">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">&#160;&#160;&#160;&#160;&#160;allocations such descriptors. */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003042" ID="ID_215679174" MODIFIED="1510898003045">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">void *platform_data; /* Platform specific data (e.g. ACPI, </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003030" ID="ID_750919866" MODIFIED="1510898003033">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct list_head dma_pools; /* dma pools (if dma'ble) */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003019" ID="ID_1303026332" MODIFIED="1510898003028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">struct dev_pm_info power; </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003014" ID="ID_60525555" MODIFIED="1510898003017">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">void (*release) (struct device * dev); </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003007" ID="ID_1162717365" MODIFIED="1510898003011">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Consolas">const struct attribute_group **groups; /* optional groups */ </font>
    </p>
  </body>
</html></richcontent>
<font NAME="SimHei" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1510898003005" ID="ID_1889326318" MODIFIED="1510898003006" TEXT="">
<font NAME="SimHei" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>

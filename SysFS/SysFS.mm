<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1510708868693" ID="ID_1993363776" MODIFIED="1510888027749" TEXT="SysFS">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1510708902569" ID="ID_943911519" MODIFIED="1510709104476" POSITION="right" TEXT="struct kset">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510714181006" ID="ID_1956635666" MODIFIED="1510714228795">
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
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708966481" ID="ID_1965548645" MODIFIED="1510714042164" TEXT="struct subsystem *subsys; &#x6240;&#x5728;subsystem&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708988952" ID="ID_1280433523" MODIFIED="1510714060098" TEXT="struct kobj_type *ktype; kset&#x5bf9;&#x8c61;&#x7c7b;&#x578b;&#x63cf;&#x8ff0;&#x7b26;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708988949" ID="ID_1841405342" MODIFIED="1510714092254" TEXT="struct list_head list;&#x94fe;&#x63a5;kset&#x4e2d;&#x6240;&#x6709;kobject&#x7684;&#x94fe;&#x8868;&#x5934;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708988948" ID="ID_1758052820" MODIFIED="1510714136600" TEXT="struct kobject kobj; &#x5d4c;&#x5165;&#x7684;kobj,&#x6240;&#x6709;&#x5c5e;&#x4e8e;kset&#x7684;kobject&#x7684;parent&#x6307;&#x5411;kobj">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510714147410" ID="ID_901962616" MODIFIED="1510714148535" TEXT="struct kset_hotplug_ops * hotplug_ops; &#x6307;&#x5411;&#x70ed;&#x63d2;&#x62d4;&#x64cd;&#x4f5c;&#x8868;&#x7684;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510708899129" ID="ID_921192648" MODIFIED="1510709100686" POSITION="right" TEXT="struct subsystem">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510714369830" ID="ID_1310840591" MODIFIED="1510714409080">
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
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708921719" ID="ID_426215511" MODIFIED="1510714420140" TEXT="struct kset kset;  &#x5185;&#x5d4c;&#x7684;kset&#x5bf9;&#x8c61;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708928494" ID="ID_756933118" MODIFIED="1510714427219" TEXT="struct rw_semaphore rwsem; &#x4e92;&#x65a5;&#x8bbf;&#x95ee;&#x4fe1;&#x53f7;&#x91cf;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510651509792" ID="ID_646525568" MODIFIED="1510708884530" POSITION="right" TEXT="struct bus_type">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510708823380" ID="ID_325152965" MODIFIED="1510708884531" TEXT="char *name">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708827530" ID="ID_1535850950" MODIFIED="1510709144083" TEXT="struct subsystem subsys">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708834345" ID="ID_1884418836" MODIFIED="1510709101572" TEXT="struct kset drivers">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510708842929" ID="ID_1976088487" MODIFIED="1510709103397" TEXT="struct kset devices">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510714803495" ID="ID_1501192519" MODIFIED="1510714805691" POSITION="right" TEXT="subsystem_register()">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
</node>
<node COLOR="#0033ff" CREATED="1510708910120" ID="ID_1661843031" MODIFIED="1510709105805" POSITION="left" TEXT="struct kobject">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510714196260" ID="ID_1009280768" MODIFIED="1510714331145" STYLE="fork">
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
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510709022530" ID="ID_252243094" MODIFIED="1510714340108" STYLE="fork" TEXT="char *k_name; &#x6307;&#x5411;&#x8bbe;&#x5907;&#x540d;&#x79f0;&#x7684;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510709050829" ID="ID_1893910531" MODIFIED="1510713921659" TEXT="char name[KOBJ_NAME_LEN]; &#x8bbe;&#x5907;&#x540d;&#x79f0;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510709050828" ID="ID_1904884745" MODIFIED="1510713929866" TEXT="kref kref; &#x5bf9;&#x8c61;&#x5f15;&#x7528;&#x8ba1;&#x6570;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510709050827" ID="ID_1383984206" MODIFIED="1510713947912" TEXT="struct list_head entry; &#x7528;&#x4e8e;&#x6302;&#x63a5;&#x5230;kset">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510709050826" ID="ID_1479144916" MODIFIED="1510713957351" TEXT="struct kobject *parent; &#x7236;&#x5bf9;&#x8c61;&#x7684;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510709050825" ID="ID_1216674992" MODIFIED="1510713966645" TEXT="struct kset *kset; &#x6240;&#x5c5e;kset">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510709050819" ID="ID_769686406" MODIFIED="1510713983523" TEXT="struct kobj_type *ktype; &#x6307;&#x5411;&#x5bf9;&#x8c61;&#x7c7b;&#x578b;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1510713992262" ID="ID_1697561985" MODIFIED="1510714017887" TEXT="struct dentry *dentry; sysfs&#x6587;&#x4ef6;&#x7cfb;&#x7edf;&#x4e2d;&#x6587;&#x4ef6;&#x8282;&#x70b9;&#x8def;&#x5f84;&#x6307;&#x9488;">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510709057117" ID="ID_1876609391" MODIFIED="1510709059146" POSITION="left" TEXT="struct kref">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510709078011" ID="ID_1157956385" MODIFIED="1510709080919" TEXT="atomic_t refcount">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1510709063972" ID="ID_1677421268" MODIFIED="1510709067372" POSITION="left" TEXT="struct kobj_type">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SimHei" SIZE="18"/>
<node COLOR="#00b439" CREATED="1510709092769" ID="ID_324020926" MODIFIED="1510709093405" TEXT="void (*release) (struct kobject *);">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SimHei" SIZE="16"/>
</node>
</node>
</node>
</map>

Þ          ì   %   ¼      P     Q  `   ^  H   ¿  ²        »  #   Ô  G   ø     @  ×   Þ     ¶     =  H   ×  d      Ý     .   c  ?     (   Ò  Z   û  ;   V	  )   	  
   ¼	     Ç	  
   Î	     Ù	     ç	  U  ï	     E     L  <   Õ  ¿     *   Ò  "   ý  J      Ä   k    0     7  §   Ë  S   s  z   Ç  Û   B  0     0   O  $     N   ¥  e   ô  $   Z  
          
             ª                                                                          	                                         
          Achievements An action that calls achievement.sync(). This is only sensitive if achievements are out of sync. An integer giving the number of units completed towards the achievement. By default, the achievement stores information in the persistent file. If Steam support is available and enabled, achivement information is automatically synchronized with Steam. Clears all achievements. Clears the achievement with `name`. Grants the achievement with `name`, if it has not already been granted. If not None, this sets the position of the steam notification popup. This must be a string, one of "top left", "top right", "bottom left", or "bottom right". If the progress modulo `stat_max` is 0, progress is displayed to the user. For example, if stat_modulo is 10, progress will be displayed to the user when it reaches 10, 20, 30, etc. If not given, this defaults to 0. Registers an achievement. Achievements are not required to be registered, but doing so allows one to pass information to the backends. Reports progress towards the achievement with `name`, if that achievement has not been granted. The achievement must be defined with a completion amount. Returns true if the player has been granted the achievement with `name`. Synchronizes registered achievements between local storage and other backends. (For example, Steam.) The Achievement module allows the developer to grant achievements to the player, to clear achievements, and to determine if an achievement has been granted. It also allows the recording of progress towards an achievement. The following keyword parameters are optional. The integer value of the stat at which the achievement unlocks. The name of the achievement to register. The name of the achievement. This should be the name of the achievement, and not the stat. The name to use on steam. If not given, defaults to `name`. Variables that control achievements are:: `complete` `name` `stat_max` `stat_modulo` `steam` Project-Id-Version: Ren'Py Visual Novel Engine 6.99.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-08 23:46+0900
PO-Revision-Date: 2019-10-21 23:46+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.5.7
 å®ç¸¾ achievement.sync() ãå¼ã³åºãã¢ã¯ã·ã§ã³ã§ããããã¯å®ç¸¾ãåæããã¦ããªãã¨ãã®ã¿æå¹ã«ãªãã¾ãã å®ç¸¾ã¸åãã¦å®äºããä½æ¥­ã®æ°ã®æ´æ°ã§ãã ããã©ã«ãã§ã¯ Achievement ã¯ãã¼ã½ãã«ãã¡ã¤ã«ã«æå ±ãä¿å­ãã¾ããSteam ã®ãµãã¼ããå©ç¨å¯è½ãªãå®ç¸¾æå ±ã¯èªåçã« steam ã¨åæãã¾ãã ãã¹ã¦ã®å®ç¸¾ãã¯ãªã¢ãã¾ãã `name` å®ç¸¾ãã¯ãªã¢ããã æ¢ã«æä¸ããã¦ããªããã°ã `name` å®ç¸¾ãæä¸ãã¾ãã None ã¾ãã¯Steamã®éç¥ãããã®ä½ç½®è¨­å®ã§ããããã¯ "top left" ã¾ãã¯ "top right", "bottom left",  "bottom right" ã®ããããã®æå­åã§ãªããã°ãªãã¾ããã `stat_max` ã 0 ãªããéæåº¦ã¯ã¦ã¼ã¶ã¼ã«è¡¨ç¤ºããã¾ããä¾ãã°ã stat_modulo ã 10 ãªããéæåº¦ã 10, 20, 30â¦ ã®ã¨ãã«ã¦ã¼ã¶ã¼ã«è¡¨ç¤ºããã¾ããæå®ãããªãã¨ãããã¯ããã©ã«ãã§ 0 ã«ãªãã¾ãã å®ç¸¾ãç»é²ãã¾ããå®ç¸¾ãç»é²ãããå¿è¦ã¯ããã¾ãããããããããã¨ã§ããã¯ã¨ã³ãã«æå ±ãæ¸¡ãã¾ãã å®ç¸¾ãã¾ã æä¸ããã¦ããªããã°ã `name` å®ç¸¾ã®éæåº¦ãå ±åãã¾ãããã®å®ç¸¾ã«ã¯éæåº¦ãå®ç¾©ãããªããã°ãªãã¾ããã ãã¬ã¤ã¤ã¼ã« `name` å®ç¸¾ãæä¸ããã¦ããã° True ãè¿ãã¾ãã ã­ã¼ã«ã«ã¹ãã¬ã¼ã¸ã¨ãã®ä»ã®ããã¯ã¨ã³ã (steam ãªã© ) ã®ç»é²ãããå®ç¸¾ãåæãã¾ãã Achievement ã¢ã¸ã¥ã¼ã«ã¯éçºèããã¬ã¤ã¤ã¼ã«å®ç¸¾ãæä¸ããããã¯ãªã¢ããããå®ç¸¾ãæä¸ããããå¤å®åºæ¥ãããã«ãã¾ããå®ç¸¾ã¸ã®éæåº¦ã®è¨é²ãã§ãã¾ãã ä»¥ä¸ã®ã­ã¼ã¯ã¼ãå¼æ°ã¯ä»»æã§ãã å®ç¸¾ãéæ¾ããã stat ã®æ´æ°ã§ãã ç»é²ããå®ç¸¾ã®ååã§ãã å®ç¸¾ã®ååã§ããããã¯å®ç¸¾åã§ã stat ã§ã¯ããã¾ããã steam ã§ä½¿ç¨ããååã§ããæå®ãããªãã¨ããã©ã«ãã§ `name` ã«ãªãã¾ãã Achievement  ãå¶å¾¡ããå¤æ° : `complete` `name` `stat_max` `stat_modulo` `steam` 
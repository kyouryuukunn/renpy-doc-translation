Þ    5      Ä  G   l        =     5   Ç  º   ý  N   ¸  \        d  f   m  W   Ô  S   ,               ¯  ø   Â     »  Ê   M	     
  [   '
  :   
  .   ¾
  E   í
  u   3     ©  Ð   H  o     Û     i   e  1   Ï  I     D   K  Z     Û   ë  Ú   Ç  A  ¢  !   ä  6        =  A   [          »     Õ  â   ñ  ¹   Ô  "        ±     Î     í          %     -  
   3  	   >     H    U  I   å  -   /  Ë   ]  f   )            p   &  b     _   ú  $   Z              º  Ø   =  0       G  v   V  O   Í  G      T   e      º   ÿ   N!    N"     a#  þ   ä#  ª   ã$  K   %  T   Ú%  P   /&  o   &  "  ð&  ×   (  ¡  ë(  -   *  >   »*  )   ú*  m   $+  )   +  %   ¼+  '   â+  þ   
,  À   	-  "   Ê-     í-     
.     ).     C.     a.     i.  
   o.  	   z.     .           3   +                  (   /                          4            &   
                  %       0   -      *      $   ,           	       5   !              "   2          '                  .            #      )             1                   A human readable version name, of the form "Example Version." A string containing each of the characters to tailor. A string giving a character class. This should be one of the classes defined in Table 1 of `UAX #14: Unicode Line Breaking Algorithm <http://www.unicode.org/reports/tr14/tr14-30.html>`_. A string giving license text that should be included in a game's about screen. As it has to scan all memory used by Ren'Py, this function may take a long time to complete. Contexts If `tuple` is false, returns a string containing "Ren'Py ", followed by the current version of Ren'Py. If `tuple` is true, returns a tuple giving each component of the version as an integer. If a name is accounted less than `minimum` bytes of memory, it will not be printed. Memory Profiling Other Functions and Variables Platform Detection Profiles memory used by the rollback system. Writes (to memory.txt and stdout) the memory used by the rollback system. This tries to account for rollback memory used by various store variables, as well as by internal aspects of the rollback system. Profiles object, surface, and texture memory use by Ren'Py and the game. Writes an accounting of memory use by to the memory.txt file and stdout. Profiles objects, surface, and texture memory use by Ren'Py and the game. Writes (to memory.txt and stdout) the difference in memory usage from the last time this function was called with `update` true. Ren'Py Version Ren'Py includes a number of variables that are set based on which platform it's running on. Return a random element from the non-empty sequence `seq`. Return a random integer such that a <= N <= b. Return the next random floating point number in the range (0.0, 1.0). Returns a new random number generator object separate from the main one, seeded with the specified value if provided. Returns an object that is unique to the current context. The object is copied when entering a new context, but changes to the copy do not change the original. Returns the nesting level of the current context. This is 0 for the outermost context (the context that is saved, loaded, and rolled-back), and is non-zero in other contexts, such as menu and replay contexts. Shuffles the elements of the sequence `seq` in place. This does not return a list, but changes an existing one. The accounting is by names in the store and in the Ren'Py implementation that the memory is reachable from. If an object is reachable from more than one name, it's assigned to the name it's most directly reachable from. The fraction of the total memory usage to show. 1.0 will show all memory usage, .9 will show the top 90%. The object is saved and participates in rollback. The version number of Ren'Py, as a string of the form "Ren'Py 1.2.3.456". The version number of Ren'Py, as a tuple of the form (1, 2, 3, 456). The version number of Ren'Py, without the Ren'Py prefix. A string of the form "1.2.3.456". These are only set when running on the actual devices, not when running on in the emulators. These are more intended for use in platform-specific Python. For display layout, use :ref:`screen variants <screen-variants>`. This can be used to override the line breaking class of a character. For example, the linebreaking class of a character can be set to ID to treat it as an ideograph, which allows breaks before and after that character. This object is a random number generator that implements `the Python random number generation interface <http://docs.python.org/release/2.3.4/lib/module-random.html>`_. Randomness can be generated by calling the various methods this object exposes. See the Python documentation for the full list, but the most useful are: True when running in the browser. True when running on Android or iOS or in the browser. True when running on Android. True when running on Linux or other POSIX-like operating systems. True when running on Windows. True when running on iOS. True when running on macOS. Unlike the standard Python random number generator, this object cooperates with rollback, generating the same numbers regardless of how many times we rollback. It should be used instead of the standard Python random module. :: We're in the process of migrating the documentation over to a new tool. As not every page has been migrated yet, this exists to document new functionality that has no other place to go. ``renpy.random.Random(seed=None)`` ``renpy.random.choice(seq)`` ``renpy.random.randint(a, b)`` ``renpy.random.random()`` ``renpy.random.shuffle(seq)`` `chars` `cls` `fraction` `minimum` renpy.random Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-07-20 23:16+0900
PO-Revision-Date: 2020-08-09 10:05+0900
Last-Translator: akakyouryuu <akakyouryuu@gmail.com>
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-07-01 06:14+0000
X-Generator: Poedit 1.5.7
 "Example Version." å½¢å¼ã®äººéãèª­ãããã¼ã¸ã§ã³åã§ãã æ¹è¡ããæå­ãå«ãæå­åã§ãã æå­åé¡ã®æå­åã§ããããã¯ `UAX #14: Unicode Line Breaking Algorithm <http://www.unicode.org/reports/tr14/tr14-30.html>`_ ã®è¡¨1ã§å®ç¾©ãããã¯ã©ã¹ã®1ã¤ã§ããã¹ãã§ãã ã²ã¼ã ã®ã¢ãã¦ãç»é¢ã«è¡¨ç¤ºãããã¹ãã©ã¤ã»ã³ã¹ãã­ã¹ãã®æå­åã§ãã Ren'Py ã«ä½¿ç¨ããããã¹ã¦ã®ã¡ã¢ãªã¼ãã¹ã­ã£ã³ããããããã®é¢æ°ã¯å®äºã«æéããããã¾ãã ã³ã³ãã­ã¹ã `tuple` ã False ãªãã Ren'Py ãã¨ããã«ç¶ã Ren'Py ã®ãã¼ã¸ã§ã³ã®æå­åãè¿ãã¾ãã `tuple` ã True ãªãæ´æ°ã§ãã¼ã¸ã§ã³ã®åè¦ç´ ãä¸ããã¿ãã«ãè¿ãã¾ãã ããååã®ã¡ã¢ãªã¼ã `minimum` ãã¤ãããå°ãããã°ãå ±åãã¾ããã ã¡ã¢ãªã¼ãã­ãã¡ã¤ãªã³ã° ãã®ä»ã®é¢æ°ã¨å¤æ° ãã©ãããã©ã¼ã æ¤ç¥ ã­ã¼ã«ããã¯ã«ä½¿ç¨ããã¦ããã¡ã¢ãªã¼ããã­ãã¡ã¤ãªã³ã°ãã¾ããã­ã¼ã«ããã¯ã·ã¹ãã ã«ãã£ã¦ä½¿ç¨ãããã¡ã¢ãªã¼ (memory.txt ã¨ stdout) ã¸æ¸ãåºãã¾ããããã¯ã­ã¼ã«ããã¯ã·ã¹ãã ã®åé¨è¦ç´ ã¨ã¨ãã«ãæ§ããª store å¤æ°ã«ãã£ã¦ä½¿ç¨ãããã­ã¼ã«ããã¯ã¡ã¢ãªã¼ã®å ±åãè©¦ã¿ã¾ãã Ren'Py ã¨ãã®ã²ã¼ã ã«ããä½¿ç¨ããããªãã¸ã§ã¯ãã surface, texture ã¡ã¢ãªã¼ããã­ãã¡ã¤ãªã³ã°ãã¾ããã¡ã¢ãªã¼ä½¿ç¨ã®å ±åã memory.txt ã¨ stdout ã«æ¸ãåºãã¾ãã Ren'Py ã¨ãã®ã²ã¼ã ã«ããä½¿ç¨ããããªãã¸ã§ã¯ãã surface, texture ã¡ã¢ãªã¼ããã­ãã¡ã¤ãªã³ã°ãã¾ãã `update` ã True ã«ãã¦æå¾ã«ãã®é¢æ°ãå¼ã³åºããã¨ãããã®ãã¡ã¢ãªã¼ä½¿ç¨ã®å¤åã (memory.txt ã¨ stdout ã«) æ¸ãåºãã¾ãã Ren'Py Version Ren'Py ã¯ã©ã®ãã©ãããã©ã¼ã ã§å®è¡ããã¦ãããã«åºã¥ãããã¤ãã®å¤æ°ãå«ã¿ã¾ãã ç©ºã§ãªãã·ã¼ã±ã³ã¹ `seq` ããã©ã³ãã ã«è¦ç´ ãè¿ãã¾ãã a ä»¥ä¸ã b ä»¥ä¸ã®ç¯å²ã§ã©ã³ãã ãªæ´æ°ãè¿ãã¾ãã 0.0 ãã 1.0 ã¾ã§ã®ç¯å²ã§ã©ã³ãã ãªæµ®åå°æ°ç¹æ°ãè¿ãã¾ãã ã¡ã¤ã³ã¨ã¯å¥ã«æ°ããä¹±æ°çæãªãã¸ã§ã¯ããè¿ãã¾ããããã¯å­å¨ããã°æå®ããå¤ãã·ã¼ãå¤ã«ãã¾ãã ç¾å¨ã®ã³ã³ãã­ã¹ãã«å¯¾ãã¦ã¦ãã¼ã¯ãªãªãã¸ã§ã¯ããè¿ãã¾ããæ°ãããªãã¸ã§ã¯ãã«å¥ãã¨ãã®ãªãã¸ã§ã¯ãã¯ã³ãã¼ããã¾ãããã³ãã¼ã¸ãã®å¤æ´ã¯ãªãªã¸ãã«ã«å½±é¿ãä¸ãã¾ããã ç¾å¨ã®ã³ã³ãã­ã¹ãã®ãã¹ãã¬ãã«ãè¿ãã¾ããããã¯ (ã»ã¼ãã­ã¼ããã­ã¼ã«ããã¯ããã) æãå¤å´ã®ã³ã³ãã­ã¹ãã«å¯¾ãã¦ã¯ 0 ã§ãã¡ãã¥ã¼ãåæ³ã®ãããªä»ã®ã³ã³ãã­ã¹ãã§ã¯ 0 ã§ã¯ããã¾ããã `seq` ã®è¦ç´ ã®ä¸¦ã³ãã·ã£ããã«ãã¾ããããã¯ãªã¹ããè¿ãããä¸ãããã `seq` ãå¤æ´ãã¾ãã store ã¨ Ren'PY ã®å®è£ã«å«ã¾ããã¡ã¢ãªã¼ã¾ã§ã¢ã¯ã»ã¹åºæ¥ãååãå æããéã§ããè¤æ°ã®ååããã¢ã¯ã»ã¹ã§ãããªãã¸ã§ã¯ããããã°ãæãæç­ã§ã¢ã¯ã»ã¹åºæ¥ãååã«ä»£å¥ããã¾ãã è¡¨ç¤ºã«ä½¿ç¨ããå¨ä½ã®ã¡ã¢ãªã¼ä½¿ç¨çã§ãã 1.0 ãªããã¹ã¦ã®ã¡ã¢ãªã¼ãä½¿ç¨ããã¦ããã.9 ãªãæå¤§90%ãä½¿ç¨ããã¦ãã¾ãã ãªãã¸ã§ã¯ãã¯ä¿å­ãããã­ã¼ã«ããã¯ã«åå ãã¾ãã Ren'Py ã®ãã¼ã¸ã§ã³ã®æ°ã§ã "Ren'Py 1.2.3.456" å½¢å¼ã®æå­åã§ãã Ren'Py ã®ãã¼ã¸ã§ã³ã®æ°ã§ã (1, 2, 3, 456) å½¢å¼ã®ã¿ãã«ã§ãã Ren'Py ã®ãã¼ã¸ã§ã³ã®æ°ã§ãRen'Py ãæ¥é ­è¾ã«ã¤ããªã "1.2.3.456" å½¢å¼ã®æå­åã§ãã ãããã¯ã¨ãã¥ã¬ã¼ã¿ã¼ã§ã¯ãªããå®éã®ããã¤ã¹ã§å®è¡æã«ã®ã¿è¨­å®ããã¾ãããããã¯ãã©ãããã©ã¼ã æå®ã® Python ã®ä½¿ç¨ãæå³ãã¾ããã¬ã¤ã¢ã¦ãã®è¡¨ç¤ºã«ã¯ã :ref:`screen variants <screen-variants>` ãä½¿ç¨ãã¾ãã ãããä½¿ç¨ãã¦ããæå­ã®æ¹è¡åé¡ãä¸æ¸ãã§ãã¾ããä¾ãã°ãæå­ã®æ¹è¡åé¡ãæå­ã®åå¾ã§ã®æ¹è¡ãè¨±ãIDã«è¨­å®ããã°è¡¨èªæå­çãªæå­ã¨ãã¦æ±ãã¾ãã ãã®ãªãã¸ã§ã¯ãã¯  `the Python random number generation interface <http://docs.python.org/release/2.3.4/lib/module-random.html>`_ ã§å®è£ãããä¹±æ°çææ©ã§ããä¹±æ°ã¯ãã®ãªãã¸ã§ã¯ããä¸ããç¨®ãã®ã¡ã½ãããå¼ã³åºãã¦çæå¯è½ã§ããå®å¨ãªãªã¹ãã¯ python ãã­ã¥ã¡ã³ããåç§ããå¿è¦ãããã¾ãããæ®ã©ã¯ä»¥ä¸ãä½¿ç¨ããã¾ãã : ãã©ã¦ã¶ã§å®è¡ä¸­ãªã True ã§ãã Android ã iOS, ãã©ã¦ã¶ã§å®è¡ä¸­ãªã True ã§ãã Android ã§å®è¡ä¸­ãªã True ã§ãã Linux ããã®ä»ã® POSIX ã©ã¤ã¯ãªãªãã¬ã¼ãã£ã³ã°ã·ã¹ãã ã§å®è¡ä¸­ãªã True ã§ãã Windows ã§å®è¡ä¸­ãªã True ã§ãã iOS ã§å®è¡ä¸­ãªã True ã§ãã macOS ã§å®è¡ä¸­ãªã True ã§ãã æ¨æºã® Python ä¹±æ°æ´æ°æ©ã¨éãããã®ãªãã¸ã§ã¯ãã¯ã­ã¼ã«ããã¯ãèæ®ããä½åã­ã¼ã«ããã¯ãã¦ãåãæ°å­ãçæãã¾ããæ¨æºã® python random ã¢ã¸ã¥ã¼ã«ã®ä»£ããã«ä½¿ç¨ããã¹ãã§ãã :: æ°ãã¼ã«ã«ãã­ã¥ã¡ã³ããç§»æ®ä¸­ã§ããã¾ã ãã¹ã¦ã®ãã¼ã¸ã¯ç§»æ¤ããã¦ããªãã®ã§ãããã«ã¯ä»ã«é©åãªå ´æã®ãªãæ°æ©è½ãè¼ã£ã¦ãã¾ãã ``renpy.random.Random(seed=None)`` ``renpy.random.choice(seq)`` ``renpy.random.randint(a, b)`` ``renpy.random.random()`` ``renpy.random.shuffle(seq)`` `chars` `cls` `fraction` `minimum` renpy.random 
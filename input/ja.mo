Þ          Ì      |      ð  2   ñ  C   $  i   h  R  Ò  M   %  S   s  U   Ç  p     S     ²   â  
     T      '   õ  ì        
  	     	        &     /     =     F    O  <   à	  ?   
     ]
  |  ý
  `   z  n   Û  h   J     ³  Y   @           z   ²  @   -  <  n     «  	   ³  	   ½     Ç     Ð     Þ     ç                                          
                                            	           A string giving a prompt to display to the player. A string giving the initial text that will be edited by the player. Calling this function pops up a window asking the player to enter some text. It returns the entered text. Games that use renpy.input will often want to process the result further, using standard Python string manipulation functions. For example, the following will ask the player for his or her name and remove leading or trailing whitespace. If the name is empty, it will be replaced by a default name. Finally, it is displayed to the user. :: If :var:`config.disable_input` is True, this function only returns `default`. If not None, a string giving a list of characters that will be allowed in the text. If not None, if a character is present in this string, it is not allowed in the text. If not None, the input is limited to being this many pixels wide, in the font used by the input to display text. If not None, this must be an integer giving the maximum length of the input string. On Linux, text input is limited to languages that do not require input method (IME) support. Most Western languages should work, but Chinese, Japanese, and Korean probably won't. Text Input The name of the screen that takes input. If not given, the ``input`` screen is used. The renpy.input function is defined as: With some limitations, Ren'Py can prompt the user to input a small amount of text. This prompting is done by the :func:`renpy.input` function, which returns the entered text, allowing it to be saved in a variable or otherwise processed. `allow` `default` `exclude` `length` `pixel_width` `prompt` `screen` Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-10-21 22:56+0900
PO-Revision-Date: 2019-11-02 11:53+0900
Last-Translator: kyouryuukunn <akakyouryuu@gmail.com>
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-06-21 06:27+0000
X-Generator: Poedit 1.5.7
 ãã¬ã¤ã¤ã¼ã«è¡¨ç¤ºãããã­ã³ããã®æå­åã ãã¬ã¤ã¤ã¼ã«ãã£ã¦ç·¨éãããåæãã­ã¹ãã ãã®é¢æ°ãå¼ã³åºãã¨ããã¬ã¤ã¤ã¼ã«å¯¾ãã¦ãã­ã¹ãå¥åç»é¢ãåºã¦ãã¾ããããã¯å¥åããããã­ã¹ããè¿ãã¾ãã renpy.input ãç¨ããã³ã¼ãã§ã¯ãæ¨æºã® Python ã®æå­åå¦çé¢æ°ãä½¿ã£ã¦å¥åçµæãå¦çãããã¨ãããããã¾ããä¾ãã°ä»¥ä¸ã®ã³ã¼ãã§ã¯ããã¬ã¤ã¤ã¼ã«ååãè¨ªã­ãåå¾ã®ç©ºç½ãåé¤ãã¦ãã¾ããååãç©ºã®å ´åã¯ããã©ã«ãã®ååã«ç½®ãæãã¾ããæå¾ã«ã¦ã¼ã¶ã¼ã«è¡¨ç¤ºãã¾ã :: :var:`config.disable_input` ã True ãªãããã®é¢æ°ã¯ `default` ãè¿ãã®ã¿ã§ãã None ãæå®ãããããã­ã¹ãå¥åå¯è½ãªæå­ã®ãªã¹ããè¡¨ãæå­åãæå®ãã¾ãã None ãæå®ãããããã­ã¹ãå¥åãç¦æ­¢ããæå­ãå«ãæå­åãæå®ãã¾ãã None ãæå®ããããå¥åã®ä¸éå¹ããå¥åæã®ãã­ã¹ãè¡¨ç¤ºãã©ã³ãã«ããããã¯ã»ã«æ°ã§æå®ãã¾ãã None ãæå®ããããå¥åæå­åã®æå¤§é·ãè¡¨ãæ´æ°ãæå®ãã¾ãã Linux ã§ã®ãã­ã¹ãå¥åã¯ãã¤ã³ãããã¡ã½ãã(IME)ã®å¯¾å¿ãè¦ããªãè¨èªã«å¶éããã¦ãã¾ããã»ã¨ãã©ã®è¥¿æ¬§è¨èªã§ã¯åä½ãã¾ãããä¸­å½èªãæ¥æ¬èªãéå½èªã§ã¯åä½ããªãæããããã¾ãã ãã­ã¹ãå¥å å¥åãåãåãã¹ã¯ãªã¼ã³ã®ååã§ããæå®ãããªãã¨ ``input`` ã¹ã¯ãªã¼ã³ãä½¿ç¨ããã¾ã renpy.input é¢æ°ã¯ä»¥ä¸ã®ããã«å®ç¾©ããã¦ãã¾ã: ããã¤ãã®å¶éã¯ããã¾ãããRen'Py ã§ã¯ã¦ã¼ã¶ã¼ã«å°éã®ãã­ã¹ããå¥åããããã¨ãã§ãã¾ããããã¯ã `renpy.input` é¢æ°ã«ãã£ã¦å®ç¾ã§ãããã®é¢æ°ã¯å¥åããããã­ã¹ããè¿ããå¤æ°ã«æ ¼ç´ãããä»ã®å¦çãåºæ¥ãããã«ãã¾ãã `allow` `default` `exclude` `length` `pixel_width` `prompt` `screen` 
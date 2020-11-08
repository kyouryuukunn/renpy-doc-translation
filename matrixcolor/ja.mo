Þ    .        =   ü      ð  l   ñ  w   ^     Ö  {   ^     Ú     `  Õ   à     ¶  Ý   6     	     	  r   %
  $   
  [   ½
          9    E     d     p     |      c         ½     ð   ]  !   N     p  d   ü  R   a  `   ´       %   §  O   Í  ¯     É   Í       ¹  ·  ð   q  o   b  ×   Ò  ù   ª     ¤     Á     É     Ñ  ;  Ù       ²        Q  v   ã     Z     æ  Í   ~       L!  Ý   í!     Ë"     P#  ´   ð#  "   ¥$  h   È$  (   1%     Z%  d  f%     Ë&     á&     í&  T  '    \)  Ú   à*  Ù   »+  8  ,  9   Î-  }   .  ^   .  W   å.     =/     Ã/  $   X0  W   }0  Ú   Õ0  ß   °1  -   2  é  ¾2  !  ¨4     Ê5  Ø   [6  !  47     V8     s8     {8     8            (   #      '              !   %          &          *            $               ,      	         "                                       .   -                       )      +   
                            A ColorMatrix can be used with :tpref:`matrixcolor` to tint an image, while leaving the alpha channel alone. A ColorMatrix is a class that inherits from the ColorMatrix class, and implements a __call__ method. This method takes: A ColorMatrix that can be used with :tpref:`matrixcolor` that alters the saturation of an image, while leaving the alpha channel alone. A ColorMatrix that can be used with :tpref:`matrixcolor` that does not change the color or alpha of what is supplied to it. A ColorMatrix that can be used with :tpref:`matrixcolor` to change the brightness of an image, while leaving the Alpha channel alone. A ColorMatrix that can be used with :tpref:`matrixcolor` to change the opacity of an image, while leaving color channels alone. A ColorMatrix that can be used with :tpref:`matrixcolor` to colorize black and white displayables. It uses the color of each pixel in the black and white to interpolate between the black color and the white color. A ColorMatrix that can be used with :tpref:`matrixcolor` to invert each of the color channels. The alpha channel is left alone. A ColorMatrix that can be used with :tpref:`matrixcolor` to rotate the hue by `value` degrees. While `value` can be any number, positive or negative, 360 degrees makes a complete rotation. The alpha channel is left alone. A function that returns a ColorMatrix that can be used with :tpref:`matrixcolor` to sepia-tone a displayable. This is the equivalent of:: A value betwee 0.0 and 1.0, representing the point to interpolate. 0.0 is entirely the old object, and 1.0 is entirely the new object. An old object to interpolate off of. This object may be of any class, and may be None if the no old object exists. And should return a :class:`Matrix`. As an example of a ColorMatrix, here is the implementation of Ren'Py's TintMatrix class. :: Built-In ColorMatrix Subclasses ColorMatrix In the premultiplied alpha system, the starting value is the same, and so is the result - except now, (0.5, 0.5, 0.5, 0.5) has been pre-defined to be 50% opaque white. By storing colors in this way, Ren'Py can draw them to the screen correctly, and not get weird artifacts when scaling. Is ignored. Matrixcolor Premultiplied Alpha Color Premultiplied alph allows Ren'Py to scale images up and down without causing dark artifacts that come from representing colors more directly. Scaling images is similar to averaging two pixels together. Without premultiplied alpha, we might have a solid white pixel and a transparent pixel - (1.0, 1.0, 1.0, 1.0) and (0.0, 0.0, 0.0, 0.0), respectively. Average those together gets (0.5, 0.5, 0.5, 0.5). But that's not right - averaging solid white and transparent black should get 50% opaque white, not 50% opaque gray. Ren'Py doesn't stop there, though. Once the values have been scaled, the red, green, and blue channels are multiplied by the alpha channel. This means that an opaque white pixel will have the value (1.0, 1.0, 1.0, 1.0), a 50% transparent red pixel will have the value (0.5, 0.0, 0.0, 0.5), and a transparent pixel will have the value (0.0, 0.0, 0.0, 0.0). Ren'Py supports recoloring images using the :tpref:`matrixcolor` transform property. This property can take either a :class:`Matrix` or a ColorMatrix object. The :class:`Matrix` objects used to change colors can consist of 16 numbers, which can in turn be arranged into a 4x4 grid. Here's a way of doing this that assigns a letter to each number:: The ColorMatrix is a base class that is is extended by a number of Matrix-creating classes. Instances of ColorMatrix are called by Ren'Py, and return Matrixes. ColorMatrix is well integrated with ATL, allowing for matrixcolor animations. :: The alpha channel is not touched. The amount of change in image brightness. This should be a number between -1 and 1, with -1 the darkest possible image and 1 the brightest. The amount of saturation in the resulting image. 1.0 is the unaltered image, while 0.0 is grayscale. The amount the alpha channel should be multiplied by, a number betwen 0.0 and 1.0. The amount to inverty by. 0.0 is not inverted, 1.0 is fully inverted. Used to animate inversion. The color that the matrix will tint things to. This is passed to :func:`Color`, and so may be anything that Color supports as its first argument. The colors used in the interpolation. The following is the list of ColorMatrix subclasses that are built into Ren'Py. These values are applied to the red (R), green (G), blue (B), and alpha (A) channels of the original color to make a new color, (R', G', B', A'). The formulas to do this are:: This is inteded for use with a black and white image (or one that has been desaturated with :func:`SaturationMatrix`), and will yield strange results when used with images that are not black and white. Using a Matrix to Change Colors When an image is loaded, Ren'Py decompresses the image, and then copies it to the GPU of your computer or mobile device. As part of the copying, each of the four color channels (red, green, blue, and alpha - with alpha representing opacity) is scaled to a number between 0.0 and 1.0. In this system, 1.0 represents the full level of a color or fully opaque, while 0.0 represents the absence of the color or the pixel being fully transparent. While Matrix objects are suitable for static color changes, they're not useful for animating color changes. It's also useful to have a way of taking common matrices and encapsulating them in a way that allows the matrix to be parameterized. While they're represented as letters here, realize these are really numbers, either given directly or computed. While this is a simple example, there is a lot of color theory that can be expressed in this way. Matrices can be combined by multiplying them together, and when that happens the matrices are combined right to left. While this might seem complex, there's a pretty simple structure to it - the first row creates the new red channel, the second the new green channel and so on. So if we wanted to make a matrix that swapped red and green for some reason, we'd write:: `black_color`, `white_color` `color` `desat` `value` Project-Id-Version: Ren'Py Visual Novel Engine 7.4.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2020-11-08 14:48+0900
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Last-Translator: kyouryuukunn <akakyouryuu@gmail.com>
Language-Team: 
Language: ja
X-Generator: Poedit 2.2.4
 :tpref:`matrixcolor` ã§ç»åãæããã®ã«ä½¿ç¨ããã ColorMatrix ã§ããã¢ã«ãã¡ãã£ã³ãã«ã¯ãã®ã¾ã¾ã§ãã ColorMatrix ã¯ ColorMatrix ã¯ã©ã¹ãç¶æ¿ããã¯ã©ã¹ã®ãã¨ã§ã __call__ ã¡ã½ãããå®è£ãã¦ãã¾ãããã®ã¡ã½ããã¯æ¬¡ãå¼æ°ã«åãã¾ãã : :tpref:`matrixcolor` ã§ç»åã®é£½åãå¤ããã®ã«ä½¿ç¨ããã ColorMatrix ã§ããã¢ã«ãã¡ãã£ã³ãã«ã¯ãã®ã¾ã¾ã§ãã :tpref:`matrixcolor` ã§è²ãã¢ã«ãã¡ãã£ã³ãã«ãå¤æ´ããªãã®ã«ä½¿ç¨ããã ColorMatrix ã§ãã :tpref:`matrixcolor` ã§ã¢ã«ãã¡ãã£ã³ãã«ãå¤ããã«ç»åã®æãããå¤ããã®ã«ä½¿ç¨ããã ColorMatrix ã§ãã :tpref:`matrixcolor` ã§ç»åã®ä¸éæåº¦ãå¤æ´ããã®ã«ä½¿ç¨ããã ColorMatrix ã§ããã«ã©ã¼ãã£ã³ãã«ã¯ãã®ã¾ã¾ã§ãã :tpref:`matrixcolor` ã§é»ã¨ç½ã®Displayableãçè²ããã®ã«ä½¿ç¨ããã ColorMatrix ã§ããé»ã¨ç½ã®åãã¯ã»ã«ã®è²ãä½¿ç¨ãã¦black_colorã¨white_colorã®éã§è£éãã¾ãã :tpref:`matrixcolor` ã§åã«ã©ã¼ãã£ã³ãã«ãåè»¢ããã®ã«ä½¿ç¨ããã ColorMatrix ã§ããã¢ã«ãã¡ãã£ã³ãã«ã¯ãã®ã¾ã¾ã§ãã :tpref:`matrixcolor` ã§è²èª¿ã `value` åº¦åè»¢ããã®ã«ä½¿ç¨ããã ColorMatrix ã§ãã `value` ã¯æ­£è² ã©ã®ä¸å³ã§ãããã360åº¦ã§1å¨ãã¾ããã¢ã«ãã¡ãã£ã³ãã«ã¯ãã®ã¾ã¾ã§ãã :tpref:`matrixcolor` ã§Displayableãã»ãã¢èª¿ã«ããã®ã«ä½¿ç¨ããã ColorMatrix ã§ããããã¯æ¬¡ã¨ç­ä¾¡ã§ãã 0.0 ãã 1.0ã®éã®å¤ã§ãè£å®ã®é²è¡åº¦ãè¡¨ãã¾ãã0.0ãå®å¨ãª old ãªãã¸ã§ã¯ãã§ã1.0ãå®å¨ãª new ãªãã¸ã§ã¯ãã§ãã è£éããä»¥åã®ãªãã¸ã§ã¯ãã§ãããã®ãªãã¸ã§ã¯ãã¯ä»»æã®ã¯ã©ã¹ã§ããå¯è½æ§ããããä»¥åã®ãªãã¸ã§ã¯ãããªããã° None ã§ãã :class:`Matrix` ãè¿ãã¾ãã ColorMatrix ã®ä¾ã¨ãã¦ããã¡ãã Ren'Py ã® TintMatrix ã¯ã©ã¹ã®å®è£ã¨ãªãã¾ãã :: çµã¿è¾¼ã¿ ColorMatrix ãµãã¯ã©ã¹ ColorMatrix Premultiplied alphaã·ã¹ãã ã§ã¯ãæåã®å¤ã¯åãã§ãçµæãåãã§ããã(0.5, 0.5, 0.5, 0.5)ã50%ä¸éæåº¦ã®ç½ã¨ãã¦ãããããå®ç¾©ããã¦ãã¾ããè²ããã®æ¹æ³ã§è²¯ãããã¨ã§ Ren'Py ã¯ããããã¹ã¯ãªã¼ã³ã«æ­£ç¢ºã«æç»ã§ããã¹ã±ã¼ãªã³ã°æã®ã²ã©ãå¯ä½ç¨ãããã¾ããã ç¡è¦ããã¾ãã Matrixcolor Premultiplied Alpha Color Premultiplied alpha ã¯ Ren'Pyãè²ãããç´æ¥æ±ããã¨ã«ããæãã®çºçãªãã§ç»åãã¹ã±ã¼ãªã³ã°ã§ããããã«ãã¾ããç»åã®ã¹ã±ã¼ãªã³ã°ã¯2ã¤ã®ãã¯ã»ã«ã®å¹³ååã¨åãã§ããPremultiplied alpha ããªãã¨ããããã (1.0, 1.0, 1.0, 1.0) ã¨ (0.0, 0.0, 0.0, 0.0) ã§ããå®å¨ãªç½ã¨éæãªãã¯ã»ã«ã¯ããããå¹³åããã¨ (0.5, 0.5, 0.5, 0.5) ã¨ãªãã¾ãããããããã¯æ­£ãããªããã¾ãããå®å¨ãªç½ã¨éæã®å¹³åã¯ä¸éæãªç°è²ã§ã¯ãªã 50% ä¸éæãªç½ã«ãªãã¯ãã§ãã Ren'py ããã ãã«ã¨ã©ã¾ãã¾ãããä¸æ¦ãã®å¤ãã¹ã±ã¼ã«ãããã¨ã red, green, blue ãã£ã³ãã«ã¯ã¢ã«ãã¡ãã£ã³ãã«ã§ä¹ç®ããã¾ããã¤ã¾ãä¸éæãªç½ããã¯ã»ã«ã¯ (1.0, 1.0, 1.0, 1.0) ã¨ãªãã50%ã®éæåº¦ã®èµ¤ããã¯ã»ã«ã¯(0.5, 0.0, 0.0, 0.5)ã«ãªããéæãªãã¯ã»ã«ã¯(0.0, 0.0, 0.0, 0.0)ã«ãªãã¾ãã Ren'Py ã¯ :tpref:`matrixcolor` å¤æãã­ããã£ã¼ãä½¿ç¨ããç»åã®åçè²ããµãã¼ããã¾ãããã®ãã­ããã£ã¼ã¯ :class:`Matrix` ã¾ãã¯ ColorMatrix ãªãã¸ã§ã¯ããåãã¾ãã è²ã®å¤æ´ã«ä½¿ç¨ããã :class:`Matrix` ãªãã¸ã§ã¯ãã¯16ã®æ°å¤ã§æ§æããã4x4ã®ã°ãªããã§è¡¨ãã¾ããæå­ãåæ°å¤ã«ä»£å¥ãã¦ãããããæ¹æ³ãããã«è¡¨ãã¾ãã :: ColorMatrix ã¯Matrix ãä½æããããã¤ãã®ã¯ã©ã¹ã«ãã£ã¦æ¡å¼µãããåºæ¬ã¯ã©ã¹ã§ãã ColorMatrix ã®ã¤ã³ã¹ã¿ã³ã¹ã¯ Ren'Py ã«å¼ã³åºããã Matrix ãè¿ãã¾ãã ColorMatrix ã¯ãã ATL ã«çµã¿è¾¼ã¾ããmatrixcolor ã¢ãã¡ã¼ã·ã§ã³ãå¯è½ã«ãã¾ãã :: ã¢ã«ãã¡ãã£ã³ãã«ã«ã¯è§¦ãããã¾ããã ç»åæåº¦ã®å¤æ´éã§ããããã¯-1 ãã 1 ã®éã®æ°å¤ã§ãï¼1ã¯æãæãã1ãæãæããã§ãã é£½åéã§ã 1.0 ã¯ç»åãå¤åããã 0.0 ã¯ã°ã¬ã¼ã¹ã±ã¼ã«ã«ãªãã¾ãã ã¢ã«ãã¡ãã£ã³ãã«ã«ä¹ç®ãããéã§ã0.0 ãã 1.0 ã®æ°å¤ã§ãã åè»¢ããéã§ã 0.0 ã¯åè»¢ããã 1.0 ã¯å®å¨ã«åè»¢ãã¾ããåè»¢ã®ã¢ãã¡ã¼ã·ã§ã³ã«ä½¿ç¨ããã¾ãã matrix ãæããè²ã§ããããã¯ :func`Color` ã«æ¸¡ãããã®ã§ Color ãç¬¬ä¸å¼æ°ã«ãµãã¼ããããã¹ã¦ã§ããå¾ã¾ãã è£éã«ä½¿ç¨ãããè²ã§ãã ä»¥ä¸ã¯ Ren'Py ã«çµã¿è¾¼ã¾ãã ColorMatrix ãµãã¯ã©ã¹ã®ãªã¹ãã§ãã ãããã®å¤ã¯ãªãªã¸ãã«ã«ã©ã¼ã®red (R), green (G), blue (B), alpha (A) ãã£ã³ãã«ã«é©ç¨ãããæ°ããã«ã©ã¼ (R', G', B', A') ãä½ãã¾ããããã¯æ¬¡ã®å½¢å¼ã§å®è¡ããã¾ãã: ããã¯ç½é»ç»å( ã¾ãã¯ :func:`SaturationMatrix` ã§ä¸é£½åã«ããããã®) )ã«ä½¿ç¨ãããã¨ãæå³ãã¦ãããç½é»ä»¥å¤ã®ç»åã«ä½¿ç¨ããã¨ããªãå¥å¦ãªçµæã«ãªãã§ãããã ãããªãã¯ã¹ãä½¿ç¨ããè²ã®å¤æ´ ç»åãã­ã¼ããããã¨ãRen'Pyã¯ç»åãè§£åããã³ã³ãã¥ã¼ã¿ã¾ãã¯ã¢ãã¤ã«ããã¤ã¹ã®GPU ã«ã³ãã¼ãã¾ããã³ãã¼ã®ä¸ç°ã¨ãã¦4ã¤ã®ã«ã©ã¼ãã£ã³ãã«(red, green, blue ããã¦ä¸éæåº¦ãè¡¨ç¾ãã alpha)ã®ããããã¯0.0ãã1.0ã«ã¹ã±ã¼ã«ããã¾ãããã®ã·ã¹ãã ã§ã¯1.0ãè²ã¾ãã¯éæåº¦ã®æå¤§å¤ã§ã0.0ã¯ãã®è²ããªãã¾ãã¯ãã¯ã»ã«ãå®å¨ã«éæã§ãããã¨ãè¡¨ãã¾ãã Matrix ãªãã¸ã§ã¯ãã¯éçãªã«ã©ã¼ãã£ã³ãã«ã«æé©ã§ãããã¢ãã¡ã¼ã·ã§ã³ããè²ã®å¤åã«ã¯ä¸åãã§ããå±éã®ãããªãã¯ã¹ãåã£ã¦ãããªãã¯ã¹ãåªä»å¤æ°ã«ãªãããã«ã«ãã»ã«åããæ¹æ³ãããã¨ä¾¿å©ã§ãã ããã§ãããã¯æå­ã§è¡¨ç¾ããã¦ãã¾ããããããã¯å®éã«ã¯ç´æ¥ä¸ããããã¾ãã¯ç®åºãããæ°å¤ã§ãã ããã¯åç´ãªå¼ã§ããããã®ããã«è¡¨ç¾ãããããããã®è²ã®çè«ãããã¾ãããããªãã¯ã¹ã¯è¤æ°çµã¿åããã§ãããã®ã¨ãã¯å³ããå·¦ã«çµã¿åãããã¾ãã ããã¯è¤éã«è¦ãã¾ãããããªãåç´ãªæ§æã§ãæåã®è¡ãæ°ãã red ãã£ã³ãã«ãä½æãã2çªç®ãæ°ãã green ãã£ã³ãã«ã¨ç¶ãã¾ããèµ¤ã¨ç·ãå¥ãæ¿ãããããªãã¯ã¹ãä½ããããªããæ¬¡ã®ããã«è¨è¿°ãã¾ãã :: `black_color`, `white_color` `color` `desat` `value` 
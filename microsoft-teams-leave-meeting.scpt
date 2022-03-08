FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # Generated from applescript.stencil     � 	 	 F   G e n e r a t e d   f r o m   a p p l e s c r i p t . s t e n c i l   
  
 l     ��  ��    - ' Any modifications will be overwritten!     �   N   A n y   m o d i f i c a t i o n s   w i l l   b e   o v e r w r i t t e n !      l     ��������  ��  ��        l     ��  ��    Y S This script will send the leave meeting hotkey (? + Shift + H) to Microsoft Teams.     �   �   T h i s   s c r i p t   w i l l   s e n d   t h e   l e a v e   m e e t i n g   h o t k e y   (#   +   S h i f t   +   H )   t o   M i c r o s o f t   T e a m s .      l     ��  ��    w q This script is only necessary because Microsoft Teams (as of 05/2021) does not support global shortcuts/hotkeys.     �   �   T h i s   s c r i p t   i s   o n l y   n e c e s s a r y   b e c a u s e   M i c r o s o f t   T e a m s   ( a s   o f   0 5 / 2 0 2 1 )   d o e s   n o t   s u p p o r t   g l o b a l   s h o r t c u t s / h o t k e y s .      l     ��  ��    � ~ The logic here is written in a way that will support the execution of this script regardless of what application is in focus.     �   �   T h e   l o g i c   h e r e   i s   w r i t t e n   i n   a   w a y   t h a t   w i l l   s u p p o r t   t h e   e x e c u t i o n   o f   t h i s   s c r i p t   r e g a r d l e s s   o f   w h a t   a p p l i c a t i o n   i s   i n   f o c u s .     !   l     �� " #��   " v p In other words, Microsoft Teams doesn't need to be the active, frontmost application in order for this to work.    # � $ $ �   I n   o t h e r   w o r d s ,   M i c r o s o f t   T e a m s   d o e s n ' t   n e e d   t o   b e   t h e   a c t i v e ,   f r o n t m o s t   a p p l i c a t i o n   i n   o r d e r   f o r   t h i s   t o   w o r k . !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) = 7 https://github.com/kpshek/microsoft-teams-applescripts    * � + + n   h t t p s : / / g i t h u b . c o m / k p s h e k / m i c r o s o f t - t e a m s - a p p l e s c r i p t s (  , - , l     ��������  ��  ��   -  .�� . l    � /���� / Z     � 0 1���� 0 =     2 3 2 n      4 5 4 1    ��
�� 
prun 5 m      6 6�                                                                                      @ alis    F  Macintosh HD                   BD ����Microsoft Teams.app                                            ����            ����  
 cu             Applications  #/:Applications:Microsoft Teams.app/   (  M i c r o s o f t   T e a m s . a p p    M a c i n t o s h   H D   Applications/Microsoft Teams.app  / ��   3 m    ��
�� boovtrue 1 k    � 7 7  8 9 8 l   ��������  ��  ��   9  : ; : l   �� < =��   < 0 * Remember the current application in focus    = � > > T   R e m e m b e r   t h e   c u r r e n t   a p p l i c a t i o n   i n   f o c u s ;  ? @ ? r     A B A l    C���� C I   �� D E
�� .earsffdralis        afdr D m    	��
�� appfegfp E �� F��
�� 
rtyp F m   
 ��
�� 
ctxt��  ��  ��   B o      ���� 0 old   @  G H G l   ��������  ��  ��   H  I J I I   �� K��
�� .miscactvnull��� ��� null K m     L L�                                                                                      @ alis    F  Macintosh HD                   BD ����Microsoft Teams.app                                            ����            ����  
 cu             Applications  #/:Applications:Microsoft Teams.app/   (  M i c r o s o f t   T e a m s . a p p    M a c i n t o s h   H D   Applications/Microsoft Teams.app  / ��  ��   J  M N M l   ��������  ��  ��   N  O P O O    , Q R Q r    + S T S 6   ) U V U 4    �� W
�� 
pcap W m    ����  V =  ! ( X Y X 1   " $��
�� 
pisf Y m   % '��
�� boovtrue T o      ���� "0 teamsappprocess teamsAppProcess R m     Z Z�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   P  [ \ [ l  - -��������  ��  ��   \  ] ^ ] l  - -�� _ `��   _  y Teams can have multiple windows, only one of which is our meeting window that supports the hotkey we are wanting to send    ` � a a �   T e a m s   c a n   h a v e   m u l t i p l e   w i n d o w s ,   o n l y   o n e   o f   w h i c h   i s   o u r   m e e t i n g   w i n d o w   t h a t   s u p p o r t s   t h e   h o t k e y   w e   a r e   w a n t i n g   t o   s e n d ^  b c b O   - u d e d k   1 t f f  g h g l  1 1�� i j��   i &   Loop through every Teams window    j � k k @   L o o p   t h r o u g h   e v e r y   T e a m s   w i n d o w h  l�� l X   1 t m�� n m k   C o o o  p q p l  C C�� r s��   r Q K Press the leave meeting hotkey (? + Shift + H) in the current Teams window    s � t t �   P r e s s   t h e   l e a v e   m e e t i n g   h o t k e y   (#   +   S h i f t   +   H )   i n   t h e   c u r r e n t   T e a m s   w i n d o w q  u v u O  C Z w x w I  G Y�� y z
�� .prcskprsnull���     ctxt y m   G J { { � | |  H z �� }��
�� 
faal } J   M U ~ ~   �  m   M P��
�� eMdsKcmd �  ��� � m   P S��
�� eMdsKsft��  ��   x m   C D � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   v  � � � l  [ [��������  ��  ��   �  � � � l  [ [�� � ���   � < 6 Press ? + ` to switch to the next window within Teams    � � � � l   P r e s s  #   +   `   t o   s w i t c h   t o   t h e   n e x t   w i n d o w   w i t h i n   T e a m s �  ��� � O  [ o � � � I  _ n�� � �
�� .prcskprsnull���     ctxt � m   _ b � � � � �  ` � �� ���
�� 
faal � J   e j � �  ��� � m   e h��
�� eMdsKcmd��  ��   � m   [ \ � ��                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  �� 0 	thewindow 	theWindow n l  4 7 ����� � 2   4 7��
�� 
cwin��  ��  ��   e o   - .���� "0 teamsappprocess teamsAppProcess c  � � � l  v v��������  ��  ��   �  � � � l  v v�� � ���   � A ; Set focus back to the original application we had in focus    � � � � v   S e t   f o c u s   b a c k   t o   t h e   o r i g i n a l   a p p l i c a t i o n   w e   h a d   i n   f o c u s �  ��� � I  v ��� ���
�� .miscactvnull��� ��� null � 4   v |�� �
�� 
capp � o   z {���� 0 old  ��  ��  ��  ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  .����  ��  ��   � ���� 0 	thewindow 	theWindow �  6�������������� Z�� ������������� {�������� ���
�� 
prun
�� appfegfp
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr�� 0 old  
�� .miscactvnull��� ��� null
�� 
pcap �  
�� 
pisf�� "0 teamsappprocess teamsAppProcess
�� 
cwin
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
faal
�� eMdsKcmd
�� eMdsKsft
�� .prcskprsnull���     ctxt
�� 
capp�� ���,e  }���l E�O�j O� *�k/�[�,\Ze81E�UO� E B*�-[��l kh  � a a a a lvl UO� a a a kvl U[OY��UO*a �/j Y hascr  ��ޭ
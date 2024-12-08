����   A�
      java/lang/Object <init> ()V	  	 
   !com/saiuya/blog/entity/SiteConfig id Ljava/lang/Integer;	     
userAvatar Ljava/lang/String;	     touristAvatar	     siteName	     siteAddress	     	siteIntro	     
siteNotice	  ! "  createSiteTime	  $ %  recordNumber	  ' (  authorAvatar	  * +  
siteAuthor	  - .  articleCover	  0 1  aboutMe	  3 4  github	  6 7  gitee	  9 :  bilibili	  < =  qq	  ? @  commentCheck	  B C  messageCheck	  E F  isReward	  H I  
weiXinCode	  K L  aliCode	  N O  emailNotice	  Q R  
socialList	  T U  	loginList	  W X  isMusic	  Z [  musicId	  ] ^  isChat	  ` a  websocketUrl	  c d e 
createTime Ljava/time/LocalDateTime;	  g h e 
updateTime
  j k l canEqual (Ljava/lang/Object;)Z
  n o p getId ()Ljava/lang/Integer;
  r s l equals
  u v p getCommentCheck
  x y p getMessageCheck
  { | p getIsReward
  ~  p getEmailNotice
  � � p 
getIsMusic
  � � p 	getIsChat
  � � � getUserAvatar ()Ljava/lang/String;
  � � � getTouristAvatar
  � � � getSiteName
  � � � getSiteAddress
  � � � getSiteIntro
  � � � getSiteNotice
  � � � getCreateSiteTime
  � � � getRecordNumber
  � � � getAuthorAvatar
  � � � getSiteAuthor
  � � � getArticleCover
  � � � 
getAboutMe
  � � � 	getGithub
  � � � getGitee
  � � � getBilibili
  � � � getQq
  � � � getWeiXinCode
  � � � 
getAliCode
  � � � getSocialList
  � � � getLoginList
  � � � 
getMusicId
  � � � getWebsocketUrl
  � � � getCreateTime ()Ljava/time/LocalDateTime;
  � � � getUpdateTime
  � � � hashCode ()I
 � � � � � java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   � � � makeConcatWithConstantsI(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations -Lcom/baomidou/mybatisplus/annotation/TableId; type ,Lcom/baomidou/mybatisplus/annotation/IdType; AUTO -Lcom/fasterxml/jackson/annotation/JsonIgnore; 0Lcom/baomidou/mybatisplus/annotation/TableField; fill /Lcom/baomidou/mybatisplus/annotation/FieldFill; INSERT UPDATE Code LineNumberTable LocalVariableTable this #Lcom/saiuya/blog/entity/SiteConfig; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all setId (Ljava/lang/Integer;)V MethodParameters setUserAvatar (Ljava/lang/String;)V setTouristAvatar setSiteName setSiteAddress setSiteIntro setSiteNotice setCreateSiteTime setRecordNumber setAuthorAvatar setSiteAuthor setArticleCover 
setAboutMe 	setGithub setGitee setBilibili setQq setCommentCheck setMessageCheck setIsReward setWeiXinCode 
setAliCode setEmailNotice setSocialList setLoginList 
setIsMusic 
setMusicId 	setIsChat setWebsocketUrl setCreateTime (Ljava/time/LocalDateTime;)V setUpdateTime o Ljava/lang/Object; other this$id other$id this$commentCheck other$commentCheck this$messageCheck other$messageCheck this$isReward other$isReward this$emailNotice other$emailNotice this$isMusic other$isMusic this$isChat other$isChat this$userAvatar other$userAvatar this$touristAvatar other$touristAvatar this$siteName other$siteName this$siteAddress other$siteAddress this$siteIntro other$siteIntro this$siteNotice other$siteNotice this$createSiteTime other$createSiteTime this$recordNumber other$recordNumber this$authorAvatar other$authorAvatar this$siteAuthor other$siteAuthor this$articleCover other$articleCover this$aboutMe other$aboutMe this$github other$github 
this$gitee other$gitee this$bilibili other$bilibili this$qq other$qq this$weiXinCode other$weiXinCode this$aliCode other$aliCode this$socialList other$socialList this$loginList other$loginList this$musicId other$musicId this$websocketUrl other$websocketUrl this$createTime other$createTime this$updateTime other$updateTime StackMapTable Ljava/lang/Override; PRIME I result $id $commentCheck $messageCheck 	$isReward $emailNotice $isMusic $isChat $userAvatar $touristAvatar 	$siteName $siteAddress 
$siteIntro $siteNotice $createSiteTime $recordNumber $authorAvatar $siteAuthor $articleCover $aboutMe $github $gitee 	$bilibili $qq $weiXinCode $aliCode $socialList 
$loginList $musicId $websocketUrl $createTime $updateTime toString 
SourceFile SiteConfig.java Llombok/Data; BootstrapMethods��SiteConfig(id=, userAvatar=, touristAvatar=, siteName=, siteAddress=, siteIntro=, siteNotice=, createSiteTime=, recordNumber=, authorAvatar=, siteAuthor=, articleCover=, aboutMe=, github=, gitee=, bilibili=, qq=, commentCheck=, messageCheck=, isReward=, weiXinCode=, aliCode=, emailNotice=, socialList=, loginList=, isMusic=, musicId=, isChat=, websocketUrl=, createTime=, updateTime=)�
��� �� $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses� %java/lang/invoke/MethodHandles$Lookup� java/lang/invoke/MethodHandles Lookup !          �     �  �e � �                                "     %     (     +     .     1     4     7     :     =     @     C     F     I     L     O     R     U     X     [     ^     a     d e  �     �   �  �e � �  h e  �     �   �  �e � � C     �   /     *� �    �        �        � �   �     �   �     �  �[ s �  o p  �   /     *� �    �        �        � �   �     �   �     �  �[ s �  � �  �   /     *� �    �        �        � �   �     �   �     �  �[ s �  � �  �   /     *� �    �       ! �        � �   �     �   �     �  �[ s �  � �  �   /     *� �    �       & �        � �   �     �   �     �  �[ s �  � �  �   /     *� �    �       + �        � �   �     �   �     �  �[ s �  � �  �   /     *� �    �       0 �        � �   �     �   �     �  �[ s �  � �  �   /     *� �    �       5 �        � �   �     �   �     �  �[ s �  � �  �   /     *�  �    �       : �        � �   �     �   �     �  �[ s �  � �  �   /     *� #�    �       ? �        � �   �     �   �     �  �[ s �  � �  �   /     *� &�    �       D �        � �   �     �   �     �  �[ s �  � �  �   /     *� )�    �       I �        � �   �     �   �     �  �[ s �  � �  �   /     *� ,�    �       N �        � �   �     �   �     �  �[ s �  � �  �   /     *� /�    �       S �        � �   �     �   �     �  �[ s �  � �  �   /     *� 2�    �       X �        � �   �     �   �     �  �[ s �  � �  �   /     *� 5�    �       ] �        � �   �     �   �     �  �[ s �  � �  �   /     *� 8�    �       b �        � �   �     �   �     �  �[ s �  � �  �   /     *� ;�    �       g �        � �   �     �   �     �  �[ s �  v p  �   /     *� >�    �       l �        � �   �     �   �     �  �[ s �  y p  �   /     *� A�    �       q �        � �   �     �   �     �  �[ s �  | p  �   /     *� D�    �       v �        � �   �     �   �     �  �[ s �  � �  �   /     *� G�    �       { �        � �   �     �   �     �  �[ s �  � �  �   /     *� J�    �       � �        � �   �     �   �     �  �[ s �   p  �   /     *� M�    �       � �        � �   �     �   �     �  �[ s �  � �  �   /     *� P�    �       � �        � �   �     �   �     �  �[ s �  � �  �   /     *� S�    �       � �        � �   �     �   �     �  �[ s �  � p  �   /     *� V�    �       � �        � �   �     �   �     �  �[ s �  � �  �   /     *� Y�    �       � �        � �   �     �   �     �  �[ s �  � p  �   /     *� \�    �       � �        � �   �     �   �     �  �[ s �  � �  �   /     *� _�    �       � �        � �   �     �   �     �  �[ s �  � �  �   /     *� b�    �       � �        � �   �     �   �     �  �[ s �  � �  �   /     *� f�    �       � �        � �   �     �   �     �  �[ s �  � �  �   :     *+� �    �        �        � �         �      �     �   �     �  �[ s �  � �  �   :     *+� �    �        �        � �         �      �     �   �     �  �[ s �  � �  �   :     *+� �    �        �        � �         �      �     �   �     �  �[ s �  � �  �   :     *+� �    �        �        � �         �      �     �   �     �  �[ s �  � �  �   :     *+� �    �        �        � �         �      �     �   �     �  �[ s �  � �  �   :     *+� �    �        �        � �         �      �     �   �     �  �[ s �  � �  �   :     *+� �    �        �        � �         �      �     �   �     �  �[ s �  � �  �   :     *+�  �    �        �        � �      "   �    "  �     �   �     �  �[ s �  � �  �   :     *+� #�    �        �        � �      %   �    %  �     �   �     �  �[ s �   �  �   :     *+� &�    �        �        � �      (   �    (  �     �   �     �  �[ s �  �  �   :     *+� )�    �        �        � �      +   �    +  �     �   �     �  �[ s �  �  �   :     *+� ,�    �        �        � �      .   �    .  �     �   �     �  �[ s �  �  �   :     *+� /�    �        �        � �      1   �    1  �     �   �     �  �[ s �  �  �   :     *+� 2�    �        �        � �      4   �    4  �     �   �     �  �[ s �  �  �   :     *+� 5�    �        �        � �      7   �    7  �     �   �     �  �[ s �  �  �   :     *+� 8�    �        �        � �      :   �    :  �     �   �     �  �[ s �  �  �   :     *+� ;�    �        �        � �      =   �    =  �     �   �     �  �[ s �  �  �   :     *+� >�    �        �        � �      @   �    @  �     �   �     �  �[ s � 	 �  �   :     *+� A�    �        �        � �      C   �    C  �     �   �     �  �[ s � 
 �  �   :     *+� D�    �        �        � �      F   �    F  �     �   �     �  �[ s �  �  �   :     *+� G�    �        �        � �      I   �    I  �     �   �     �  �[ s �  �  �   :     *+� J�    �        �        � �      L   �    L  �     �   �     �  �[ s �  �  �   :     *+� M�    �        �        � �      O   �    O  �     �   �     �  �[ s �  �  �   :     *+� P�    �        �        � �      R   �    R  �     �   �     �  �[ s �  �  �   :     *+� S�    �        �        � �      U   �    U  �     �   �     �  �[ s �  �  �   :     *+� V�    �        �        � �      X   �    X  �     �   �     �  �[ s �  �  �   :     *+� Y�    �        �        � �      [   �    [  �     �   �     �  �[ s �  �  �   :     *+� \�    �        �        � �      ^   �    ^  �     �   �     �  �[ s �  �  �   :     *+� _�    �        �        � �      a   �    a  �     �   �     �  �[ s �   �   :     *+� b�    �        �        � �      d e  �    d  �     �   �     �   �     �  �[ s �   �   :     *+� f�    �        �        � �      h e  �    h  �     �   �     �   �     �  �[ s �  s l  �  �  A  �+*� �+� � �+� M,*� i� �*� mN,� m:-� � � -� q� �*� t:,� t:� � � � q� �*� w:,� w:� � � � q� �*� z:	,� z:
	� 
� � 	
� q� �*� }:,� }:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �:� � � � q� �*� �:,� �: �  � �  � q� �*� �:!,� �:"!� "� � !"� q� �*� �:#,� �:$#� $� � #$� q� �*� �:%,� �:&%� &� � %&� q� �*� �:',� �:('� (� � '(� q� �*� �:),� �:*)� *� � )*� q� �*� �:+,� �:,+� ,� � +,� q� �*� �:-,� �:.-� .� � -.� q� �*� �:/,� �:0/� 0� � /0� q� �*� �:1,� �:21� 2� � 12� q� �*� �:3,� �:43� 4� � 34� q� �*� �:5,� �:65� 6� � 56� q� �*� �:7,� �:87� 8� � 78� q� �*� �:9,� �::9� :� � 9:� q� �*� �:;,� �:<;� <� � ;<� q� �*� �:=,� �:>=� >� � =>� q� �*� �:?,� �:@?� @� � ?@� q� ��    �        �  � A  � � �    �  � �  $u  *o  GR  ML  l-  r'  �  	 �! 
 ��"  ��#  ��$  ��%  �& �' %t( +n) JO* PI+ o*, u$- �. ��/ ��0 ��1 ��2 ��3 �4 	�5 (q6 .k7  ML8 !SF9 "r': #x!; $�< %��= &��> '��? (��@ )��A *�B +�C ,+nD -1hE .PIF /VCG 0u$H 1{I 2� �J 3� �K 4� �L 5� �M 6� �N 7� �O 8	 �P 9 �Q :. kR ;4 eS <S FT =Y @U >x !V ?~ W @X  _ `�  �   �   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	�   	 �     �     �   �    Y   �  �[ s �  k l  �   9     +� �    �        �        � �       �     �     �   �     �  �[ s �  � �  �  �  "  I;<=*� mN;h-� +� -� �`=*� t:;h� +� � �`=*� w:;h� +� � �`=*� z:;h� +� � �`=*� }:;h� +� � �`=*� �:;h� +� � �`=*� �:	;h	� +� 	� �`=*� �:
;h
� +� 
� �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �:;h� +� � �`=*� �: ;h � +�  � �`=*� �:!;h!� +� !� �`=�    �        �  V "  I � �   FZ[  D\[  
?]  #&^  >_  Y�`  t�a  ��b  ��c 	 ��d 
 �ie  �Nf 3g 1h L�i g�j ��k ��l ��m �vn �[o 	@p $%q ?
r Z �s u �t � �u � �v � �w � hx � My  2z  2 { !X  � >�     �     �      �      �       �       �        �        �         �         �  	        �  	        �  
         �  
         �            �            �             �             �              �              �               �               �                �                �                 �                 �                  �                  �                   �                   �                    �                    �                     �                     �                      �                      �                       �                       �                        �                        �                         �                         �                          �                          �                           �                           �                            �                            �                             �                             �                              �                              �                               �                               �                                �                                �                                  �                                  �  !                                �  !                                �  "                                 �  "                                  �     �   �    Y   �  �[ s � | �  �   �     �*� m*� �*� �*� �*� �*� �*� �*� �*� �*� �*� �*� �*� �*� �*� �*� �*� �*� t*� w*� z*� �*� �*� }*� �*� �*� �*� �*� �*� �*� ɸ �*� ͸ Ժ �  �    �        �       � � �   �     �   �    Y   �  �[ s � }   ~ �      �    � ��   
 ��� 
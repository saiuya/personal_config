Êþº¾   A ð
      java/lang/Object <init> ()V	  	 
   -com/saiuya/blog/model/vo/response/ArticleResp id Ljava/lang/Integer;	     articleCover Ljava/lang/String;	     articleTitle	     articleContent	     articleType	     	viewCount	     	likeCount	  ! " # category 6Lcom/saiuya/blog/model/vo/response/CategoryOptionResp;	  % & ' 	tagVOList Ljava/util/List;	  ) * + lastArticle 9Lcom/saiuya/blog/model/vo/response/ArticlePaginationResp;	  - . + nextArticle	  0 1 2 
createTime Ljava/time/LocalDateTime;	  4 5 2 
updateTime
  7 8 9 canEqual (Ljava/lang/Object;)Z
  ; < = getId ()Ljava/lang/Integer;
  ? @ 9 equals
  B C = getArticleType
  E F = getViewCount
  H I = getLikeCount
  K L M getArticleCover ()Ljava/lang/String;
  O P M getArticleTitle
  R S M getArticleContent
  U V W getCategory 8()Lcom/saiuya/blog/model/vo/response/CategoryOptionResp;
  Y Z [ getTagVOList ()Ljava/util/List;
  ] ^ _ getLastArticle ;()Lcom/saiuya/blog/model/vo/response/ArticlePaginationResp;
  a b _ getNextArticle
  d e f getCreateTime ()Ljava/time/LocalDateTime;
  h i f getUpdateTime
  k l m hashCode ()I
 o p q r s java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   u v w makeConcatWithConstants(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value æç« id æç« ç¼©ç¥å¾ æç« æ é¢ æç« åå®¹ &æç« ç±»å (1åå 2è½¬è½½ 3ç¿»è¯) 	æµè§é 	ç¹èµé æç« åç±» 	Signature CLjava/util/List<Lcom/saiuya/blog/model/vo/response/TagOptionResp;>; æç« æ ç­¾ ä¸ä¸ç¯æç«  ä¸ä¸ç¯æç«  åè¡¨æ¶é´ æ´æ°æ¶é´ Code LineNumberTable LocalVariableTable this /Lcom/saiuya/blog/model/vo/response/ArticleResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all E()Ljava/util/List<Lcom/saiuya/blog/model/vo/response/TagOptionResp;>; setId (Ljava/lang/Integer;)V MethodParameters setArticleCover (Ljava/lang/String;)V setArticleTitle setArticleContent setArticleType setViewCount setLikeCount setCategory 9(Lcom/saiuya/blog/model/vo/response/CategoryOptionResp;)V setTagVOList (Ljava/util/List;)V LocalVariableTypeTable F(Ljava/util/List<Lcom/saiuya/blog/model/vo/response/TagOptionResp;>;)V setLastArticle <(Lcom/saiuya/blog/model/vo/response/ArticlePaginationResp;)V setNextArticle setCreateTime (Ljava/time/LocalDateTime;)V setUpdateTime o Ljava/lang/Object; other this$id other$id this$articleType other$articleType this$viewCount other$viewCount this$likeCount other$likeCount this$articleCover other$articleCover this$articleTitle other$articleTitle this$articleContent other$articleContent this$category other$category this$tagVOList other$tagVOList this$lastArticle other$lastArticle this$nextArticle other$nextArticle this$createTime other$createTime this$updateTime other$updateTime StackMapTable Ljava/lang/Override; PRIME I result $id $articleType 
$viewCount 
$likeCount $articleCover $articleTitle $articleContent 	$category 
$tagVOList $lastArticle $nextArticle $createTime $updateTime toString 
SourceFile ArticleResp.java !Lio/swagger/annotations/ApiModel; description æç« Response Llombok/Data; BootstrapMethods ã ¿ArticleResp(id=, articleCover=, articleTitle=, articleContent=, articleType=, viewCount=, likeCount=, category=, tagVOList=, lastArticle=, nextArticle=, createTime=, updateTime=) å
 æ ç è v é $java/lang/invoke/StringConcatFactory (Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses ì %java/lang/invoke/MethodHandles$Lookup î java/lang/invoke/MethodHandles Lookup !          x     y  zs {     x     y  zs |     x     y  zs }     x     y  zs ~     x     y  zs      x     y  zs      x     y  zs   " #  x     y  zs   & '       x     y  zs   * +  x     y  zs   . +  x     y  zs   1 2  x     y  zs   5 2  x     y  zs          /     *· ±                                       z[ s   < =     /     *´ °                                       z[ s   L M     /     *´ °                                       z[ s   P M     /     *´ °           #                            z[ s   S M     /     *´ °           )                            z[ s   C =     /     *´ °           /                            z[ s   F =     /     *´ °           5                            z[ s   I =     /     *´ °           ;                            z[ s   V W     /     *´  °           A                            z[ s   Z [     /     *´ $°           G                                 z[ s   ^ _     /     *´ (°           M                            z[ s   b _     /     *´ ,°           S                            z[ s   e f     /     *´ /°           Y                            z[ s   i f     /     *´ 3°           _                            z[ s         :     *+µ ±                                                   z[ s         :     *+µ ±                                                   z[ s         :     *+µ ±                                                   z[ s         :     *+µ ±                                                   z[ s         :     *+µ ±                                                   z[ s         :     *+µ ±                                                   z[ s         :     *+µ ±                                                   z[ s          :     *+µ  ±                           " #      "                 z[ s   ¡ ¢     L     *+µ $±                           & '  £        &       &      ¤                z[ s   ¥ ¦     :     *+µ (±                           * +      *                 z[ s   § ¦     :     *+µ ,±                           . +      .                 z[ s   ¨ ©     :     *+µ /±                           1 2      1                 z[ s   ª ©     :     *+µ 3±                           5 2      5                 z[ s   @ 9    à    ÿ+*¦ ¬+Á  ¬+À M,*¶ 6 ¬*¶ :N,¶ ::-Ç Æ § -¶ > ¬*¶ A:,¶ A:Ç Æ § ¶ > ¬*¶ D:,¶ D:Ç Æ § ¶ > ¬*¶ G:	,¶ G:
	Ç 
Æ § 	
¶ > ¬*¶ J:,¶ J:Ç Æ § ¶ > ¬*¶ N:,¶ N:Ç Æ § ¶ > ¬*¶ Q:,¶ Q:Ç Æ § ¶ > ¬*¶ T:,¶ T:Ç Æ § ¶ > ¬*¶ X:,¶ X:Ç Æ § ¶ > ¬*¶ \:,¶ \:Ç Æ § ¶ > ¬*¶ `:,¶ `:Ç Æ § ¶ > ¬*¶ c:,¶ c:Ç Æ § ¶ > ¬*¶ g:,¶ g:Ç Æ § ¶ > ¬¬              $   ÿ      ÿ « ¬  ê ­   $Û ® ¬  *Õ ¯ ¬  G¸ ° ¬  M² ± ¬  l ² ¬  r ³ ¬  n ´ ¬ 	 h µ ¬ 
 ¶I ¶ ¬  ¼C · ¬  Û$ ¸ ¬  á ¹ ¬   ÿ º ¬  ù » ¬ % Ú ¼ ¬ + Ô ½ ¬ J µ ¾ ¬ P ¯ ¿ ¬ o  À ¬ u  Á ¬  k Â ¬  e Ã ¬ ¹ F Ä ¬ ¿ @ Å ¬ Þ ! Æ ¬ ä  Ç ¬  È    *ü  ý   ý   	ý   	ý   	ý   	ý   	ý   	ý   	ý   	ý   	ý   	ý   	ý   	     «               É     z[ s   8 9     9     +Á ¬                           ­ ¬      ­                 z[ s   l m    ¬    c;<=*¶ :N;h-Ç +§ -¶ j`=*¶ A:;hÇ +§ ¶ j`=*¶ D:;hÇ +§ ¶ j`=*¶ G:;hÇ +§ ¶ j`=*¶ J:;hÇ +§ ¶ j`=*¶ N:;hÇ +§ ¶ j`=*¶ Q:	;h	Ç +§ 	¶ j`=*¶ T:
;h
Ç +§ 
¶ j`=*¶ X:;hÇ +§ ¶ j`=*¶ \:;hÇ +§ ¶ j`=*¶ `:;hÇ +§ ¶ j`=*¶ c:;hÇ +§ ¶ j`=*¶ g:;hÇ +§ ¶ j`=¬               ¢   c     ` Ê Ë  ^ Ì Ë  
Y Í ¬  #@ Î ¬  >% Ï ¬  Y
 Ð ¬  t ï Ñ ¬   Ô Ò ¬  ª ¹ Ó ¬ 	 Å  Ô ¬ 
 à  Õ ¬  û h Ö ¬  M × ¬ 1 2 Ø ¬ L  Ù ¬  È   ÿ     ÿ     ÿ      ÿ      ÿ       ÿ       ÿ        ÿ        ÿ         ÿ         ÿ  	        ÿ  	        ÿ  
         ÿ  
         ÿ            ÿ            ÿ             ÿ             ÿ              ÿ              ÿ               ÿ               ÿ                ÿ                ÿ                 ÿ                               É     z[ s   Ú M     v     L*¶ :*¶ J*¶ N*¶ Q*¶ A*¶ D*¶ G*¶ T¸ n*¶ X¸ n*¶ \¸ n*¶ `¸ n*¶ c¸ n*¶ g¸ nº t  °                   L                  É     z[ s   Û    Ü x     Ý  Þs ß      à   á     ä  â ê   
  ë í ï 
����   A i
      java/lang/Object <init> ()V	  	 
   Jcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder 	viewCount Ljava/lang/Integer;	     messageCount Ljava/lang/Long;	     	userCount	     articleCount	     categoryVOList Ljava/util/List;	     	tagVOList	      articleStatisticsList	  " #  articleRankVOList	  % &  userViewVOList ( 2com/saiuya/blog/model/vo/response/BlogBackInfoResp
 ' *  + �(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
 - . / 0 1 java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   3 4 5 makeConcatWithConstants �(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all 	Signature BLjava/util/List<Lcom/saiuya/blog/model/vo/response/CategoryResp;>; CLjava/util/List<Lcom/saiuya/blog/model/vo/response/TagOptionResp;>; KLjava/util/List<Lcom/saiuya/blog/model/vo/response/ArticleStatisticsResp;>; ELjava/util/List<Lcom/saiuya/blog/model/vo/response/ArticleRankResp;>; BLjava/util/List<Lcom/saiuya/blog/model/vo/response/UserViewResp;>; Code LineNumberTable LocalVariableTable this LLcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; a(Ljava/lang/Integer;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; MethodParameters ^(Ljava/lang/Long;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; ^(Ljava/util/List;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; LocalVariableTypeTable �(Ljava/util/List<Lcom/saiuya/blog/model/vo/response/CategoryResp;>;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; �(Ljava/util/List<Lcom/saiuya/blog/model/vo/response/TagOptionResp;>;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; �(Ljava/util/List<Lcom/saiuya/blog/model/vo/response/ArticleStatisticsResp;>;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; �(Ljava/util/List<Lcom/saiuya/blog/model/vo/response/ArticleRankResp;>;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; �(Ljava/util/List<Lcom/saiuya/blog/model/vo/response/UserViewResp;>;)Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp$BlogBackInfoRespBuilder; build 6()Lcom/saiuya/blog/model/vo/response/BlogBackInfoResp; toString ()Ljava/lang/String; Ljava/lang/Override; 
SourceFile BlogBackInfoResp.java NestHost BootstrapMethods [ �BlogBackInfoResp.BlogBackInfoRespBuilder(viewCount=, messageCount=, userCount=, articleCount=, categoryVOList=, tagVOList=, articleStatisticsList=, articleRankVOList=, userViewVOList=) ]
 ^ _ ` 4 a $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses BlogBackInfoRespBuilder e %java/lang/invoke/MethodHandles$Lookup g java/lang/invoke/MethodHandles Lookup !     	     6     7   8     9  :[ s ;     6     7   8     9  :[ s ;     6     7   8     9  :[ s ;     6     7   8     9  :[ s ;     <    = 6     7   8     9  :[ s ;     <    > 6     7   8     9  :[ s ;      <    ? 6     7   8     9  :[ s ;  #   <    @ 6     7   8     9  :[ s ;  &   <    A 6     7   8     9  :[ s ;       B   /     *� �    C        D        E F   6     7   8     9  :[ s ;   G  B   ;     *+� *�    C        D        E F         H      6     7   8     9  :[ s ;   I  B   ;     *+� *�    C        D        E F         H      6     7   8     9  :[ s ;   I  B   ;     *+� *�    C        D        E F         H      6     7   8     9  :[ s ;   I  B   ;     *+� *�    C        D        E F         H      6     7   8     9  :[ s ;   J  B   M     *+� *�    C        D        E F         K         =  H      <    L 6     7   8     9  :[ s ;   J  B   M     *+� *�    C        D        E F         K         >  H      <    M 6     7   8     9  :[ s ;    J  B   M     *+� *�    C        D        E F          K          ?  H       <    N 6     7   8     9  :[ s ;  # J  B   M     *+� !*�    C        D        E F      #   K        # @  H    #  <    O 6     7   8     9  :[ s ;  & J  B   M     *+� $*�    C        D        E F      &   K        & A  H    &  <    P 6     7   8     9  :[ s ;  Q R  B   V     ,� 'Y*� *� *� *� *� *� *� *� !*� $� )�    C        D       , E F   6     7   8     9  :[ s ;  S T  B   c 	    9*� *� *� *� *� � ,*� � ,*� � ,*� !� ,*� $� ,� 2  �    C        D       9 E F   6     7   8     U   9  :[ s ;  V    W 6     7   8     9  :[ s ; X    ' Y     \  Z b      ' c 	 d f h 
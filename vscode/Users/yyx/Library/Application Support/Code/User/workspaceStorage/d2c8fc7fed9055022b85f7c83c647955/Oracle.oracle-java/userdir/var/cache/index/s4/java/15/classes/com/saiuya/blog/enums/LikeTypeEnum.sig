����   A Y  "com/saiuya/blog/enums/LikeTypeEnum	     ARTICLE $Lcom/saiuya/blog/enums/LikeTypeEnum;	   	  COMMENT	     TALK	     $VALUES %[Lcom/saiuya/blog/enums/LikeTypeEnum;
      clone ()Ljava/lang/Object;
      java/lang/Enum valueOf 5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;	     likeType Ljava/lang/String;	  ! "  strategy
  $ % & <init> (Ljava/lang/String;I)V  ) 文章 + articleLikeStrategyImpl
  - % . :(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V 	 1 评论 3 commentLikeStrategyImpl  6 说说 8 talkLikeStrategyImpl
  : ; < $values '()[Lcom/saiuya/blog/enums/LikeTypeEnum; values Code LineNumberTable 8(Ljava/lang/String;)Lcom/saiuya/blog/enums/LikeTypeEnum; LocalVariableTable name MethodParameters getLikeType ()Ljava/lang/String; this RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all getStrategy 
$enum$name $enum$ordinal 	Signature '(Ljava/lang/String;Ljava/lang/String;)V <clinit> ()V 6Ljava/lang/Enum<Lcom/saiuya/blog/enums/LikeTypeEnum;>; 
SourceFile LikeTypeEnum.java Llombok/Getter; Llombok/AllArgsConstructor;@1     @    @ 	   @           "         	 = <  >   "      
� � � �    ?        	  @  >   4     
*� � �    ?        A       
 B    C    B�   D E  >   /     *� �    ?       ! A        F    G     H   I     J  K[ s L  M E  >   /     *�  �    ?       & A        F    G     H   I     J  K[ s L  % .  >   P     *+� #*-� *�  �    ?        A         F             "   C    N  O    "  P    Q G     H   I     J  K[ s L
 ; <  >   /      � Y� SY� SY� 
S�    ?         R S  >   ^      :� Y'(*� ,� � Y/02� ,� � Y457� ,� 
� 9� �    ?          "  3   P    T U    V I   
  W   X  
����   A l  #com/saiuya/blog/enums/LoginTypeEnum	     EMAIL %Lcom/saiuya/blog/enums/LoginTypeEnum;	   	  QQ	     GITEE	     GITHUB	     $VALUES &[Lcom/saiuya/blog/enums/LoginTypeEnum;
      clone ()Ljava/lang/Object;
      java/lang/Enum valueOf 5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;	    ! " 	loginType Ljava/lang/Integer;	  $ % & description Ljava/lang/String;	  ( ) & strategy
  + , - <init> (Ljava/lang/String;I)V 
 0 1 2  3 java/lang/Integer (I)Ljava/lang/Integer; 5 邮箱登录 7  
  9 , : M(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V 	 = QQ登录 ? qqLoginStrategyImpl  B Gitee登录 D giteeLoginStrategyImpl  G Github登录 I githubLoginStrategyImpl
  K L M $values (()[Lcom/saiuya/blog/enums/LoginTypeEnum; values Code LineNumberTable 9(Ljava/lang/String;)Lcom/saiuya/blog/enums/LoginTypeEnum; LocalVariableTable name MethodParameters getLoginType ()Ljava/lang/Integer; this RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all getDescription ()Ljava/lang/String; getStrategy 
$enum$name $enum$ordinal 	Signature :(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V <clinit> ()V 7Ljava/lang/Enum<Lcom/saiuya/blog/enums/LoginTypeEnum;>; 
SourceFile LoginTypeEnum.java Llombok/Getter; Llombok/AllArgsConstructor;@1     @    @ 	   @    @      ! "    % &    ) &        	 N M  O   "      
� � � �    P        	  Q  O   4     
*� � �    P        R       
 S &   T    S�   U V  O   /     *� �    P       & R        W    X     Y   Z     [  \[ s ]  ^ _  O   /     *� #�    P       + R        W    X     Y   Z     [  \[ s ]  ` _  O   /     *� '�    P       0 R        W    X     Y   Z     [  \[ s ]  , :  O   `     *+� **-� *� #*� '�    P        R   *     W       ! "     % &     ) &  T    a  b  !  %  )  c    d X     Y   Z     [  \[ s ]
 L M  O   5      � Y� SY� SY� 
SY� S�    P         e f  O   �      [� Y.� /46� 8� � Y;� /<>� 8� � Y@� /AC� 8� 
� YE� /FH� 8� � J� �    P          *  ? ! T   c    g h    i Z   
  j   k  
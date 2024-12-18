Źžŗ¾   A æ	      ?com/saiuya/blog/annotation/serialize/DesensitizationSerialize$1 8$SwitchMap$com$saiuya$blog$enums$DesensitizationTypeEnum [I	  	 
   =com/saiuya/blog/annotation/serialize/DesensitizationSerialize type /Lcom/saiuya/blog/enums/DesensitizationTypeEnum;
      -com/saiuya/blog/enums/DesensitizationTypeEnum ordinal ()I	     startInclude Ljava/lang/Integer;
      java/lang/Integer intValue	     
endExclude
   ! " # $ $cn/hutool/core/text/CharSequenceUtil hide .(Ljava/lang/CharSequence;II)Ljava/lang/String;
 & ' ( ) * (com/fasterxml/jackson/core/JsonGenerator writeString (Ljava/lang/String;)V
 , - . / 0 $cn/hutool/core/util/DesensitizedUtil userId ()Ljava/lang/Long;
 2 3 4 5 6 java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;
 , 8 9 : chineseName &(Ljava/lang/String;)Ljava/lang/String;
 , < = > 	idCardNum ((Ljava/lang/String;II)Ljava/lang/String;
 , @ A : 
fixedPhone
 , C D : mobilePhone
 , F G : ipv4
 , I J K address '(Ljava/lang/String;I)Ljava/lang/String;
 , M N : email
 , P Q : password
 , S T : 
carLicense
 , V W : bankCard Y Z [ \ ] +com/fasterxml/jackson/databind/BeanProperty getType +()Lcom/fasterxml/jackson/databind/JavaType;
 _ ` a b c 'com/fasterxml/jackson/databind/JavaType getRawClass ()Ljava/lang/Class;
 e f g h i java/util/Objects equals '(Ljava/lang/Object;Ljava/lang/Object;)Z k *com/saiuya/blog/annotation/Desensitization Y m n o getAnnotation 4(Ljava/lang/Class;)Ljava/lang/annotation/Annotation; Y q r o getContextAnnotation j t  u 1()Lcom/saiuya/blog/enums/DesensitizationTypeEnum; j w  
  y 5 z (I)Ljava/lang/Integer; j |  
  ~   <init> X(Lcom/saiuya/blog/enums/DesensitizationTypeEnum;Ljava/lang/Integer;Ljava/lang/Integer;)V
      1com/fasterxml/jackson/databind/SerializerProvider findValueSerializer (Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
     findNullValueSerializer ^(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
      -com/fasterxml/jackson/databind/JsonSerializer ()V
     	serialize r(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V  7com/fasterxml/jackson/databind/ser/ContextualSerializer Code LineNumberTable LocalVariableTable this ?Lcom/saiuya/blog/annotation/serialize/DesensitizationSerialize; str Ljava/lang/String; jsonGenerator *Lcom/fasterxml/jackson/core/JsonGenerator; serializerProvider 3Lcom/fasterxml/jackson/databind/SerializerProvider; StackMapTable 
Exceptions ¤ java/io/IOException MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; createContextual (Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer; desensitization ,Lcom/saiuya/blog/annotation/Desensitization; beanProperty -Lcom/fasterxml/jackson/databind/BeanProperty; Æ 3com/fasterxml/jackson/databind/JsonMappingException 	Signature (Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer<*>; RuntimeInvisibleAnnotations Llombok/Generated; Ljava/lang/SuppressWarnings; value all r(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V |Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/String;>;Lcom/fasterxml/jackson/databind/ser/ContextualSerializer; 
SourceFile DesensitizationSerialize.java Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; NestMembers InnerClasses !                            ¤     į² *“ ¶ .Ŗ   Õ         =   V   c   n   {            ©   “   æ   Ź,+*“ ¶ *“ ¶ ø ¶ %§ ,ø +ø 1¶ %§ u,+ø 7¶ %§ j,+ø ;¶ %§ ],+ø ?¶ %§ R,+ø B¶ %§ G,+ø E¶ %§ <,+ø H¶ %§ /,+ø L¶ %§ $,+ø O¶ %§ ,+ø R¶ %§ ,+ø U¶ %§ ±       j    0 H 3 ^ 4 a 7 k 8 n ; v < y ?  @  C  D  G  H  J ¤ K § N ± O “ R ¼ S æ V Ē W Ź Z Ņ [ Õ ^ Ż _ ą b    *    į       į      į      į     ”    ū H







 ¢     £ „             ¦     §    Ø ©     é     g,Ę `,¹ X ¶ ^2ø d C,j¹ l Ą jN-Ē ,j¹ p Ą jN-Ę #» Y-¹ s -¹ v ø x-¹ { ø x· }°+,¹ X ,¶ °+¶ °       .    g  i  k ! m % n 1 q 5 s I t T s U x a z    *  ! 4 Ŗ «    g       g       g ¬ ­  ”    ü 1 jś # ¢     ® „   	    ¬   °    ± ¦     §          /     *· ±                        ²     ³   ¦     “  µ[ s ¶        \     *· *+µ *,µ *-µ ±               *                           „          ²     ³   ¦     “  µ[ s ¶A  ·     5     *+Ą 2,-¶ ±                        ¢     £ „          ¦     §    °    ø ¹    ŗ ¦   
  »   ¼   ½      ¾   
      
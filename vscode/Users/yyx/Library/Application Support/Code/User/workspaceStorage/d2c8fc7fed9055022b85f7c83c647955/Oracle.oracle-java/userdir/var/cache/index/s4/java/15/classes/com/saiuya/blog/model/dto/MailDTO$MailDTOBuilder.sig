����   A S
      java/lang/Object <init> ()V	  	 
   0com/saiuya/blog/model/dto/MailDTO$MailDTOBuilder toEmail Ljava/lang/String;	     subject	     content	     
contentMap Ljava/util/Map;	     template  !com/saiuya/blog/model/dto/MailDTO
     Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
   ! " # $ java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   & ' ( makeConcatWithConstants n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all 	Signature 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable this 2Lcom/saiuya/blog/model/dto/MailDTO$MailDTOBuilder; F(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/MailDTO$MailDTOBuilder; MethodParameters C(Ljava/util/Map;)Lcom/saiuya/blog/model/dto/MailDTO$MailDTOBuilder; LocalVariableTypeTable i(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Lcom/saiuya/blog/model/dto/MailDTO$MailDTOBuilder; build %()Lcom/saiuya/blog/model/dto/MailDTO; toString ()Ljava/lang/String; Ljava/lang/Override; 
SourceFile MailDTO.java NestHost BootstrapMethods E QMailDTO.MailDTOBuilder(toEmail=, subject=, content=, contentMap=, template=) G
 H I J ' K $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses MailDTOBuilder O %java/lang/invoke/MethodHandles$Lookup Q java/lang/invoke/MethodHandles Lookup !          )     *   +     ,  -[ s .     )     *   +     ,  -[ s .     )     *   +     ,  -[ s .     /    0 )     *   +     ,  -[ s .     )     *   +     ,  -[ s .       1   /     *� �    2        3        4 5   )     *   +     ,  -[ s .   6  1   ;     *+� *�    2        3        4 5         7      )     *   +     ,  -[ s .   6  1   ;     *+� *�    2        3        4 5         7      )     *   +     ,  -[ s .   6  1   ;     *+� *�    2        3        4 5         7      )     *   +     ,  -[ s .   8  1   M     *+� *�    2        3        4 5         9         0  7      /    : )     *   +     ,  -[ s .   6  1   ;     *+� *�    2        3        4 5         7      )     *   +     ,  -[ s .  ; <  1   F     � Y*� *� *� *� *� � �    2        3        4 5   )     *   +     ,  -[ s .  = >  1   G     *� *� *� *� � *� � %  �    2        3        4 5   )     *   +     ?   ,  -[ s .  @    A )     *   +     ,  -[ s . B     C     F  D L       M 	 N P R 
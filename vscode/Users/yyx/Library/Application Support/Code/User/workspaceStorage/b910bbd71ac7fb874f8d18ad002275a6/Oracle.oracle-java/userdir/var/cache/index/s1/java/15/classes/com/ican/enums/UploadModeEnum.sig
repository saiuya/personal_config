����   7 Q  com/ican/enums/UploadModeEnum	     LOCAL Lcom/ican/enums/UploadModeEnum;	   	  OSS	     COS	     QINIU	     $VALUES  [Lcom/ican/enums/UploadModeEnum;
      clone ()Ljava/lang/Object;
      java/lang/Enum valueOf 5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    ! " <init> (Ljava/lang/String;I)V
  $ % & values "()[Lcom/ican/enums/UploadModeEnum; ( java/lang/RuntimeException * �Uncompilable code - シンボルを見つけられません
  シンボル:   メソッド getMode()
  場所: タイプcom.ican.enums.UploadModeEnumの変数 value
 ' , ! - (Ljava/lang/String;)V 
    	  
  4 5 & $values 7 lUncompilable code - 変数modeは、デフォルト・コンストラクタで初期化されていません mode Ljava/lang/String; strategy Code LineNumberTable 3(Ljava/lang/String;)Lcom/ican/enums/UploadModeEnum; LocalVariableTable name MethodParameters this 
$enum$name $enum$ordinal 	Signature ()V getStrategy &(Ljava/lang/String;)Ljava/lang/String; value StackMapTable <clinit> 1Ljava/lang/Enum<Lcom/ican/enums/UploadModeEnum;>; 
SourceFile UploadModeEnum.java #org.netbeans.SourceLevelAnnotations Llombok/Getter; Llombok/AllArgsConstructor;@1     @    @ 	   @    @      8 9    : 9        	 % &  ;   "      
� � � �    <        	  =  ;   4     
*� � �    <        >       
 ? 9   @    ?�   ! "  ;   1     *+� �    <        >        A    @   	 B  C  D    E 	 F G  ;   n     � #L+�=>� +2:� 'Y)� +��    <       4  ;  9 >      
 H      8 9   I    � 	 �  @    8  
 5 &  ;   5      � Y� SY� SY� 
SY� S�    <         J E  ;   p      D� Y.� /� � Y0� /� � Y1� /� 
� Y2� /� � 3� � 'Y6� +�    <            ' ! 4  : ;  D    K L    M N   
  O   P  
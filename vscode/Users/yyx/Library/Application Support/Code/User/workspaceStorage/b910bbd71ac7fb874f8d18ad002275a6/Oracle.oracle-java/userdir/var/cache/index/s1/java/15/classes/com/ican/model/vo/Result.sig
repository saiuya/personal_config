����   7 K
      java/lang/Object <init> ()V  java/lang/RuntimeException 
 �Uncompilable code - シンボルを見つけられません
  シンボル:   メソッド getCode()
  場所: タイプcom.ican.enums.StatusCodeEnumの変数 SUCCESS
     (Ljava/lang/String;)V  �Uncompilable code - シンボルを見つけられません
  シンボル:   メソッド getCode()
  場所: タイプcom.ican.enums.StatusCodeEnumの変数 FAIL
      java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
      com/ican/model/vo/Result buildResult f(Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;)Lcom/ican/model/vo/Result;  �Uncompilable code - シンボルを見つけられません
  シンボル:   メソッド setFlag(java.lang.Boolean)
  場所: タイプcom.ican.model.vo.Result<T>の変数 r flag Ljava/lang/Boolean; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 返回状态 code Ljava/lang/Integer; 	状态码 msg Ljava/lang/String; 返回信息 data Ljava/lang/Object; 	Signature TT; 返回数据 Code LineNumberTable LocalVariableTable this Lcom/ican/model/vo/Result; LocalVariableTypeTable Lcom/ican/model/vo/Result<TT;>; success ()Lcom/ican/model/vo/Result; 7<T:Ljava/lang/Object;>()Lcom/ican/model/vo/Result<TT;>; .(Ljava/lang/Object;)Lcom/ican/model/vo/Result; MethodParameters :<T:Ljava/lang/Object;>(TT;)Lcom/ican/model/vo/Result<TT;>; fail .(Ljava/lang/String;)Lcom/ican/model/vo/Result; message I<T:Ljava/lang/Object;>(Ljava/lang/String;)Lcom/ican/model/vo/Result<TT;>; A(Ljava/lang/Integer;Ljava/lang/String;)Lcom/ican/model/vo/Result; \<T:Ljava/lang/Object;>(Ljava/lang/Integer;Ljava/lang/String;)Lcom/ican/model/vo/Result<TT;>; r<T:Ljava/lang/Object;>(Ljava/lang/Boolean;TT;Ljava/lang/Integer;Ljava/lang/String;)Lcom/ican/model/vo/Result<TT;>; (<T:Ljava/lang/Object;>Ljava/lang/Object; 
SourceFile Result.java !Lio/swagger/annotations/ApiModel; description 结果返回类 #org.netbeans.SourceLevelAnnotations Llombok/Data; !                !  "s #  $ %        !  "s &  ' (        !  "s )  * +  ,    -       !  "s .      /   A     *� �    0        1        2 3   4        2 5   	 6 7  /   "      
� Y	� �    0       = ,    8 	 6 9  /   F     
� Y	� �    0       = 1       
 * +   4       
 * -   :    *   ,    ; 	 < =  /   4     
� Y� �    0       = 1       
 > (   :    >   ,    ? 	 < @  /   ?     � *+� �    0       8 1        $ %      > (  :   	 $   >   ,    A 
    /   d     
� Y� �    0       = 1   *    
       
 * +    
 $ %    
 > (  4       
 * -  :       *   $   >   ,    B  ,    C D    E       F  Gs H I     J  
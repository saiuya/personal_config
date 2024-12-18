����   A N
      java/lang/Object <init> ()V  
createTime 
 java/time/LocalDateTime	      com/saiuya/blog/enums/ZoneEnum SHANGHAI  Lcom/saiuya/blog/enums/ZoneEnum;
     getZone ()Ljava/lang/String;
      java/time/ZoneId of &(Ljava/lang/String;)Ljava/time/ZoneId;
 	    now -(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
   ! " # $ +com/saiuya/blog/handler/MyMetaObjectHandler strictInsertFill �(Lorg/apache/ibatis/reflection/MetaObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/baomidou/mybatisplus/core/handlers/MetaObjectHandler; & 
updateTime
   ( ) $ strictUpdateFill
 + , - . / org/slf4j/LoggerFactory 	getLogger %(Ljava/lang/Class;)Lorg/slf4j/Logger;	   1 2 3 log Lorg/slf4j/Logger; 5 8com/baomidou/mybatisplus/core/handlers/MetaObjectHandler RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all Code LineNumberTable LocalVariableTable this -Lcom/saiuya/blog/handler/MyMetaObjectHandler; 
insertFill ,(Lorg/apache/ibatis/reflection/MetaObject;)V 
metaObject )Lorg/apache/ibatis/reflection/MetaObject; MethodParameters Ljava/lang/Override; 
updateFill <clinit> 
SourceFile MyMetaObjectHandler.java RuntimeVisibleAnnotations *Lorg/springframework/stereotype/Component; Llombok/extern/slf4j/Slf4j; !     4   2 3  6     7   8     9  :[ s ;      <   /     *� �    =        >        ? @    A B  <   W     *+	� � � � � W�    =        	      >        ? @      C D  E    C   8     F    G B  <   W     *+%	� � � � � 'W�    =        	       >        ? @      C D  E    C   8     F    H   <   !      	 � *� 0�    =         I    J K     L   8     M  
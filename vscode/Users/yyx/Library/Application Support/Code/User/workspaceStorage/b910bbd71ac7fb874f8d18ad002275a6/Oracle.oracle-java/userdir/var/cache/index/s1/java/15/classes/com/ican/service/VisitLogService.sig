����   7 0
      ;com/baomidou/mybatisplus/extension/service/impl/ServiceImpl <init> ()V	  	 
    com/ican/service/VisitLogService visitLogMapper  Lcom/ican/mapper/VisitLogMapper;      com/ican/mapper/VisitLogMapper insert (Ljava/lang/Object;)I  java/lang/RuntimeException  �Uncompilable code - シンボルを見つけられません
  シンボル:   メソッド getKeyword()
  場所: タイプcom.ican.model.vo.query.LogQueryの変数 logQuery
     (Ljava/lang/String;)V RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this "Lcom/ican/service/VisitLogService; saveVisitLog (Lcom/ican/entity/VisitLog;)V visitLog Lcom/ican/entity/VisitLog; MethodParameters listVisitLog B(Lcom/ican/model/vo/query/LogQuery;)Lcom/ican/model/vo/PageResult; logQuery "Lcom/ican/model/vo/query/LogQuery; 	Signature ^(Lcom/ican/model/vo/query/LogQuery;)Lcom/ican/model/vo/PageResult<Lcom/ican/entity/VisitLog;>; yLcom/baomidou/mybatisplus/extension/service/impl/ServiceImpl<Lcom/ican/mapper/VisitLogMapper;Lcom/ican/entity/VisitLog;>; 
SourceFile VisitLogService.java (Lorg/springframework/stereotype/Service; !                          /     *� �                          ! "     D     *� +�  W�       
                       # $  %    #    & '     >     
� Y� �           0        
        
 ( )  %    (   *    +  *    , -    .      /  
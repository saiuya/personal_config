����   7 -
      ;com/baomidou/mybatisplus/extension/service/impl/ServiceImpl <init> ()V  java/lang/RuntimeException 
 �Uncompilable code - com.ican.model.vo.PageResult<>の型引数を推論できません
  理由: 型変数Tを推論できません
    (実引数リストと仮引数リストの長さが異なります)
     (Ljava/lang/String;)V	      com/ican/service/TaskLogService taskLogMapper Lcom/ican/mapper/TaskLogMapper;      com/ican/mapper/TaskLogMapper delete 5(Lcom/baomidou/mybatisplus/core/conditions/Wrapper;)I RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this !Lcom/ican/service/TaskLogService; listTaskLog C(Lcom/ican/model/vo/query/TaskQuery;)Lcom/ican/model/vo/PageResult; 	taskQuery #Lcom/ican/model/vo/query/TaskQuery; MethodParameters 	Signature m(Lcom/ican/model/vo/query/TaskQuery;)Lcom/ican/model/vo/PageResult<Lcom/ican/model/vo/response/TaskLogResp;>; clearTaskLog wLcom/baomidou/mybatisplus/extension/service/impl/ServiceImpl<Lcom/ican/mapper/TaskLogMapper;Lcom/ican/entity/TaskLog;>; 
SourceFile TaskLogService.java (Lorg/springframework/stereotype/Service; !                          /     *� �                          ! "     >     
� Y	� �           ,        
        
 # $  %    #   &    '  (      :     *� �  W�       
    %  &               &    ) *    +      ,  
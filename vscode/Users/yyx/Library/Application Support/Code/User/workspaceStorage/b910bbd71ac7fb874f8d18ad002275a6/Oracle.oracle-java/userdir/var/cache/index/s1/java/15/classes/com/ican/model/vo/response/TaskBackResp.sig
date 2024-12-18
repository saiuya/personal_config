����   7 4
      java/lang/Object <init> ()V  'com/ican/model/vo/response/TaskBackResp id Ljava/lang/Integer; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 任务id taskName Ljava/lang/String; 任务名称 	taskGroup 任务组名 invokeTarget 调用目标 cronExpression cron执行表达式 misfirePolicy D计划执行错误策略 (1立即执行 2执行一次 3放弃执行) 
concurrent 是否并发执行 (0否 1是) status 任务状态 (0运行 1暂停) remark 任务备注信息 nextValidTime Ljava/util/Date; 下次执行时间 
createTime Ljava/time/LocalDateTime; 创建时间 Code LineNumberTable LocalVariableTable this )Lcom/ican/model/vo/response/TaskBackResp; 
SourceFile TaskBackResp.java !Lio/swagger/annotations/ApiModel; description 定时任务后台Response #org.netbeans.SourceLevelAnnotations Llombok/Data; Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; !       	 
         s             s             s             s             s    
         s    
         s    
         s             s     !         s "  # $         s %      &   /     *� �    '        (        ) *    +    ,      -  .s / 0     1   2   3  
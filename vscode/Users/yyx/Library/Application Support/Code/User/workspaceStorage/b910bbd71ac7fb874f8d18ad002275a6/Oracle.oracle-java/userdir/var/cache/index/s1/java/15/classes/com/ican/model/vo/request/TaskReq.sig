����   7 6
      java/lang/Object <init> ()V  !com/ican/model/vo/request/TaskReq id Ljava/lang/Integer; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 任务id taskName Ljava/lang/String; 'Ljavax/validation/constraints/NotBlank; message 任务名称不能为空 任务名称 required    RuntimeVisibleTypeAnnotations 	taskGroup 任务组名不能为空 任务组名 invokeTarget 调用目标不能为空 调用目标 cronExpression cron执行表达式 misfirePolicy D计划执行错误策略 (1立即执行 2执行一次 3放弃执行) 
concurrent 是否并发执行 (0否 1是) status 任务状态 (0运行 暂停) remark 任务备注信息 Code LineNumberTable LocalVariableTable this #Lcom/ican/model/vo/request/TaskReq; 
SourceFile TaskReq.java !Lio/swagger/annotations/ApiModel; description 定时任务Request #org.netbeans.SourceLevelAnnotations Llombok/Data; Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; !     	  	 
         s             s    s  Z          s             s    s  Z          s             s    s  Z          s             s     
         s !  " 
         s #  $ 
         s %  &          s '      (   /     *� �    )        *        + ,    -    .      /  0s 1 2     3   4   5  
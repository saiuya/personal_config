����   7 1
      java/lang/Object <init> ()V  'com/ican/model/vo/response/TalkBackResp id Ljava/lang/Integer; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 说说id nickname Ljava/lang/String; 昵称 avatar 头像 talkContent 说说内容 images -Lcom/fasterxml/jackson/annotation/JsonIgnore; 图片 imgList Ljava/util/List; 	Signature $Ljava/util/List<Ljava/lang/String;>; 图片列表 isTop 是否置顶 (0否 1是) status 说说状态 (1公开 2私密) 
createTime Ljava/time/LocalDateTime; 发布时间 Code LineNumberTable LocalVariableTable this )Lcom/ican/model/vo/response/TalkBackResp; 
SourceFile TalkBackResp.java !Lio/swagger/annotations/ApiModel; description 说说后台Response #org.netbeans.SourceLevelAnnotations Llombok/Data; !     	  	 
         s             s             s             s                s                  s    
         s     
         s !  " #         s $      %   /     *� �    &        '        ( )    *    +      ,  -s . /     0  
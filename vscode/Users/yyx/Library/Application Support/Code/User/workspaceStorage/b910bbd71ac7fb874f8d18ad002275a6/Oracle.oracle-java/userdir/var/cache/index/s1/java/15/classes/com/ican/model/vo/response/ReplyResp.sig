����   7 1
      java/lang/Object <init> ()V  $com/ican/model/vo/response/ReplyResp id Ljava/lang/Integer; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 评论id parentId 父级评论id fromUid 评论用户id toUid 被评论用户id fromNickname Ljava/lang/String; 评论用户昵称 webSite 个人网站 
toNickname 被评论用户昵称 avatar 头像 commentContent 评论内容 	likeCount 	点赞数 
createTime Ljava/time/LocalDateTime; 评论时间 Code LineNumberTable LocalVariableTable this &Lcom/ican/model/vo/response/ReplyResp; 
SourceFile ReplyResp.java !Lio/swagger/annotations/ApiModel; description 回复Response #org.netbeans.SourceLevelAnnotations Llombok/Data; !       	 
         s    
         s    
         s    
         s             s             s             s             s             s     
         s !  " #         s $      %   /     *� �    &        '        ( )    *    +      ,  -s . /     0  
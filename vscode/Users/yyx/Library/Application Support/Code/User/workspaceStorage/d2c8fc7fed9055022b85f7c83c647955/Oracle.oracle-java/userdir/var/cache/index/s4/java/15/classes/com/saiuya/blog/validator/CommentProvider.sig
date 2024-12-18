����   A Z
      java/lang/Object <init> ()V  java/util/ArrayList
    +com/saiuya/blog/model/vo/request/CommentReq      java/util/List add (Ljava/lang/Object;)Z
 
    getCommentType ()Ljava/lang/Integer;	      %com/saiuya/blog/enums/CommentTypeEnum ARTICLE 'Lcom/saiuya/blog/enums/CommentTypeEnum;
     getType
   ! " #  java/lang/Integer equals	  % &  TALK ( ,com/saiuya/blog/validator/groups/ArticleTalk	  * +  LINK - %com/saiuya/blog/validator/groups/Link
 
 / 0  getParentId
 2 3 4 5  java/util/Objects isNull 7 -com/saiuya/blog/validator/groups/ParentIdNull
 2 9 :  nonNull < 0com/saiuya/blog/validator/groups/ParentIdNotNull
 > ? @ A B )com/saiuya/blog/validator/CommentProvider getValidationGroups ?(Lcom/saiuya/blog/model/vo/request/CommentReq;)Ljava/util/List; D >org/hibernate/validator/spi/group/DefaultGroupSequenceProvider Code LineNumberTable LocalVariableTable this +Lcom/saiuya/blog/validator/CommentProvider; 
commentReq -Lcom/saiuya/blog/model/vo/request/CommentReq; defaultGroupSequence Ljava/util/List; LocalVariableTypeTable &Ljava/util/List<Ljava/lang/Class<*>;>; StackMapTable MethodParameters 	Signature U(Lcom/saiuya/blog/model/vo/request/CommentReq;)Ljava/util/List<Ljava/lang/Class<*>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; $(Ljava/lang/Object;)Ljava/util/List; �Ljava/lang/Object;Lorg/hibernate/validator/spi/group/DefaultGroupSequenceProvider<Lcom/saiuya/blog/model/vo/request/CommentReq;>; 
SourceFile CommentProvider.java ! >   C        E   /     *� �    F        G        H I    A B  E       � Y� 	M,
�  W+� k+� � � � � +� � $� � � ,'�  W+� � )� � � ,,�  W+� .� 1� ,6�  W+� .� 8� ,;�  W,�    F   6           &  5  >  N   W " a # j % t & } ) G         H I      J K   w L M  N      w L O  P    � 5  Q    J   R    S T     U  A A V  E   3     	*+� 
� =�    F        G       	 H I   Q    J  T     U    R    W X    Y
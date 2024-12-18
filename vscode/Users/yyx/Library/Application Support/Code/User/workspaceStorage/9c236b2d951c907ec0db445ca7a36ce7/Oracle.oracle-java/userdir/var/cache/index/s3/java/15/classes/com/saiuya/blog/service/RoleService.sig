����   A�
      ;com/baomidou/mybatisplus/extension/service/impl/ServiceImpl <init> ()V	  	 
   #com/saiuya/blog/service/RoleService 
roleMapper #Lcom/saiuya/blog/mapper/RoleMapper;      !com/saiuya/blog/mapper/RoleMapper selectBackRoleCount <(Lcom/saiuya/blog/model/vo/query/RoleQuery;)Ljava/lang/Long;
      java/lang/Long 	longValue ()J  #com/saiuya/blog/model/vo/PageResult
       selectBackRoleList <(Lcom/saiuya/blog/model/vo/query/RoleQuery;)Ljava/util/List;
  !  " #(Ljava/util/List;Ljava/lang/Long;)V $ Acom/baomidou/mybatisplus/core/conditions/query/LambdaQueryWrapper
 #  ' 7com/baomidou/mybatisplus/core/toolkit/support/SFunction   ) * + apply ;()Lcom/baomidou/mybatisplus/core/toolkit/support/SFunction;
 # - . / select ([Lcom/baomidou/mybatisplus/core/toolkit/support/SFunction;)Lcom/baomidou/mybatisplus/core/conditions/query/LambdaQueryWrapper;  )
 2 3 4 5 6 (com/saiuya/blog/model/vo/request/RoleReq getRoleName ()Ljava/lang/String;
 # 8 9 : eq 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; < 0com/baomidou/mybatisplus/core/conditions/Wrapper  > ? @ 	selectOne F(Lcom/baomidou/mybatisplus/core/conditions/Wrapper;)Ljava/lang/Object; B com/saiuya/blog/entity/Role  D E F makeConcatWithConstants &(Ljava/lang/String;)Ljava/lang/String; H java/lang/Object
 J K L M N cn/hutool/core/lang/Assert isNull :(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
 A P Q R builder +()Lcom/saiuya/blog/entity/Role$RoleBuilder;
 T U V W X 'com/saiuya/blog/entity/Role$RoleBuilder roleName =(Ljava/lang/String;)Lcom/saiuya/blog/entity/Role$RoleBuilder;
 2 Z [ 6 getRoleDesc
 T ] ^ X roleDesc
 2 ` a b getIsDisable ()Ljava/lang/Integer;
 T d e f 	isDisable >(Ljava/lang/Integer;)Lcom/saiuya/blog/entity/Role$RoleBuilder;
 T h i j build ()Lcom/saiuya/blog/entity/Role;	  l m n 
baseMapper 1Lcom/baomidou/mybatisplus/core/mapper/BaseMapper;  p q r insert (Ljava/lang/Object;)I	  t u v roleMenuMapper 'Lcom/saiuya/blog/mapper/RoleMenuMapper;
 A x y 6 getId
 2 { | } getMenuIdList ()Ljava/util/List;  � � � � %com/saiuya/blog/mapper/RoleMenuMapper insertRoleMenu %(Ljava/lang/String;Ljava/util/List;)V � 'com/saiuya/blog/constant/CommonConstant � 1 � � � � � java/util/List contains (Ljava/lang/Object;)Z � 不允许删除管理员角色
 J � � � isFalse )(ZLjava/lang/String;[Ljava/lang/Object;)V	  � � � userRoleMapper 'Lcom/saiuya/blog/mapper/UserRoleMapper;  )
 # � � � in <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object; � � � � � %com/saiuya/blog/mapper/UserRoleMapper selectCount D(Lcom/baomidou/mybatisplus/core/conditions/Wrapper;)Ljava/lang/Long; � 角色已分配  � � � deleteBatchIds (Ljava/util/Collection;)I  � � � deleteRoleMenu (Ljava/util/List;)V  � � � accept ()Ljava/util/function/Consumer; � � � � forEach  (Ljava/util/function/Consumer;)V
 2 x
 � � � � � java/lang/String equals	 � � � � TRUE Ljava/lang/Integer;
 � � � java/lang/Integer � 不允许禁用管理员角色
 � � � � � java/util/Objects nonNull
 T � � X id  � � r 
updateById  � � � deleteRoleMenuByRoleId (Ljava/lang/String;)V  D
 � � � � � ,cn/dev33/satoken/session/SaSessionCustomUtil getSessionById 9(Ljava/lang/String;Z)Lcn/dev33/satoken/session/SaSession;
 � � � � � java/util/Optional 
ofNullable ((Ljava/lang/Object;)Ljava/util/Optional;  �
 � � � � 	ifPresent
 � x � .com/saiuya/blog/model/vo/request/RoleStatusReq
 � `  � � � selectMenuByRoleId $(Ljava/lang/String;)Ljava/util/List;
 � � � � 6 !java/lang/invoke/SerializedLambda getImplMethodName
 � � � � hashCode ()I 5 � 	getRoleId y
 � � � � getImplMethodKind
 � � � 6 getFunctionalInterfaceClass '
 G �
 � 6  getFunctionalInterfaceMethodName *
 � 6 %getFunctionalInterfaceMethodSignature	 &(Ljava/lang/Object;)Ljava/lang/Object;
 � 6 getImplClass B
 � 6 getImplMethodSignature 6 com/saiuya/blog/entity/UserRole "java/lang/IllegalArgumentException Invalid lambda deserialization
  � Permission_List
 ! "cn/dev33/satoken/session/SaSession delete 8(Ljava/lang/String;)Lcn/dev33/satoken/session/SaSession;  � RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this %Lcom/saiuya/blog/service/RoleService; 
listRoleVO Q(Lcom/saiuya/blog/model/vo/query/RoleQuery;)Lcom/saiuya/blog/model/vo/PageResult; 	roleQuery *Lcom/saiuya/blog/model/vo/query/RoleQuery; count Ljava/lang/Long; roleRespList Ljava/util/List; LocalVariableTypeTable >Ljava/util/List<Lcom/saiuya/blog/model/vo/response/RoleResp;>; StackMapTable MethodParameters 	Signature (Lcom/saiuya/blog/model/vo/query/RoleQuery;)Lcom/saiuya/blog/model/vo/PageResult<Lcom/saiuya/blog/model/vo/response/RoleResp;>; addRole -(Lcom/saiuya/blog/model/vo/request/RoleReq;)V role *Lcom/saiuya/blog/model/vo/request/RoleReq; 	existRole Lcom/saiuya/blog/entity/Role; newRole 
deleteRole 
roleIdList $Ljava/util/List<Ljava/lang/String;>; '(Ljava/util/List<Ljava/lang/String;>;)V 
updateRole sessionById $Lcn/dev33/satoken/session/SaSession; updateRoleStatus 3(Lcom/saiuya/blog/model/vo/request/RoleStatusReq;)V 
roleStatus 0Lcom/saiuya/blog/model/vo/request/RoleStatusReq; listRoleMenuTree roleId Ljava/lang/String; 9(Ljava/lang/String;)Ljava/util/List<Ljava/lang/Integer;>; $deserializeLambda$ 7(Ljava/lang/invoke/SerializedLambda;)Ljava/lang/Object; lambda #Ljava/lang/invoke/SerializedLambda; lambda$updateRole$2 '(Lcn/dev33/satoken/session/SaSession;)V 	saSession lambda$deleteRole$1 lambda$deleteRole$0 Lcom/baomidou/mybatisplus/extension/service/impl/ServiceImpl<Lcom/saiuya/blog/mapper/RoleMapper;Lcom/saiuya/blog/entity/Role;>; 
SourceFile RoleService.java (Lorg/springframework/stereotype/Service; BootstrapMethods	 w_ 1(Lcom/saiuya/blog/entity/Role;)Ljava/lang/Object;       c
 A 3e 角色名已存在g
hi � 6k 5(Lcom/saiuya/blog/entity/UserRole;)Ljava/lang/Object;m (Ljava/lang/Object;)Vo
 pU � �s role-u
 vRSSy
 zVS|
}~�� "java/lang/invoke/LambdaMetafactory altMetafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;�
��� E� $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;�
}��� metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; InnerClasses RoleBuilder� %java/lang/invoke/MethodHandles$Lookup� java/lang/invoke/MethodHandles Lookup !         #    $    � � #    $    u v #    $       %   /     *� �   &       !'       ()   *+ %   �     1*� +�  M,� 	�� � Y� �*� +�  N� Y-,�  �   &       .  /  0  3 ' 4'   *    1()     1,-   &./  ' 
01 2     ' 
03 4    �  5   ,  6   7 89 %   �     *� � #Y� %� &Y� (  S� ,� 0  +� 1� 7� ;� = � AM,+� 1� C  � G� I� O+� 1� S+� Y� \+� _� c� gN*� k� -� o W*� s-� w+� z� ~ �   &   * 
   9  :   ; ) 9 2 < C > U ? _ @ m B ~ C'   *    ()     :;  2 M<=  _  >= 5   :   ? � %   �     f+�� � �� G� �*� �� #Y� %� �  +� �� ;� � M,� 	�� � �� G� �*� +� � W*� s+� � +� �  � � �   &       F  H . I E K P M Z O e S'        f()     f@1  . 8./ 2       f@A 4   
 � ; @5   @  6   B C9 %  �     �+� ��� �� +� _� �� �� � �� G� �*� � #Y� %� &Y� (  S� ,� 0  +� 1� 7� ;� = � AM,� ę ,� w+� �� �� � +� 1� C  � G� �� O+� �� �+� 1� S+� Y� \+� _� c� gN*� -� � W*� s-� w� � *� s-� w+� z� ~ -� w� �  � �:� ں �  � �   &   J    V ' Y > Z P Y Y [ t \ � [ � ^ � _ � ` � a � b � c � e � g � i � j � k'   4    �()     �:;  Y �<=  � F>=  � DE 4    @� S A@5   :   FG %   �     3+� ��� ��� G� �� O+� � �+� � c� gM*� ,� � W�   &       n  p  q  r # s ' t 2 u'        3()     3HI  ' >= 5   H   J � %   ?     *� s+� � �   &       x'       ()     KL 5   K  6   M
NO %  M    *� �L=+� �   H   �   =-�g'   /k�   !+�� �� !=� +�� �� =� +�� �� =�     �             �  *� �� I*� ��� � =*�� � 0*�� � #*�
� � *�� � 	� 0  �*� ��3*� ��� �'*�� �*�� �*�
� � *�� � � 0  �*� �� �*� ��� � �*�� � �*�� � �*�
� � �*�� � �� �  �*� �� I*� ��� � =*�� � 0*�� � #*�
� � *�� � 	� (  �*� �� I*� ��� � =*�� � 0*�� � #*�
� � *�� � 	� (  ��Y��   &        '      PQ  4    
� , �
� M� M� M� M� M
RS %   3     	*�W�   &       j'       	TE  
U � %   T     *� �  � �L+� ں"  � �   &       P  Q  R'       KL    DE 
VS %   3     	*�W�   &       Q'       	TE   6   WX   Y#    Z  [   V { \]^`a{ \b^`a� d{ \fj`a� lnq� r� ltw� lxw�     T A� 	��� 
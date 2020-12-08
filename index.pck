GDPC                                                                            !   D   res://.import/Spritesheet.png-f3f36cabc6ef06a8fb93e5cdcb93f43a.stex �F      �       o�\�t	��x�J�q<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex M      U      -��`�0��x�5�[   res://Rooms/Main.tscn   	      1      z���D�˘�e���|��   res://Scenes/Box1.tscn  P
      '      Kj�X��ڻ���\    res://Scenes/Floor Maker.tscn   �      �       ׼�������#N��"$   res://Scenes/Level Generator.tscn   0      �       ��'�8�_�%�-uD    res://Scenes/Little Tree.tscn   �            Č�Q�����-��,Q   res://Scenes/Player.tscn      :      ��	+�<q��M�   res://Scenes/Portal.tscnP      �      �ٔ��ٓY�{1��   res://Scenes/Stairs.tscn      �      �W�H�:�H�{�|ǝ¸   res://Scripts/Box.gd.remap   ]      &       ��Y�w{���;�QE�   res://Scripts/Box.gdc   �      �       �G2���/:���$   res://Scripts/Floor Maker.gd.remap  0]      .       ˅���u�o���8��    res://Scripts/Floor Maker.gdc   �      x
      ���k���#���m,   res://Scripts/Global/global_level.gd.remap  `]      6       f�z`zW��p���E(   res://Scripts/Global/global_level.gdc   0&      �      �`-p2[�m��v�O�(   res://Scripts/Level Generator.gd.remap  �]      2       ���� 8X-�H���S-�$   res://Scripts/Level Generator.gdc   �'      �      ��_^p���l��sЬ$   res://Scripts/Little Tree.gd.remap  �]      .       /x�iHDʆ{g�z"    res://Scripts/Little Tree.gdc   �,      A      o�~�S�-�2�c)�N   res://Scripts/Main.gd.remap ^      '       *�e�R��_�������   res://Scripts/Main.gdc  �-            �Z�ǥXD�Jq�^}k�    res://Scripts/Player.gd.remap   @^      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc�/            �S���A������'&    res://Scripts/Portal.gd.remap   p^      )       n�/K��{�����w?h   res://Scripts/Portal.gdc@      R      w�Hk,�9x��^'h�́    res://Scripts/Stairs.gd.remap   �^      )       �~���g/c�H��)   res://Scripts/Stairs.gdcpC      _      g}Uޤ����ꞵPL:$   res://Sprite/Spritesheet.png.import �I      �      ZBY��������� Q   res://default_env.tres  pL      �       um�`�N��<*ỳ�8   res://icon.png  �^      �      G1?��z�c��vN��   res://icon.png.import   �Z      �      �����%��(#AB�   res://project.binary�k      �      ;�2�f���U�RU>%6        [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Main.gd" type="Script" id=1]
[ext_resource path="res://Scenes/Level Generator.tscn" type="PackedScene" id=2]

[node name="Main" type="Node2D"]
script = ExtResource( 1 )

[node name="Level Generator" parent="." instance=ExtResource( 2 )]
               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Box.gd" type="Script" id=1]
[ext_resource path="res://Sprite/Spritesheet.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8.00265, 8.00462 )

[node name="Box" type="StaticBody2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
vframes = 2
region_enabled = true
region_rect = Rect2( 0, 0, 16, 32 )
         [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Floor Maker.gd" type="Script" id=1]

[node name="Floor Maker" type="Node2D"]
script = ExtResource( 1 )
     [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/Level Generator.gd" type="Script" id=1]

[node name="Level Generator" type="Node2D"]
script = ExtResource( 1 )
             [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprite/Spritesheet.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Little Tree.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[node name="Little Tree" type="Area2D"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 32, 0, 16, 16 )
      [gd_scene load_steps=5 format=2]

[ext_resource path="res://Sprite/Spritesheet.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 1.96667, 4.32651 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 4.87838, 4.39574 )

[node name="Player" type="KinematicBody2D"]
position = Vector2( 8, 8 )
collision_layer = 2147483649
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, 3.66177 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 16, 0, 16, 16 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true
zoom = Vector2( 0.2, 0.2 )
smoothing_enabled = true

[node name="Hand" type="Area2D" parent="."]
visible = false

[node name="Sprite2" type="Sprite" parent="Hand"]
modulate = Color( 1, 1, 1, 0.176471 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 16, 16, 16 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Hand"]
shape = SubResource( 2 )
[connection signal="area_entered" from="Hand" to="." method="_on_Hand_area_entered"]
[connection signal="area_exited" from="Hand" to="." method="_on_Hand_area_exited"]
      [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Portal.gd" type="Script" id=1]
[ext_resource path="res://Sprite/Spritesheet.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[node name="Portal" type="Area2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
region_enabled = true
region_rect = Rect2( 16, 16, 16, 16 )
[connection signal="body_entered" from="." to="." method="_on_Portal_body_entered"]
[connection signal="body_exited" from="." to="." method="_on_Portal_body_exited"]
         [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprite/Spritesheet.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Stairs.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 3, 7.8 )

[node name="Stairs" type="Area2D"]
collision_mask = 2147483649
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 32, 16, 16, 16 )
[connection signal="body_entered" from="." to="." method="_on_Stairs_body_entered"]
[connection signal="body_exited" from="." to="." method="_on_Stairs_body_exited"]
           GDSC                  ���������τ򶶶�   ����Ӷ��   �����϶�   �����Ӷ�                                	                  3YY;�  YY0�  PQV�  W�  T�  �  Y`      GDSC   %      E   A     ���ӄ�   �����Ķ�   ��������Ķ��   �����Ķ�   �����Ӷ�   ��������Ӷ��   ����   ��Ѷ   ����������Ӷ   �����϶�   ��������������ض   ϶��   ض��   ��ζ   ��ζ   �������Ӷ���   ����Ӷ��   ��������Ҷ��   ζ��   �������������Ķ�   �������������ڶ�   ��������������¶   �����������ض���   �������Ӷ���   ׶��   ��������������Ķ   �������������ݶ�   ���������������Ŷ���   ����׶��   �������Ӷ���   �������ٶ���   �������������������Ӷ���   ����������Ӷ   ����������Ӷ   ��Ŷ   �����ڶ�   �����ڶ�   
                                        res://Scenes/Box1.tscn                 �������?   d         res://Scenes/Little Tree.tscn         res://Scenes/Portal.tscn                   	                              (   	   )   
   /      0      @      F      N      W      ]      b      w      x      |      }      ~      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &   	  '     (     )   )  *   4  +   ?  ,   C  -   K  .   X  /   c  0   n  1   o  2   u  3   {  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =      >     ?     @     A   "  B   '  C   >  D   ?  E   3YY8;�  Y8;�  �  YY;�  �  Y;�  �  Y;�  �  T�  T�  P�  R�  QYY0�	  PQVY�  �
  �  P�  �  �  R�
  T�  Q�  )�  �  V�  ;�  �L  P�  Q�  ;�  �  T�  PQ�  �  T�  �  �  �  P�  Q�  �  T�
  �  P�  �
  T�  �  �  R�
  T�  QY�  �  PQ�  �  �  &�  T�  �  �  V�  �  �  �  )�  �  PQV�  �  PQL�  MT�  T�  �	  �  �  PQL�  MT�  �  �  �  PQL�  MT�  �  �  '�  T�  �  �  V�  �  �  �  )�  �  PQV�  �  PQL�  MT�  T�  �  �  �  PQL�  MT�  �  �  �  PQL�  MT�  �  �  Y0�  P�  QV�  &�  T�  �  �  V�  �  �  �  )�  �  PQV�  �  PQL�  MT�  T�  �	  �  �  PQL�  MT�  �  �  �  PQL�  MT�  �  �  '�  T�  �  �  V�  �  �  �  )�  �  PQV�  �  PQL�  MT�  T�  �  �  �  PQL�  MT�  �  �  �  PQL�  MT�  �  YY0�  PQV�  &�  �  V�  ;�  �  T�  T�  P�  R�  �  Q�  ;�  �  �  T�  T�  P�  �  R�  �  Q�  &�  �  V�  �  �  T�  T�  P�  R�  �  Q�  )�  �  V�  &�  T�  T�  P�  R�
  Q	�  T�  �  �  �  �  V�  ;�   �L  P�  Q�  ;�!  �   T�  PQ�  �  P�!  Q�  �!  T�
  �  P�  �
  T�  �  �  R�
  T�  �  Q�  (V�  ;�"  �  T�  T�  P�  R�  Q�  ;�#  �L  P�  Q�  ;�$  �#  T�  PQ�  �  P�$  Q�  �$  T�
  �  P�  �
  T�  �"  �  R�
  T�  �  Q�  Y`        GDSC            7      ���Ӷ���   ��Ѷ   ��������������������Ķ��   ����   ������Ӷ   �������������ڶ�   �������������������Ӷ���   �����϶�   
                                                                    	   #   
   $      *      4      5      3YY;�  �  T�  PQY;�  Y;�  �  YY;�  �  YY0�  PQV�  �  �  T�%  PQ�  �  T�)  �  T�&  PQ�  Y`GDSC            �      ���ӄ�   �������ζ���   �������϶���   �����Ķ�   �����϶�   ����   ��Ѷ   ����������Ӷ   ������Ӷ   ��������������ض   ض��   �������Ķ���   �������Ķ���   �������Ӷ���   ��������Ķ��   �����Ķ�   �������������ڶ�   ��������Ҷ��   ζ��   ϶��   �����Ķ�   �����Ķ�                         res://Scenes/Floor Maker.tscn               res://Scenes/Player.tscn                                                                 	   -   
   @      A      X      Y      _      g      p            �      �      �      �      �      �      �      �      �      �      �      �      3YY;�  Y;�  YY;�  YY0�  PQV�  �  �  T�  T�  P�  T�  �  R�  T�  Q�  �  �  T�  T�  P�  T�  �  R�  T�  Q�  �  �	  �  PP�  �  Q�  RP�  �  Q�  Q�  �  )�
  �  V�  ;�  �L  P�  Q�  ;�  �  T�  PQ�  �  T�  �  T�  T�  P�  R�  Q�  �  T�  �  �  �  T�  �  �  �  T�  �  �  �  P�  Q�  �  T�	  �  P�	  T�  R�	  T�  �
  �  Q�  �  �  �  �  ;�  �L  P�  Q�  ;�  �  T�  PQ�  �  T�	  �  P�  T�  T�  P�  R�  Q�  �  R�  �  �  Q�  �  P�  Q�  Y`  GDSC         
   $      ���ׄ�   ���޶���   ����������¶   ���������¶�   �������Ҷ���   ���������Ӷ�      res://Scenes/Little Tree.tscn         res://Scenes/Stairs.tscn                                                 !   	   "   
   3YY;�  Y;�  LMY;�  L�  MYY0�  PQV�  �  PQYY`               GDSC            F      ���ӄ�   ����¶��   ��ڶ   �������Ŷ���   ����׶��   ����¶��   �������������Ҷ�   ��������Ҷ��   ���������Ӷ�   ��������Ҷ��   �������Ӷ���          !   res://Scenes/Level Generator.tscn      R                                                           #      ,   	   5   
   9      :      @      D      3YY;�  Y;�  �L  P�  QYY0�  P�  QV�  &�  T�  P�  Q�  V�  �  P�  QT�  PQ�  �	  P�  T�
  PQQ�  �  YY0�  PQV�  �  �  Y`               GDSC   A      �        ������������τ�   �������϶���   ��Ķ   ��Ķ   ����϶��   ����Ķ��   ������������Ҷ��   ����������Ҷ   �������������Ķ�   ����Ҷ��   ����   �������Ҷ���   �����϶�   ��������������ض   ϶��   �������Ŷ���   ����׶��   ����������Ķ   ������������Ӷ��   ����Ŷ��   ����Զ��   �������¶���   ���۶���   ���������������Ŷ���   ��������ݶ��   �������������Ӷ�   �涶   ����¶��   ������������������޶   �����Ӷ�   �����޶�   ���Ҷ���   ���������������Ŷ���   ����   �������������ڶ�   �����Ҷ�   ��������������Ӷ   ����������������Ӷ��   ����������ζ   ׶��   ���޶���   �������Ӷ���   ����������¶   ���Ҷ���   ���������������������Ҷ�   ����������ڶ   ��Ŷ   ζ��   ���۶���   ���۶���   ���������¶�   ��������Ҷ��   ��������Ҷ��   ���������¶�   ���������Ӷ�   ������Ӷ   ����������Ķ   ���������Ķ�   ����������������Ҷ��   ��������������������Ҷ��   ���׶���   �����������Ҷ���   ���������¶�   ������¶   �������������������Ҷ���                           (      Z               ui_right      ui_left          �               res://Scenes/Portal.tscn      ui_up         selected      ui_down                    
                                 	       
   %      *      0      1      6      ;      <      ?      @      F      N      O      V      [      b      f      j      n      q      u      y      }       ~   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7     8   	  9     :     ;     <     =   $  >   )  ?   .  @   1  A   6  B   7  C   =  D   G  E   O  F   [  G   b  H   j  I   w  J   x  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X     Y     Z     [   .  \   ;  ]   ?  ^   E  _   F  `   L  a   S  b   w  c   x  d   ~  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z     {     |     }   	  ~   
       �     �     �     �     �   3YY;�  �  PQY;�  Y;�  Y;�  YY;�  �  YY;�  �  Y;�  �  Y;�  �  YY:�	  �  Y:�
  �  YYB�  YY0�  PQV�  �  �  T�  �  YY0�  P�  QV�  &�  V�  &�  PQV�  �  �
  �  �  PQ�  �  PQ�  (V�  �  PQ�  �  PQ�  �  PQYY0�  P�  QV�  �  PQ�  �  P�  R�  T�  QYY0�  PQV�  �  �  T�  P�  Q�  T�  P�  Q�  �  �  �  P�  �	  R�  QYYY0�  PQV�  &�  V�  W�  T�  �	  �  W�  T�   �
  �  �  �  �  '�  	V�  W�  T�  �  �  W�  T�   �  �  �  �  Y0�  PQV�  &�  T�  
�  �  V�  �!  T�"  �  �  �  �  �  '�  T�  �  �  V�  �!  T�"  �  �  �  �  YY0�  PQV�  ;�#  �  �  ;�$  �  �  ;�%  �  ;�&  �  �  �  &�  �  V�  ;�'  �L  P�  T�(  Q�  �%  �'  T�)  PQ�  &�  �  �  T�(  �  V�  �#  �L  P�  Q�  �$  �#  T�)  PQ�  �&  �$  T�*  T�+  P�%  T�(  Q�  �  &�  T�,  P�  Q�  �  �  �  V�  �  �  T�(  �  �-  P�  QY�  &�  T�,  P�  Q�  �  �  �  V�  ;�.  �  P�  T�/  �  Q�  P�  Q�  �  ;�0  �L  P�  Q�  ;�1  �0  T�)  PQ�  �2  PQT�3  P�!  T�"  QT�4  P�1  Q�  �1  T�  �  P�.  R�  T�  Q�  �  �  �  �  '�  T�,  P�  Q�  �  �&  �  V�  ;�.  �  T�  T�/  �  ;�0  �L  P�$  T�5  L�&  MQ�  ;�1  �0  T�)  PQ�  �2  PQT�3  P�!  T�"  QT�4  P�1  Q�  �1  T�  �  P�.  R�  T�  Q�  �  �  �  �  T�6  PQYY0�  PQV�  W�  T�7  �	  �  W�  T�  �  P�  P�  T�/  �  Q�  P�  Q�  R�  P�  T�  �  Q�  Q�  Y0�8  PQV�  �  �	  �  Y0�9  PQV�  �  �  YY0�  PQV�  W�  T�7  �  �  &�  T�:  P�  QV�  �  �  �  '�  PQV�  �  �
  �  Y0�;  P�<  QV�  &�  �  �=  P�  R�  R�  QV�  �>  P�  R�  R�  Q�  �?  P�  R�<  R�  Q�  �  �<  YY0�@  P�<  QV�  &�=  P�  R�<  R�  QV�  �>  P�  R�<  R�  Q�  &�<  �  V�  �  �  YYYYYYYYY` GDSC            �      ���ׄ�   ���޶���   ������Ҷ   ����¶��   �����϶�   ������¶   ���������¶�   �������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   ����������ڶ   ���������¶�   ����������������������Ҷ   ���϶���   ���Ӷ���   ���������������������Ҷ�      res://Scenes/Portal.tscn             reset         ui_up         Player                                 	                           	      
   ,      -      4      ?      D      W      X      _      g      k      l      s      {            3YY;�  YY;�  �  YYB�  YY0�  PQV�  �  P�  R�  PQT�  PQT�  PQR�  QYY0�  P�  QV�  &�  �	  T�
  P�  QV�  �  P�  Q�  �  P�  R�  PQT�  PQT�  PQR�  QYY0�  P�  QV�  &�  T�  �  V�  �  �  YY0�  P�  QV�  &�  T�  �  V�  �  �  Y`              GDSC            �      ���ׄ�   ���޶���   ����������¶   ���������¶�   ����Ķ��   ���¶���   �����϶�   ������¶   ���������¶�   �������Ӷ���   �������Ҷ���   ���������Ӷ�   ����������������������Ҷ   ���϶���   ���Ӷ���   ����������ڶ   ���������������������Ҷ�      res://Scenes/Stairs.tscn      enter         Player        enter_stair       exit   
   exit_stair                           	                           	      
         #      7      K      L      R      V      W      ^      f      k      l      s      {      �      3YY;�  YY;�  LMY;�  LMYYB�  YB�  YY0�  PQV�  �  P�  R�  PQT�  PQT�	  P�  QR�  Q�  �  P�  R�  PQT�  PQT�	  P�  QR�  QYY0�
  PQV�  �  PQYY0�  P�  QV�  &�  T�  �  V�  �  P�  QYY0�  P�  QV�  &�  T�  �  V�  �  P�  QY` GDST@                �  PNG �PNG

   IHDR   @       ��~�   sRGB ���  �IDATh��Y;�� צJ�ʹ@�_��\��/�1��%~�y3�l0��I��k'u0�Ƕ�U�>��~>^��e�O��:����z'�A�
Ԧ����wG�QN���vr~Z��cӧ��Ep��d��nX�ƪ9D�B��|��kq�?$$�+�q��|m�:a������ ��Ö���'*��G��ԺͭM!� LB��Q
Ӟ]��a~7����U$�פ_
�`��|�c�V>^I��~���Xam��ـ0'��S�K�v � �ڙ$�e�k��
� �/�58���9�����"��S�`-�s�$�ayhM�5�p���T���o/�7�DB�`$#���H����5/	ض7G WX%�Bh�^�Z��i�j�oyC��@i���ӺǀP��?�5nYg�k��V���}����m�2�����4���"vc�� H� �)�Q�iCy���:�x(���+}�m�*a�O�zߘ ��)��Py�PG�U�&�(��[���1��q�N�5 d�^m�޶wqopy��@y�Z�	Y@�Sc�A���`�� �!:��.�#�o���> #+h�n�4Hu�(�@g}��@1~āҌP�9��=��+�b�zfZ�{�x�96�R�Haqɘ�Mb�K0  V�\a��    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Spritesheet.png-f3f36cabc6ef06a8fb93e5cdcb93f43a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/Spritesheet.png"
dest_files=[ "res://.import/Spritesheet.png-f3f36cabc6ef06a8fb93e5cdcb93f43a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
  [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Box.gdc"
          [remap]

path="res://Scripts/Floor Maker.gdc"
  [remap]

path="res://Scripts/Global/global_level.gdc"
          [remap]

path="res://Scripts/Level Generator.gdc"
              [remap]

path="res://Scripts/Little Tree.gdc"
  [remap]

path="res://Scripts/Main.gdc"
         [remap]

path="res://Scripts/Player.gdc"
       [remap]

path="res://Scripts/Portal.gdc"
       [remap]

path="res://Scripts/Stairs.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Climb      application/run/main_scene          res://Rooms/Main.tscn       application/boot_splash/bg_color      q�>q�>q�>  �?   application/config/icon         res://icon.png     autoload/GL0      %   *res://Scripts/Global/global_level.gd   $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      д4>+��=r�>  �?)   rendering/environment/default_environment          res://default_env.tres      
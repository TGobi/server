GDPC                                                                            4   D   res://.import/Heart-Sheet.png-b041a1143fb29a1e421f65f2ed938dd7.stex �}      :      J�H�O�q[Y6n>�@   res://.import/Heart0.png-3108d51470ea1243de222f558fe8cbe7.stex  ��      �       �#"d6c p%����@   res://.import/Heart1.png-adaa8b30fd8abfce94446d3c7f21ee25.stex   �      �       Q�W
��W�8��}�!M�D   res://.import/Spritesheet.png-f3f36cabc6ef06a8fb93e5cdcb93f43a.stex ��      �       o�\�t	��x�J�q<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      U      -��`�0��x�5�[H   res://.import/turtle-1-Sheet.png-88727d4360b55428275e2b9419f54b4c.stex  P�      ^      ��)�[^C<��UIx�   res://Rooms/Main.tscn   �      �      ����~Z���~o���?�   res://Scenes/Box1.tscn  `      '      Kj�X��ڻ���\    res://Scenes/Floor Maker.tscn   �      5      �V���,�(i�M�;nv   res://Scenes/Heart.tscn �      �       b�so�R�����$   res://Scenes/Level Generator.tscn   �      �       ��'�8�_�%�-uD    res://Scenes/Little Tree.tscn   P            Č�Q�����-��,Q   res://Scenes/Player.tscnp      N      �sZr��d��v�� !   res://Scenes/Portal.tscn�      �      �ٔ��ٓY�{1��   res://Scenes/Stairs.tscn�      �      ��U�`Ϫ�B�|s*�   res://Scenes/Turtle.tscn`"      [      U��o;İE��5U7�   res://Scenes/UI.tscn�'      �      6��؏�������   res://Scripts/Box.gd.remap  �      &       ��Y�w{���;�QE�   res://Scripts/Box.gdc   �0      �       �G2���/:���$   res://Scripts/Floor Maker.gd.remap   �      .       ˅���u�o���8��    res://Scripts/Floor Maker.gdc   P1      �      #����i��$���,   res://Scripts/Global/global_inputs.gd.remap P�      7       A��%��@c�K�)�(   res://Scripts/Global/global_inputs.gdc  PA      �      �?7���$��Q�e,   res://Scripts/Global/global_level.gd.remap  ��      6       f�z`zW��p���E(   res://Scripts/Global/global_level.gdc   �D      �      �!���uh��8!�u�4   res://Scripts/Global/player_health_system.gd.remap  У      >       Pe��>��^Լx0   res://Scripts/Global/player_health_system.gdc   �F      �      �t�;��*j-$܃ˉr�(   res://Scripts/Level Generator.gd.remap  �      2       ���� 8X-�H���S-�$   res://Scripts/Level Generator.gdc   PJ            T��7�q0������$   res://Scripts/Little Tree.gd.remap  P�      .       /x�iHDʆ{g�z"    res://Scripts/Little Tree.gdc   pO      A      o�~�S�-�2�c)�N   res://Scripts/Main.gd.remap ��      '       *�e�R��_�������   res://Scripts/Main.gdc  �P      �      ������<��P�    res://Scripts/Player.gd.remap   ��      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc`S            �[�|���|h���r�    res://Scripts/Portal.gd.remap   �      )       n�/K��{�����w?h   res://Scripts/Portal.gdcpc            ��� Si���o��y�    res://Scripts/Stairs.gd.remap   �      )       �~���g/c�H��)   res://Scripts/Stairs.gdc�f      m      �K�is=�R���5��    res://Scripts/Turtle.gd.remap   @�      )       ������I0'4���v   res://Scripts/Turtle.gdc j      J      �{�+W˶�������s   res://Scripts/UI.gd.remap   p�      %       �A5�>����Ƽ`;   res://Scripts/UI.gdcPr      h      S5�}��^a�̦��$   res://Sprite/Heart-Sheet.png.import        �      ����$���к���    res://Sprite/Heart0.png.import  ��      �      c��a�������-�    res://Sprite/Heart1.png.import   �      �      �Q�:�ͫ1*W�O�ǌ�$   res://Sprite/Spritesheet.png.import ��      �      ZBY��������� Q(   res://Sprite/turtle-1-Sheet.png.import  ��      �      d7�rfB�W�o���%   res://default_env.tres  `�      �       um�`�N��<*ỳ�8   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import   p�      �      �����%��(#AB�   res://project.binary��      �      �Ҁ��7�6Dͬ[gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Main.gd" type="Script" id=1]
[ext_resource path="res://Scenes/Level Generator.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scenes/UI.tscn" type="PackedScene" id=3]

[node name="Main" type="Node"]
script = ExtResource( 1 )

[node name="Level Generator" parent="." instance=ExtResource( 2 )]

[node name="UI" parent="." instance=ExtResource( 3 )]
       [gd_scene load_steps=4 format=2]

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

[node name="Boxes" type="Node2D" parent="."]

[node name="Items" type="Node2D" parent="."]

[node name="Enemy" type="Node2D" parent="."]
           [gd_scene load_steps=2 format=2]

[ext_resource path="res://Sprite/Heart0.png" type="Texture" id=1]

[node name="Heart" type="Sprite"]
position = Vector2( 8, 8 )
texture = ExtResource( 1 )
   [gd_scene load_steps=2 format=2]

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
collision_layer = 2147483713
collision_mask = 65
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
  [gd_scene load_steps=4 format=2]

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
extents = Vector2( 4.04365, 7.8 )

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
     [gd_scene load_steps=5 format=2]

[ext_resource path="res://Sprite/turtle-1-Sheet.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Turtle.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 7.39539, 7.12407 )

[node name="Turtle" type="KinematicBody2D"]
collision_layer = 0
collision_mask = 0
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
visible = false
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
hframes = 2
region_enabled = true
region_rect = Rect2( 0, 0, 32, 16 )

[node name="Player Col" type="Area2D" parent="."]
collision_layer = 64
collision_mask = 64

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player Col"]
shape = SubResource( 2 )

[node name="Edge Collision" type="RayCast2D" parent="."]
position = Vector2( -8, 8 )
enabled = true
cast_to = Vector2( 0, 2 )
collision_mask = 3

[node name="Floor Collision" type="RayCast2D" parent="."]
position = Vector2( 3.6148, 8 )
enabled = true
cast_to = Vector2( 0, 2 )
collision_mask = 3
[connection signal="body_entered" from="Player Col" to="." method="_on_Player_Col_body_entered"]
[connection signal="body_exited" from="Player Col" to="." method="_on_Player_Col_body_exited"]
     [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/UI.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[node name="UI" type="CanvasLayer"]
script = ExtResource( 1 )

[node name="Control" type="Control" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Left Buttons" type="CenterContainer" parent="Control"]
anchor_top = 1.0
anchor_bottom = 1.0
margin_top = -320.0
margin_right = 376.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Left" type="TouchScreenButton" parent="Control/Left Buttons"]
position = Vector2( 72, 208 )
normal = ExtResource( 2 )
visibility_mode = 1

[node name="Right" type="TouchScreenButton" parent="Control/Left Buttons"]
position = Vector2( 168, 208 )
normal = ExtResource( 2 )
visibility_mode = 1

[node name="Right Buttons" type="CenterContainer" parent="Control"]
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -376.0
margin_top = -440.0

[node name="Down" type="TouchScreenButton" parent="Control/Right Buttons"]
position = Vector2( 240, 328 )
normal = ExtResource( 2 )
visibility_mode = 1

[node name="Up" type="TouchScreenButton" parent="Control/Right Buttons"]
position = Vector2( 240, 216 )
normal = ExtResource( 2 )
visibility_mode = 1

[node name="Hearts" type="HBoxContainer" parent="Control"]
margin_right = 1024.0
margin_bottom = 600.0
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="Control/Left Buttons/Left" to="." method="_on_Left_pressed"]
[connection signal="released" from="Control/Left Buttons/Left" to="." method="_on_Left_released"]
[connection signal="pressed" from="Control/Left Buttons/Right" to="." method="_on_Right_pressed"]
[connection signal="released" from="Control/Left Buttons/Right" to="." method="_on_Right_released"]
[connection signal="pressed" from="Control/Right Buttons/Down" to="." method="_on_Down_pressed"]
[connection signal="released" from="Control/Right Buttons/Down" to="." method="_on_Down_released"]
[connection signal="pressed" from="Control/Right Buttons/Up" to="." method="_on_Up_pressed"]
[connection signal="released" from="Control/Right Buttons/Up" to="." method="_on_Up_released"]
      GDSC                  ���������τ򶶶�   ����Ӷ��   �����϶�   �����Ӷ�                                	                  3YY;�  YY0�  PQV�  W�  T�  �  Y`      GDSC   1      f   �     ���ӄ�   �����Ķ�   ��������Ķ��   �����Ķ�   �����Ӷ�   ��������Ӷ��   ����   ��Ѷ   ����������Ӷ   ���������Ķ�   �����϶�   ��������������ض   ϶��   ض��   ��ζ   ��ζ   �������Ӷ���   ����Ӷ��   �������Ӷ���   ��������Ҷ��   ζ��   �������������Ķ�   ��������������Ķ   �������������ڶ�   ��������������¶   �����������ض���   �������Ӷ���   ׶��   ��������������Ķ   �������������ݶ�   ����Ŷ��   ����϶��   ���������������Ŷ���   ����׶��   �������Ӷ���   �������ٶ���   �������������������Ӷ���   ����������Ӷ   ����������Ӷ   ��Ŷ   �����ڶ�   �����ڶ�   ����������϶   �����������������Ӷ�   ���������۶�   ���޶���   �����Ӷ�   ���۶���   ���۶���   
                                               res://Scenes/Box1.tscn        Boxes           �������?   d         res://Scenes/Little Tree.tscn         res://Scenes/Portal.tscn      res://Scenes/Turtle.tscn      Items         Enemy                      	                              (   	   -   
   .      4      5      E      K      S      \      b      l      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #     $     %   *  &   :  '   C  (   L  )   M  *   T  +   _  ,   c  -   p  .   �  /   �  0   �  1   �  2   �  3   �  4   �  5   �  6   �  7   �  8   �  9     :     ;     <     =     >   "  ?   2  @   F  A   L  B   [  C   a  D   z  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R      S     T   
  U     V     W   %  X   -  Y   6  Z   @  [   W  \   X  ]   a  ^   f  _   l  `   {  a   �  b   �  c   �  d   �  e   �  f   3YY8;�  Y8;�  �  YY;�  �  Y;�  �  Y;�  �  T�  T�  P�  R�  QY;�	  �  YY0�
  PQVY�  �  �  P�  �  �  R�  T�  Q�  )�  �  V�  ;�  �L  P�  Q�  ;�  �  T�  PQ�  �  T�  �  �  �  P�  QT�  P�  Q�  �  T�  �  P�	  �  T�  �  �  R�  T�  QY�  �  PQ�  �  PQ�  �  �  &�  T�  �  �  V�  �  �  �  )�  �  P�  QT�  PQV�  �  P�  QT�  PQL�  MT�  T�  �
  �  �  P�  QT�  PQL�  MT�  �  �  �  P�  QT�  PQL�  MT�  �  �  W�  T�  T�  �
  �  W�  T�  T�  �
  �  '�  T�  �  �  V�  �  �  �  )�  �  P�  QT�  PQV�  �  P�  QT�  PQL�  MT�  T�  �  �  �  P�  QT�  PQL�  MT�  �  �  �  P�  QT�  PQL�  MT�  �  �  W�  T�  T�  �  �  W�  T�  T�  �  �  Y0�   P�!  QV�  &�  T�  �  �  V�  �  �  �  )�  �  P�  QT�  PQV�  �  P�  QT�  PQL�  MT�  T�  �
  �  �  P�  QT�  PQL�  MT�  �  �  �  P�  QT�  PQL�  MT�  �  �  W�  T�  T�  �
  �  W�  T�  T�  �
  �  �  '�  T�  �  �  V�  �  �  �  )�  �  P�  QT�  PQV�  �  P�  QT�  PQL�  MT�  T�  �  �  �  P�  QT�  PQL�  MT�  �  �  �  P�  QT�  PQL�  MT�  �  �  W�  T�  T�  �  �  W�  T�  T�  �  YY0�  PQV�  &�  �  V�  ;�"  �  T�  T�  P�  R�  �  Q�  ;�#  �"  �  T�  T�  P�"  �  R�  �  Q�  &�#  �  V�  �#  �  T�  T�  P�  R�"  �  Q�  )�  �  V�  &�  T�  T�  P�  R�  Q	�  T�$  �  �"  �  �#  V�  ;�%  �L  P�  Q�  ;�&  �%  T�  PQ�  �  P�  QT�  P�&  Q�  �&  T�  �  P�	  �  T�  �  �  R�  T�  �  Q�  (V�  ;�'  �  T�  T�  P�  R�  Q�  ;�(  �L  P�  Q�  ;�)  �(  T�  PQ�  �  P�  QT�  P�)  Q�  �)  T�  �  P�	  �  T�  �'  �  R�  T�  �  Q�  �  Y0�  PQV�  �*  P�  R�  T�+  QYY0�,  P�-  R�.  QV�  &�  �  V�  )�  �  V�  &�  T�  T�  P�  R�  Q	�.  V�  ;�/  �L  P�-  Q�  ;�0  �/  T�  PQ�  �  P�  QT�  P�0  Q�  �0  T�  �  P�	  �  T�  �  �  R�  T�  �  Q�  Y0�*  P�-  R�.  QV�  &�	  V�  )�  �  V�  &�  T�  T�  P�  R�  Q	�.  V�  ;�/  �L  P�-  Q�  ;�0  �/  T�  PQ�  �  P�  QT�  P�0  Q�  �0  T�  �  P�	  �  T�  �  �  R�  T�  �  Q�  Y`      GDSC         "   �      ���Ӷ���   �ƶ�   �����ƶ�   ���ض���   ���¶���   ����¶��   �����¶�   ����¶��   ����¶��   ���������������������Ҷ�   ����������������������Ҷ             ui_up               ui_down       ui_left       ui_right                                                    	   $   
   -      1      :      >      ?      H      L      U      Y      Z      c      g      p      t      u      ~      �      �      �      �      �      �       �   !   �   "   3YY;�  Y;�  Y;�  Y;�  Y;�  YY0�  P�  QV�  &�  T�	  P�  QV�  �  �  �  '�  T�
  P�  QV�  �  �  �  &�  T�	  P�  QV�  �  �  �  '�  T�
  P�  QV�  �  �  �  &�  T�	  P�  QV�  �  �  �  '�  T�
  P�  QV�  �  �  �  &�  T�	  P�  QV�  �  �  �  '�  T�
  P�  QV�  �  �  �  &�  T�	  P�  QV�  �  �  �  (V�  �  Y`       GDSC   	         <      ���Ӷ���   ��Ѷ   ��������������������Ķ��   ����   ������Ӷ   �������������ڶ�   �������������������Ӷ���   �����������������Ӷ�   �����϶�                
                                                    !   	   "   
   (      )      /      9      :      3YY;�  �  T�  PQY;�  Y;�  �  YY;�  Y;�  �  YY0�  PQV�  �  �  T�%  PQ�  �  T�)  �  T�&  PQ�  Y`        GDSC         !   �      ���Ӷ���   ���������޶�   �������������޶�   �������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   ��������������޶   ������������������޶   ���ڶ���   ����������Ӷ   �����¶�   �����Ӷ�   ����������¶            ui_down             ui_up         ui_right      ui_left                                                  #   	   $   
   -      2      3      <      A      B      K      P      Q      X      \      ]      d      h      n      r      s      z      ~            �      �       �   !   3YY;�  Y;�  YY0�  P�  QV�  &�  T�  P�  QV�  �  P�  QY�  &�  T�  P�  QV�  �  P�  QY�  &�  T�  P�  QV�  �	  P�  QY�  &�  T�  P�  QV�  �
  P�  QYY0�  P�  QV�  �  �  YY0�  P�  QV�  �  �  �  &�  �  V�  �  �  YY0�
  P�  QV�  �  �  YY0�	  P�  QV�  &�  	�  V�  �  �  Y`   GDSC      	       �      ���ӄ�   �������ζ���   �������϶���   �����Ķ�   �����϶�   ����   ��Ѷ   ����������Ӷ   ������Ӷ   ��������������ض   ض��   �������Ķ���   �������Ķ���   �������Ӷ���   ��������Ķ��   �����Ķ�   �������������ڶ�   ���������Ķ�   ��������Ҷ��   ζ��   ϶��   �����Ķ�   �����Ķ�                         res://Scenes/Floor Maker.tscn                     res://Scenes/Player.tscn                                                                 	   -   
   @      A      X      Y      _      g      p            �      �      �      �      �      �      �      �      �      �      �      �      �      �       3YY;�  Y;�  YY;�  YY0�  PQV�  �  �  T�  T�  P�  T�  �  R�  T�  Q�  �  �  T�  T�  P�  T�  �  R�  T�  Q�  �  �	  �  PP�  �  Q�  RP�  �  Q�  Q�  �  )�
  �  V�  ;�  �L  P�  Q�  ;�  �  T�  PQ�  �  T�  �  T�  T�  P�  R�  Q�  �  T�  �  �  �  T�  �  �  �  T�  �  �  &�  �  �  V�  �  T�  �  �  �  P�  Q�  �  T�	  �  P�	  T�  R�	  T�  �
  �  Q�  �  �  �  �  ;�  �L  P�  Q�  ;�  �  T�  PQ�  �  T�	  �  P�  T�  T�  P�  R�  Q�  �  R�  �  �  Q�  �  P�  Q�  Y`    GDSC         
   $      ���ׄ�   ���޶���   ����������¶   ���������¶�   �������Ҷ���   ���������Ӷ�      res://Scenes/Little Tree.tscn         res://Scenes/Stairs.tscn                                                 !   	   "   
   3YY;�  Y;�  LMY;�  L�  MYY0�  PQV�  �  PQYY`               GDSC            Z      ���Ӷ���   ����¶��   ��ڶ   �������Ŷ���   ����׶��   ����¶��   �������������Ҷ�   ��������Ҷ��   ���������Ӷ�   ��������Ҷ��   �������Ӷ���   ���Ҷ���   �������Ӷ���   �������Ӷ���   �����Ҷ�          !   res://Scenes/Level Generator.tscn      R                Level Generator                                                  #      ,   	   5   
   9      :      @      M      N      T      X      3YY;�  Y;�  �L  P�  QYY0�  P�  QV�  &�  T�  P�  Q�  V�  �  P�  QT�  PQ�  �	  P�  T�
  PQQ�  �  YY0�  PQV�  �  P�  QT�  PQT�  �  YY0�  PQV�  �  �  Y`              GDSC   F      �        ������������τ�   �������϶���   ��Ķ   ��Ķ   ����϶��   ����Ķ��   ������������Ҷ��   ����������Ҷ   �������������Ķ�   ����Ҷ��   ����   �������Ҷ���   ����������Ӷ   �����϶�   ������¶   ���   ��������������ض   ϶��   �������Ŷ���   ����׶��   ����������Ķ   ������������Ӷ��   ����Ŷ��   ����Զ��   �������¶���   ���۶���   ���������������Ŷ���   ��������ݶ��   �������������Ӷ�   �涶   ����   ����¶��   ���¶���   �����Ӷ�   �����޶�   ���Ҷ���   ���������������Ŷ���   ����   �������������ڶ�   �����Ҷ�   ��������������Ӷ   ����������������Ӷ��   ����������ζ   ׶��   ���޶���   �������Ӷ���   ����������¶   ���Ҷ���   �����ƶ�   ����������ڶ   ���ض���   ��Ŷ   ζ��   ���۶���   ���۶���   ���������¶�   ��������Ҷ��   �������Ӷ���   ��������Ҷ��   ���������¶�   ���������Ӷ�   ������Ӷ   ����������Ķ   ���������Ķ�   �ƶ�   ��������������������Ҷ��   ���׶���   �����������Ҷ���   ���������¶�   �������������������Ҷ���                           (      Z         take_damage                �               res://Scenes/Portal.tscn      selected      Items                      
                                 	       
   %      *      0      1      6      ;      <      ?      B      C      I      R      Z      [      b      g      n      r      v      z      }      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9     :     ;     <     =   #  >   $  ?   *  @   /  A   4  B   7  C   <  D   =  E   C  F   M  G   U  H   a  I   h  J   p  K   }  L   ~  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y     Z   
  [     \      ]   5  ^   B  _   F  `   L  a   M  b   S  c   Z  d   ~  e     f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }     ~          �     �   3YY;�  �  PQY;�  Y;�  Y;�  YY;�  �  YY;�  �  Y;�  �  Y;�  �  YY:�	  �  Y:�
  �  YYB�  YB�  YY0�  PQV�  �  P�  R�  R�  Q�  �  �  T�  �  YY0�  P�  QV�  &�  V�  &�  PQV�  �  �
  �  �  PQ�  �  PQ�  (V�  �  PQ�  �  PQ�  �  PQYY0�  P�  QV�  �  PQ�  �  P�  R�  T�  QYY0�  PQV�  �  �  T�  �  T�   �  �  �  �  P�  �	  R�  QYYY0�  PQV�  &�  V�  W�!  T�"  �  �  W�#  T�$  �	  �  �  �  �  '�  	V�  W�!  T�"  �  �  W�#  T�$  �  �  �  �  Y0�  PQV�  &�  T�  
�  �  V�  �%  T�&  �  �  �  �
  �  '�  T�  �  �
  V�  �%  T�&  �  �  �  �
  YY0�  PQV�  ;�'  �  �  ;�(  �  �  ;�)  �  ;�*  �  �  �  &�  �  V�  ;�+  �L  P�  T�,  Q�  �)  �+  T�-  PQ�  &�  �  �  T�,  �  V�  �'  �L  P�  Q�  �(  �'  T�-  PQ�  �*  �(  T�.  T�/  P�)  T�,  Q�  �  &�  T�0  �  �  �  �  V�  �  �  T�,  �  �1  P�  QY�  &�  T�2  �  �  �  �  V�  ;�3  �  P�  T�4  �
  Q�
  P�  Q�  �  ;�5  �L  P�  Q�  ;�6  �5  T�-  PQ�  �7  PQT�8  P�%  T�&  QT�9  P�  QT�:  P�6  Q�  �6  T�  �  P�3  R�  T�  Q�  �  �  �  �  '�  T�2  �  �  �*  �  V�  ;�3  �  T�  T�4  �  ;�5  �L  P�(  T�;  L�*  MQ�  ;�6  �5  T�-  PQ�  �7  PQT�8  P�%  T�&  QT�9  P�  QT�:  P�6  Q�  �6  T�  �  P�3  R�  T�  Q�  �  �  �  �  T�<  PQYY0�  PQV�  W�#  T�=  �  �  W�#  T�  �  P�  P�  T�4  �
  Q�
  P�  Q�  R�  P�  T�  �
  Q�
  Q�  Y0�>  PQV�  �  �  �  Y0�?  PQV�  �  �  YY0�  PQV�  W�#  T�=  �  �  &�  T�@  �  V�  �  �
  �  '�  PQV�  �  �
  �  YYY0�A  P�B  QV�  &�  �  �C  P�  R�  R�  QV�  �D  P�  R�  R�  Q�  �  P�  R�B  R�  Q�  �  �B  YY0�E  P�B  QV�  &�C  P�  R�B  R�  QV�  �D  P�  R�B  R�  Q�  &�B  �  V�  �  �  YY`     GDSC            r      ���ׄ�   ���޶���   ������Ҷ   ����¶��   �����϶�   ������¶   ���������¶�   �������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   ����������ڶ   ����������������������Ҷ   ���϶���   ���Ӷ���   ���������������������Ҷ�      res://Scenes/Portal.tscn             reset         ui_up         Player                                 	                           	      
   0      1      8      C      H      I      P      X      \      ]      d      l      p      3YY;�  YY;�  �  YYB�  YY0�  PQV�  �  P�  R�  PQT�  PQT�  PQT�  PQR�  QYY0�  P�  QV�  &�  �	  T�
  P�  QV�  �  P�  QYY0�  P�  QV�  &�  T�  �  V�  �  �  YY0�  P�  QV�  &�  T�  �  V�  �  �  Y`       GDSC            �      ���ׄ�   ���޶���   ����������¶   ���������¶�   ����Ķ��   ���¶���   �����϶�   ������¶   ���������¶�   �������Ӷ���   �������Ҷ���   ���������Ӷ�   ����������������������Ҷ   ���϶���   ���Ӷ���   ����������ڶ   ���������������������Ҷ�      res://Scenes/Stairs.tscn      enter         Player        enter_stair       exit   
   exit_stair                           	                           	      
         #      ;      S      T      Z      ^      _      f      n      s      t      {      �      �      3YY;�  YY;�  LMY;�  LMYYB�  YB�  YY0�  PQV�  �  P�  R�  PQT�  PQT�  PQT�	  P�  QR�  Q�  �  P�  R�  PQT�  PQT�  PQT�	  P�  QR�  QYY0�
  PQV�  �  PQYY0�  P�  QV�  &�  T�  �  V�  �  P�  QYY0�  P�  QV�  &�  T�  �  V�  �  P�  QY`   GDSC         M   o     ������������τ�   �������������Ҷ�   ���Ӷ���   ����Ķ��   ���������ƶ�   ����������ƶ   �������϶���   ����Ҷ��   ������϶   ��Ķ   ����������Ҷ   ��Ķ   �����Ӷ�   ��������¶��   �����Ķ�   �������Ŷ���   ����׶��   �����������Ѷ���   �������ض���   ζ��   ���������������Ŷ���   �����ݶ�   �������������Ӷ�   ��������������������������Ҷ   ���϶���   ���Ӷ���   �����Ӷ�   ����Ӷ��   ����������ڶ   �������������������������Ҷ�                   ?         Z                    Edge Collision        Floor Collision             Player        take_damage                          	                           	      
         &      +      0      6      ;      @      A      F      K      P      Q      R      Y      e      o      y      ~      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7      8     9     :   	  ;     <     =   $  >   (  ?   ,  @   -  A   3  B   7  C   >  D   B  E   M  F   Q  G   T  H   Y  I   Z  J   a  K   i  L   m  M   3YY;�  YY;�  �  Y;�  �  YY;�  �  Y;�  �  YY;�  �  PQY;�  �  Y;�  �  Y;�	  �  Y;�
  Y;�  �  YY;�  �  Y;�  Y;�  �  YYY0�  P�  QV�  &W�  T�  PQ�
  V�  W�  T�  T�  �  �  W�  T�  T�  �  �  �	  �  �  �
  �  �  &W�  T�  PQV�  �  �  �  (V�  �  �  �  �  &W�  T�  PQV�  �
  �	  �  �  �  �  P�  �	  R�  QYY0�  P�  QV�  �  P�  Q�  �  �  P�  QYY0�  P�  QV�  &�  T�  �
  V�  �  �  �  �  �	  YY0�  P�  QV�  &�  V�  �  �  �  �	  �  �  �  &�  
�  V�  W�  T�  �  �  �  �  �  �  �  �  &W�  T�  �  V�  &�  �  �  V�  �  T�  P�  R�  Q�  �  �	  �  �  �  �  �  &�  
�  V�  �  �  W�  T�  �  �  �  �  �  &W�  T�  T�  �  V�  �	  �  �  (V�  �	  �  YY0�  P�  QV�  &�  T�  �
  V�  �  �  Y`      GDSC   .   
   [   0     ����������Ķ   ����¶��   ������ӆ����   ������Ӈ����   �����ƶ�   ���   ���������޶�   ��������ƶ��   �����޶�   ���Ҷ���   �����϶�   ������¶   ���������¶�   ض��   ����¶��   �������Ӷ���   ������Ӷ   ����Ӷ��   ���Ӷ���   ������ڶ   �����Ŷ�   ��������Ҷ��   ��������������ض   ���������������Ŷ���   ����׶��   ������������϶��   �������������޶�   ����������ڶ   ��������������¶   �������Ӷ���   ���������Ӷ�   ����������¶   �Ķ�   ���������������Ҷ���   ����   ���¶���   ����������������Ҷ��   ����������������Ҷ��   ����¶��   �����������������Ҷ�   ���������������Ҷ���   ���ض���   ����������������Ҷ��   �������������Ҷ�   �ƶ�   ��������������Ҷ      res://Scenes/Heart.tscn       res://Sprite/Heart0.png       res://Sprite/Heart1.png             dead      heart                                                                       #      *   	   +   
   0      1      4      5      ;      F      N      W      ]      h      u            �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &      '     (     )     *     +   '  ,   4  -   >  .   S  /   T  0   U  1   ]  2   d  3   e  4   k  5   q  6   r  7   s  8   z  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O      P     Q     R     S     T     U     V     W   !  X   "  Y   (  Z   .  [   3YY;�  ?PQY;�  ?P�  QY;�  ?P�  QYY;�  �  T�  Y;�  �  T�  YY;�  �  YYB�	  YY0�
  PQV�  �  P�  R�  PQR�  Q�  )�  �  T�  V�  ;�  �  T�  PQ�  �  T�  �  �  �  T�  �  P�  R�  Q�  �  T�  �  �>  P�  �  Q�  W�  �  T�  P�  Q�  �  T�  �  PP�  �  �  Q�  R�  �  QYY0�  P�  QV�  �  PQ�  &�  T�  
�	  V�  �  P�  QYY0�  PQV�  �  &�  �  T�  V�  )�  W�  �  T�  PQV�  &�  �  �  T�  V�  W�  �  T�  P�  �>  P�  �  QQT�  �  �  �  �  &�  	�  T�  V�  )�  W�  �  T�  PQV�  &�  	�  T�  V�  W�  �  T�  P�  �>  P�  �  QQT�  �  �  �  �  &�  �  T�  V�  )�  W�  �  T�  PQV�  &�  �  �  T�  V�  W�  �  T�  P�  �>  P�  �  QQT�  PQ�  �  �  &�  	�  T�  V�  �  P�  T�  Q�  �  �  �  T�  �  �  �  T�  YYY0�  P�   QV�  ;�  �  T�  PQ�  �  T�  �  �  �  T�  �  P�  R�  Q�  �  T�  �  �>  P�   Q�  W�  �  T�  P�  Q�  �  T�  �  PPP�   �  Q�  �  Q�  R�  �  QYYY0�!  PQV�  �"  T�#  �  YY0�$  PQV�  �"  T�#  �	  YYY0�%  PQV�  �"  T�&  �  YY0�'  PQV�  �"  T�&  �	  YYY0�(  PQV�  �"  T�)  �  YY0�*  PQV�  �"  T�)  �	  YYY0�+  PQV�  �"  T�,  �  YY0�-  PQV�  �"  T�,  �	  Y`        GDST                  PNG �PNG

   IHDR          w }Y   sRGB ���   �IDATH���K� �[���/����yfC�}��'&(-�������]�9���qdcT⭘�|�|'�vD�����v<s�}��RL(N�%�C#]�>��b(�u�ܼ�"=, F��L�����$�o)��^]�M%4�'�+�7�!4U�c���	����̼p!�ϩ�2� T�sB4� *�s	B5 @�o�$�a5}��z(�q�e:H�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Heart-Sheet.png-b041a1143fb29a1e421f65f2ed938dd7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/Heart-Sheet.png"
dest_files=[ "res://.import/Heart-Sheet.png-b041a1143fb29a1e421f65f2ed938dd7.stex" ]

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
  GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8����� E8{&����sl�怏p�+��K���+�d1�d�B������J[jH�=�, @�'�GF��
�Yh�tC'�/�a�3#:��Da�@3$�p)x��pK@%-�	*	�@^�QיW{��G*��    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/Heart0.png-3108d51470ea1243de222f558fe8cbe7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/Heart0.png"
dest_files=[ "res://.import/Heart0.png-3108d51470ea1243de222f558fe8cbe7.stex" ]

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
 GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8����� E	kxs���y���BI�V0Ɵ�����F�8O|ITkVkr��l�$��Y��S�l�]MpZ�w��K%�.��<
A�w�� ���C�C��I��Ɍ����-�'1aOp��0 ��o��C� ��G���-�    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Heart1.png-adaa8b30fd8abfce94446d3c7f21ee25.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/Heart1.png"
dest_files=[ "res://.import/Heart1.png-adaa8b30fd8abfce94446d3c7f21ee25.stex" ]

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
 GDST@                �  PNG �PNG
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
  GDST                B  PNG �PNG

   IHDR          w }Y   sRGB ���   �IDATH��U9� \eR�UJW���G�:�t� i�qd�[�v��c�E�9ϩ�e �?�Z��������}X՛~�I�o���BJ�TE3�I%�����¢S�E�r� �[g`��
�@֙Ds���;�W����E�NP�g� @�uR�+���o�0�:��@T-���9�R;��h��D�k�͟���� T� ��+�����<�Z�= ds��[g
@���^�F2j�a�T>�M��kr    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/turtle-1-Sheet.png-88727d4360b55428275e2b9419f54b4c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/turtle-1-Sheet.png"
dest_files=[ "res://.import/turtle-1-Sheet.png-88727d4360b55428275e2b9419f54b4c.stex" ]

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
         [gd_resource type="Environment" load_steps=2 format=2]

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

path="res://Scripts/Global/global_inputs.gdc"
         [remap]

path="res://Scripts/Global/global_level.gdc"
          [remap]

path="res://Scripts/Global/player_health_system.gdc"
  [remap]

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
       [remap]

path="res://Scripts/Turtle.gdc"
       [remap]

path="res://Scripts/UI.gdc"
           �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Climb      application/run/main_scene          res://Rooms/Main.tscn       application/boot_splash/bg_color      q�>q�>q�>  �?   application/config/icon         res://icon.png     autoload/GL0      %   *res://Scripts/Global/global_level.gd      autoload/GI0      &   *res://Scripts/Global/global_inputs.gd     autoload/PHS8      -   *res://Scripts/Global/player_health_system.gd      display/window/stretch/mode         viewport   display/window/stretch/aspect         expand     layer_names/2d_physics/layer_1         Player/Hand    layer_names/2d_physics/layer_2         Hidden Boxes   layer_names/2d_physics/layer_5         Damage     layer_names/2d_physics/layer_6         Enemy      layer_names/2d_physics/layer_7         Player/Enemy$   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      д4>+��=r�>  �?)   rendering/environment/default_environment          res://default_env.tres     
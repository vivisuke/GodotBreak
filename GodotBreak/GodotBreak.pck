GDPC                                                                                D   res://.import/Ball16x16.png-f8261f306d241380b11cd761e69f73a6.stex   �/            \h�:*��U���H   res://.import/Ball_gray16x16.png-6e89bc546127f1cd54049f44396159ca.stex  �3      ?      �j9��:%ˍ~��o�@   res://.import/Pad96x24.png-f4ad73745b67100a8136c20c224e3f4d.stex�7      �      �u��l�S��`�$��L   res://.import/block_yellow38x12.png-a113a489bee109c3a86d96425dafdd1f.stex   �;      �       @"�?=����p("'C�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex        U      -��`�0��x�5�[   res://Ball.tscn �      �      R-Bm�B}o�>y�}�   res://BallTail.tscn `      �       P�Vn6Q9�y�r�+�   res://BlockYellow.tscn              [��j�硌�!�veX   res://MainScene.gd.remapP?      $       /�w�2C��߇�]Z~{   res://MainScene.gdc  
      �
      j	��2�"an��A��   res://MainScene.tscn       G
      L(���l������   res://default_env.tres  P      �       um�`�N��<*ỳ�8   res://icon.png  �?      �      G1?��z�c��vN��   res://icon.png.import   `-      �      �����%��(#AB�$   res://images/Ball16x16.png.import   �0      �      �h�N0�^P�d,�°�(   res://images/Ball_gray16x16.png.import  �4      �      ��@�4MB�ޡf�3    res://images/Pad96x24.png.importP9      �      �1���GH�{�SKL��v,   res://images/block_yellow38x12.png.import   �<      �      ��H��/ǒ��Q��z�   res://project.binarypL      4      ��d5���^�޷`]��[gd_scene load_steps=3 format=2]

[ext_resource path="res://images/Ball16x16.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 8.0

[node name="Ball" type="KinematicBody2D"]

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 1, 1, 1, 0.501961 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
           [gd_scene load_steps=2 format=2]

[ext_resource path="res://images/Ball_gray16x16.png" type="Texture" id=1]

[node name="BallTail" type="Sprite"]
texture = ExtResource( 1 )
   [gd_scene load_steps=3 format=2]

[ext_resource path="res://images/block_yellow38x12.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 19, 6 )

[node name="BlockYellow" type="StaticBody2D"]

[node name="TextureRect" type="TextureRect" parent="."]
margin_right = 38.0
margin_bottom = 12.0
texture = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 19, 6 )
shape = SubResource( 1 )
          GDSC   7      E   �     ���ӄ�   ����������������   ������������ⶶ�   ������������   ������������   �����������ⶶ��   ���������   ������������ⶶ�   ����������   ����Ӷ��   ������Ҷ   ��ڶ   ������Ӷ   ������������   �������ڶ���   �����������Ŷ���   ϶��   �϶�   ζ��   �ζ�   ��ݶ   �������Ӷ���   �������ض���   ��������Ҷ��   �����϶�   �����¶�   ����¶��   ������������϶��   ������Ҷ   �������Ӷ���   ����������   ��������󶶶   ���������������Ŷ���   ����׶��   �ζ�   ����¶��   ����������������Ҷ��   ��Ҷ   ���������������Ӷ���   ���ڶ���   ������Ӷ   �������Ķ���   ���Ӷ���   �����Ӷ�   �����ڶ�   ���¶���   ���������Ӷ�   ��������������������¶��   �¶�   �������Ӷ���   ׶��   ��������ݶ��   Զ��   ����϶��   ��������¶��   �                 &            d      �     ,                     res://BlockYellow.tscn        res://BallTail.tscn             ui_right      ui_left                        @Block       �?  ffffff�?  -C��6?                                                 !   	   &   
   +      ,      3      :      E      K      L      T      \      ]      c      l      u      ~      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +   )  ,   -  -   1  .   ;  /   D  0   N  1   R  2   T  3   a  4   g  5   p  6   {  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   3YY:�  Y:�  �  Y:�  �  Y:�  �  Y:�  �  Y:�  �  Y:�  �  Y:�  �  YY;�	  V�  �  Y;�
  V�  �	  Y;�  �  P�  R�  QY;�  LMYY;�  �L  P�
  QY;�  �L  P�  QYY0�  PQV�  )�  �K  P�  QV�  ;�  �  �  �  �  )�  �K  P�  QV�  ;�  �  �  �  �  ;�  �  T�  PQ�  �  T�  �  P�  R�  Q�  �  P�  QY0�  PQV�  �  PQ�  -Y0�  P�  QV�  &�  4�  �  T�  V�  &�  T�  �  �  T�  �  V�  �	  �	  �  �
  �  �  -Y0�   P�!  QV�  ;�"  �  P�#  T�$  P�  QQ�  P�#  T�$  P�  QQ�  &�"  �  V�  W�%  T�&  P�  P�"  �  R�  Q�!  Q�  &�
  V�  W�'  T�  T�  W�%  T�  T�  �  &W�'  T�  T�  �  V�  �	  �  �  �
  �	  �  W�'  T�  W�%  T�  �  W�'  T�  T�  �  �  �  �  P�  R�  Q�  &�	  V�  .�  ;�(  W�'  T�&  P�  �!  Q�  &�(  �  V�  �?  P�(  T�)  T�*  Q�  �  �  T�+  P�(  T�,  Q�  &�(  T�)  T�*  T�-  P�  Q�  V�  �(  T�)  T�.  PQ�  -Y0�/  PQV�  &�	  V�  ;�0  �  T�  PQ�  �0  T�  W�'  T�  �  �0  T�1  T�2  �  �  �  P�0  Q�  �  T�3  P�0  Q�  )�4  �  V�  �4  T�1  T�2  �  �  *�  T�5  PQ�  L�  MT�1  T�2  
�  V�  �  T�6  PQY`      [gd_scene load_steps=8 format=2]

[ext_resource path="res://images/Ball16x16.png" type="Texture" id=1]
[ext_resource path="res://MainScene.gd" type="Script" id=2]
[ext_resource path="res://images/Pad96x24.png" type="Texture" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 11, 400 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 250, 30 )

[sub_resource type="CapsuleShape2D" id=3]
radius = 12.0
height = 74.0

[sub_resource type="CircleShape2D" id=4]
radius = 8.0

[node name="MainScene" type="Node2D"]
script = ExtResource( 2 )

[node name="LeftWall" type="StaticBody2D" parent="."]
__meta__ = {
"_edit_group_": true
}

[node name="ColorRect" type="ColorRect" parent="LeftWall"]
margin_right = 22.0
margin_bottom = 800.0
color = Color( 0.501961, 0.501961, 0.501961, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="LeftWall"]
position = Vector2( 11, 400 )
shape = SubResource( 1 )

[node name="RightWall" type="StaticBody2D" parent="."]
position = Vector2( 480, 0 )
__meta__ = {
"_edit_group_": true
}

[node name="ColorRect" type="ColorRect" parent="RightWall"]
margin_right = 22.0
margin_bottom = 800.0
color = Color( 0.501961, 0.501961, 0.501961, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="RightWall"]
position = Vector2( 11, 400 )
shape = SubResource( 1 )

[node name="UpperWall" type="StaticBody2D" parent="."]
__meta__ = {
"_edit_group_": true
}

[node name="ColorRect" type="ColorRect" parent="UpperWall"]
margin_right = 500.0
margin_bottom = 60.0
color = Color( 0.501961, 0.501961, 0.501961, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="UpperWall"]
position = Vector2( 250, 30 )
shape = SubResource( 2 )

[node name="Pad" type="KinematicBody2D" parent="."]
position = Vector2( 250, 700 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="Pad"]
texture = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Pad"]
rotation = 1.5708
shape = SubResource( 3 )

[node name="Ball" type="KinematicBody2D" parent="."]
position = Vector2( 250, 680 )
z_index = 1

[node name="Sprite" type="Sprite" parent="Ball"]
modulate = Color( 1, 1, 1, 0.501961 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Ball"]
shape = SubResource( 4 )

[node name="Timer" type="Timer" parent="Ball"]
wait_time = 0.01
autostart = true

[connection signal="timeout" from="Ball/Timer" to="." method="_on_BallTimer_timeout"]
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
GDST              �   PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8�����0�F��DU4D��@QP*��h�8 ���=|�ُ�P��B-�Ʒ���|���e2��!y?V�e�霘W�i���-� ���"�πI�>�-�� h�z֙��	�ی�[�UP�J�7vE:f�tf���a<xL��$S݃��9�'���Hm?��    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ball16x16.png-f8261f306d241380b11cd761e69f73a6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/Ball16x16.png"
dest_files=[ "res://.import/Ball16x16.png-f8261f306d241380b11cd761e69f73a6.stex" ]

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
          GDST              #  PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8���1JQ��/�5�o�+J��#�)���(��)�B� �>�0�X�{�i��U����a`�,KT�8���c�����>1��b=�
O��p�i4�-�bfx��?�IWxH��z�c5B0D���a@�A8��m��Z v��u��`��m���A}���g��%�cqDx3�S�Ƶ���� � 6���\a�͖�WD�&~ ��'��`d3    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ball_gray16x16.png-6e89bc546127f1cd54049f44396159ca.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/Ball_gray16x16.png"
dest_files=[ "res://.import/Ball_gray16x16.png-6e89bc546127f1cd54049f44396159ca.stex" ]

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
           GDST`              �  PNG �PNG

   IHDR   `      ���   sRGB ���  fIDATh��ڽ.DA�g�D$�I��O�"��+X=ꕸ�� V$z�ބ�R���FB(�.��]�8&1��|ś������d��7&���c����Nq�c\�*,���1�RD�հ����&`�.>WT��.��OYG����/�0Pm}غ*���x�5��`�P1y�,n�[ж4�i[�+`��)>o�ʰ,~}X�P�$b�s�SDl�d�����D�� �����CD�1�Y�;�P�"b�t�U� v���abt��֟q��I�1���g�����*nio�����XU�^ �[��I]���$�e[v;	���S�˻�g0�c��}+�iB����"��C�گ�\�*� ��AkL���    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Pad96x24.png-f4ad73745b67100a8136c20c224e3f4d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/Pad96x24.png"
dest_files=[ "res://.import/Pad96x24.png-f4ad73745b67100a8136c20c224e3f4d.stex" ]

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
             GDST&              �   PNG �PNG

   IHDR   &      
��   sRGB ���   BIDAT8��Ρ  ����B2T�*��:y�����4�N�=9����x�1U��zL�c*�i �7n�
g��A�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/block_yellow38x12.png-a113a489bee109c3a86d96425dafdd1f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/block_yellow38x12.png"
dest_files=[ "res://.import/block_yellow38x12.png-a113a489bee109c3a86d96425dafdd1f.stex" ]

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
  [remap]

path="res://MainScene.gdc"
            �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      application/config/name      
   GodotBreak     application/run/main_scene         res://MainScene.tscn   application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres              
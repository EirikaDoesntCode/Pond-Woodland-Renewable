GDPC                �                                                                         X   res://.godot/exported/133200997/export-2151d920f46959236f98720805aed1cc-loss_screen.scn 0      f      [��J˃�DΑ(��P�I    P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�      
      
w3�֣��^���v,�    T   res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn   0#      
      ���h�U��F^}Z�     ,   res://.godot/global_script_class_cache.cfg  �.             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �Yz=������������       res://.godot/uid_cache.bin  �2      w       }������ƌiw�       res://Fish.gd   �      �      ؀)����J��0�a�       res://LossScreen.gd @      �       ŎN#�4}>�U��<�       res://Main.gd   �            l57^��E���Jnw��       res://Wood.gd   �      �      �6�5f;���Eί-'       res://eggs.gd           �      X&U�T'Y����4 r       res://icon.svg  �.      �      C��=U���^Qu��U3       res://icon.svg.import   p      �       �('��^ꈹ��\��K�       res://loss_screen.tscn.remapP-      h       E����Đ	���a)�       res://main.tscn.remap   �-      a       �J�Sw� ������       res://project.binary 3      �      6��A�������4���       res://world.gd  `      �      9�$U�&~�.R���b�       res://world.tscn.remap  0.      b       �t�׵B�}��6�x            extends Label
@onready var eggs = get_node("/root/World")

var count = 0;
var threshold = 100;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("Eggies: " + str (eggs._NumEgg))
	count += 1
	if count == threshold:
		eggs._NumEgg -= eggs._FoxTheftRate / eggs._ShrineReduction
		count = 0
		if threshold > 10:
			threshold -= eggs._FoxTheftRate * 2


func _on_world_egg_changed(egg_count):
	if eggs._NumFish < egg_count or eggs._NumWood < egg_count:
		print("Low Resources")
	else:
		eggs._NumFish -= egg_count
		eggs._NumWood -= egg_count
		eggs._NumEgg += 1
		
	
           extends Label

@onready var fish = get_node("/root/World");


# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("Fish: " + str (fish._NumFish))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("Fish: " + str (fish._NumFish))

func _on_world_fish_changed(fish_count):
	fish._NumFish += fish_count; 

               GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b0drerl7b2db5"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                extends Node2D

func _process(delta):
	#print("loss running")
	pass

#func _on_return_pressed():
#	print("loss return")
#	get_tree().change_scene_to_file("res://main.tscn")


func _on_quit_pressed():
	print("loss quit")
	get_tree().quit()
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://LossScreen.gd ��������      local://PackedScene_ol3m2          PackedScene          	         names "         LossScreen    script    Node2D    Quit    offset_left    offset_top    offset_right    offset_bottom    text    Button    Label    horizontal_alignment    vertical_alignment 
   uppercase    _on_quit_pressed    pressed    	   variants                     ��C     7C    �!D    ��C      Quit      �C     �B     D     C   
   Game Over                   node_count             nodes     1   ��������       ����                      	      ����                                             
   
   ����                        	      
                               conn_count             conns                                      node_paths              editable_instances              version             RSRC          extends Node2D

func _on_quit_pressed():
	get_tree().quit()



func _on_play_pressed():
	#Change to the "World" scene
	get_tree().change_scene_to_file("res://world.tscn")


func _on_load_pressed():
	#Opens the Saves menu over the current screen
	pass # Replace with function body.
       RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Main.gd ��������      local://PackedScene_20qv3          PackedScene          	         names "         Main    script    Node2D    Play    offset_left    offset_top    offset_right    offset_bottom    text    Button    Load    Quit    _on_play_pressed    pressed    _on_load_pressed    _on_quit_pressed    	   variants                      �B     �B     �C     TC      I am a button
(Play)
      �B    ��C     �C    ��C   (   Button 2
(Load) probably
 not happening      �B    ��C     yC    ��C      Button 3
(Quit)
       node_count             nodes     <   ��������       ����                      	      ����                                             	   
   ����                        	      
               	      ����                                           conn_count             conns                                                                                      node_paths              editable_instances              version             RSRC      extends Label

@onready var wood = get_node("/root/World");

# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("Wood: " + str (wood._NumWood))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("Wood: " + str (wood._NumWood))



func _on_world_wood_changed(wood_count):
	wood._NumWood += wood_count;

extends Node2D

signal fish_changed(fish_count)
signal wood_changed(wood_count)
signal egg_changed(egg_count)


# Variables to be called globalling kind of
var _NumFish = 8;
var _NumEgg = 10;
var _NumWood = 0;

var _BearStrength = 5;
var _BeaverStrength = 5;
var _ShrineReduction = 1;
var _FoxTheftRate = 1;
var _EggConversion = 10;
var deathTriggered = true;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("world running")
	if _NumEgg == 0 and deathTriggered:
		get_tree().change_scene_to_file("res://loss_screen.tscn")
		deathTriggered = false




func _on_beaver_pressed():
	emit_signal("wood_changed", _BeaverStrength)


func _on_buy_egg_pressed():
	emit_signal("egg_changed", _EggConversion)


func _on_town_hall_pressed():
	pass # Replace with function body.


func _on_shrine_pressed():
	pass # Replace with function body.


func _on_bear_ltd_pressed():
	emit_signal("fish_changed",	_BearStrength)

          RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://world.gd ��������   Script    res://Fish.gd ��������   Script    res://Wood.gd ��������   Script    res://eggs.gd ��������      local://PackedScene_2le4d u         PackedScene          	         names "          World    script    Node2D    Beaver    offset_left    offset_top    offset_right    offset_bottom    text    Button    FoxHole    BuyEgg 	   TownHall    Shrine    BearLtd    Fish    Label    Wood    eggs    _on_world_egg_changed    egg_changed    _on_world_fish_changed    fish_changed    _on_wood_changed    wood_changed    _on_world_wood_changed    _on_beaver_pressed    pressed    _on_buy_egg_pressed    _on_town_hall_pressed    _on_shrine_pressed    _on_bear_ltd_pressed    	   variants    0                 �TD    ��C     ~D    ��C      Beaver Woodcutting      �C     `A    �D     �B   	   Fox hole      �C     �C    �D     �C      Buy egg     ��C    ��C     D    @D   
   Town hall      �C     �B    @D     VC      Shrine      �B    ��C    ��C    ��C      Bear fishing ltd.      C     �A     FC     8B      Fish: 0              �\D    �lD     (B      Wood: 0               �C     �A    �D     <B      Eggies: 100
                node_count    
         nodes     �   ��������       ����                      	      ����                                             	   
   ����                        	      
               	      ����                                             	      ����                                             	      ����                                             	      ����                                                   ����                   !      "      #      $                     ����      %            &      '      (      )                     ����      *      +      ,      -      .      /             conn_count    	         conns     ?       	                                                                                                                                                                                                                           node_paths              editable_instances              version             RSRC           [remap]

path="res://.godot/exported/133200997/export-2151d920f46959236f98720805aed1cc-loss_screen.scn"
        [remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
               [remap]

path="res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn"
              list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             t���8��9   res://icon.svg�Z���   res://loss_screen.tscn��z�a��6   res://main.tscn��~�`�   res://world.tscn         ECFG      application/config/nameL      D   ThreeThingGame-Pond-Woodland-Renewable-EirikaDoesntKnowWhatShesDoing   application/run/main_scene         res://main.tscn    application/config/features   "         4.1    Mobile     application/config/icon         res://icon.svg     autoload/World         *res://world.gd    dotnet/project/assembly_nameL      D   ThreeThingGame-Pond-Woodland-Renewable-EirikaDoesntKnowWhatShesDoing#   rendering/renderer/rendering_method         mobile      
item replace entity @s hotbar.3 with minecraft:tripwire_hook{display:{Name:'{"text":"鳴子罠"}',Lore:['{"text":"発動:スニーク"}','{"text":"移動を阻害する罠を設置する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3
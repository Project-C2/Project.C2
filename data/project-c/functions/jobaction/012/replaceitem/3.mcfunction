item replace entity @s hotbar.3 with minecraft:skeleton_skull{display:{Name:'{"text":"ヴィンディケーター"}',Lore:['{"text":"発動:スニーク"}','{"text":"ヴィンディケーターを召喚する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3
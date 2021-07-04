item replace entity @s hotbar.2 with minecraft:shears{display:{Name:'{"text":"ファング"}',Lore:['{"text":"発動:スニーク"}','{"text":"敵の足元にファングを召喚する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
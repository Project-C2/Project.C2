item replace entity @s hotbar.2 with minecraft:creeper_spawn_egg{display:{Name:'{"text":"爆弾設置"}',Lore:['{"text":"発動:スニーク"}','{"text":"起爆可能な爆弾を設置する。"}']}}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
item replace entity @s hotbar.1 with minecraft:white_shulker_box{display:{Name:'{"text":"石"}',Lore:['{"text":"発動:スニーク+ジャンプ"}','{"text":"石を設置する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1
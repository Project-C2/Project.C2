item replace entity @s hotbar.2 with minecraft:potion{display:{Name:'{"text":"麻痺薬","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f矢に毒を塗る。"}','{"text":"§aCT:10"}']},HideFlags:63,CustomPotionColor:165555} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
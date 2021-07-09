item replace entity @s hotbar.3 with minecraft:diamond{display:{Name:'{"text":"召雷","color":"yellow","italic":"false","underlined":"true","bold":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f中距離に雷を落とす。"}','{"text":"§aCT20"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3
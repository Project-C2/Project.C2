item replace entity @s hotbar.2 with minecraft:nether_star{display:{Name:'{"text":"フィン・ファンネル","color":"yellow","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§fビットを無数に飛ばして攻撃する。"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
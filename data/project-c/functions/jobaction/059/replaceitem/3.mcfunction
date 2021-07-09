item replace entity @s hotbar.3 with minecraft:cyan_dye{display:{Name:'{"text":"通常攻撃 水属性","color":"aqua","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f水属性で攻撃する。"}','{"text":"§aCT:1"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3
item replace entity @s hotbar.2 with minecraft:green_dye{display:{Name:'{"text":"通常攻撃 風属性","color":"green","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f風属性で攻撃する。"}','{"text":"§aCT:1"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
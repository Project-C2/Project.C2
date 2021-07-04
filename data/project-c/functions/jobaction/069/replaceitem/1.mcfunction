item replace entity @s hotbar.1 with minecraft:feather{display:{Name:'{"text":"蹴り上げ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:攻撃"}','{"text":"§f敵を打ち上げる。"}','{"text":"§aCT:1"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1
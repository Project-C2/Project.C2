item replace entity @s hotbar.2 with minecraft:enchanting_table{display:{Name:'{"text":"ダークギャザリング","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f自分にダメージを与え、"}','{"text":"§f味方全員に3秒無敵を付与する。"}','{"text":"§aCT:15"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
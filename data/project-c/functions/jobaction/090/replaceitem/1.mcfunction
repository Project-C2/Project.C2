item replace entity @s hotbar.1 with minecraft:fermented_spider_eye{display:{Name:'{"text":"エンゲイジ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f敵が来るまでもない。こちらから行ってやる。"}','{"text":"§aCT:15"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1
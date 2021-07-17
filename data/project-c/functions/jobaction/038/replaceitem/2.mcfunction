item replace entity @s hotbar.2 with minecraft:end_crystal{display:{Name:'{"text":"約束された勝利の剣"}',Lore:['{"text":"発動:スニーク"}','{"text":"効果:詠唱を開始し、前方にビームを打つ。"}','{"text":"CT:60"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
item replace entity @s hotbar.1 with minecraft:stone_sword{display:{Name:'{"text":"ビームサーベル","color":"red","italic":"false","underlined":"true"}'},HideFlags:1,Enchantments:[{id:"minecraft:punch",lvl:3},{id:"minecraft:infinity",lvl:1}],Unbreakable:1b} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1

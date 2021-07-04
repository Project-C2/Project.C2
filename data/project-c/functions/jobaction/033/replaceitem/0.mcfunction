item replace entity @s hotbar.0 with minecraft:book{display:{Name:'{"text":"ファイアボール"}',Lore:['{"text":"発動:右クリック"}','{"text":"効果:前方に炎の弾を打ち出す。"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:1} 1
item replace entity @s[scores={counter_1=..1}] weapon.offhand with minecraft:snowball 3

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
item replace entity @s hotbar.0 with minecraft:diamond_sword{display:{Name:'{"text":"せいどうのつるぎ"}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;220450125,-981512901,-1103438748,1850377202],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;220450125,-981512901,-1103438748,1850377202],Slot:"mainhand"}],Unbreakable:1b} 1

item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"中身","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"魔法発動に使う"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
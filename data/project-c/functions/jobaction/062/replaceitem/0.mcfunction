item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"楼観剣","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f自身と半霊から弾を射撃する。チャージ可能"}','{"text":"§aCT:2"}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-555679251,-1343143813,-1175745070,1343525811],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-555679251,-1343143813,-1175745070,1343525811],Slot:"mainhand"}],Unbreakable:1b,HideFlags:1} 1


item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.0,Operation:0,UUID:[I;-555679251,-1343143813,-1175745070,1343525811],Slot:"offhand"}]} 1


scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
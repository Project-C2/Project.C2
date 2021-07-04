item replace entity @s hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"twig"}'},HideFlags:1} 1


item replace entity @s weapon.offhand with minecraft:brewing_stand{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1.0,Operation:0,UUID:[I;433024269,-1290320298,-1646890916,-1769706463],Slot:"offhand"}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
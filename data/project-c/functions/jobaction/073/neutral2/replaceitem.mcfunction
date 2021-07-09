item replace entity @s inventory.18 with minecraft:air 1
item replace entity @s inventory.19 with minecraft:air 1
item replace entity @s inventory.20 with minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:'{"text":"§dMagicDamage Ⅱ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§cFireDamage Ⅰ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§eLightningDamage Ⅰ"}'}}

item replace entity @s inventory.18 with minecraft:splash_potion{display:{Name:'{"text":"§dMagicDamage Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:10496467}
item replace entity @s inventory.19 with minecraft:splash_potion{display:{Name:'{"text":"§cFireDamage Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:12976128}
item replace entity @s inventory.20 with minecraft:splash_potion{display:{Name:'{"text":"§eLightningDamage Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:13877569}

tag @s remove havingneutral2-1item
tag @s remove havingneutral2-2item
tag @s remove havingneutral2-3item
item replace entity @s inventory.24 with minecraft:air 1
item replace entity @s inventory.25 with minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:'{"text":"§1Slow Ⅱ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§5DarkDamage Ⅰ"}'}}

item replace entity @s inventory.24 with minecraft:splash_potion{display:{Name:'{"text":"§1Slow Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:128}
item replace entity @s inventory.25 with minecraft:splash_potion{display:{Name:'{"text":"§5DarkDamage Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:8405056}

tag @s remove havingdark3-1item
tag @s remove havingdark3-2item
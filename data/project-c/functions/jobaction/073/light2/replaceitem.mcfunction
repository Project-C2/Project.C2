item replace entity @s inventory.21 with minecraft:air 1
item replace entity @s inventory.22 with minecraft:air 1
item replace entity @s inventory.23 with minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:'{"text":"§2Haste Ⅰ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§bJump Ⅰ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§aHeal Ⅰ"}'}}

item replace entity @s inventory.21 with minecraft:splash_potion{display:{Name:'{"text":"§2Haste Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65280}
item replace entity @s inventory.22 with minecraft:splash_potion{display:{Name:'{"text":"§bJump Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65535}
item replace entity @s inventory.23 with minecraft:splash_potion{display:{Name:'{"text":"§aHeal Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65408}

tag @s remove havinglight2-1item
tag @s remove havinglight2-2item
tag @s remove havinglight2-3item
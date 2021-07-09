item replace entity @s inventory.21 with minecraft:air 1
item replace entity @s inventory.22 with minecraft:air 1
item replace entity @s inventory.23 with minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:'{"text":"§2Haste Ⅱ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§bJump Ⅱ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§aHeal Ⅱ"}'}}

item replace entity @s inventory.21 with minecraft:splash_potion{display:{Name:'{"text":"§2Haste Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65280}
item replace entity @s inventory.22 with minecraft:splash_potion{display:{Name:'{"text":"§bJump Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65535}
item replace entity @s inventory.23 with minecraft:splash_potion{display:{Name:'{"text":"§aHeal Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65408}

tag @s remove havinglight5-1item
tag @s remove havinglight5-2item
tag @s remove havinglight5-3item
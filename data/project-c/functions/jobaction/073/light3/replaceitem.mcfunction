replaceitem entity @s inventory.21 minecraft:air 1
replaceitem entity @s inventory.22 minecraft:air 1
replaceitem entity @s inventory.23 minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:'{"text":"§2Haste Ⅱ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§bJump Ⅰ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§aHeal Ⅰ"}'}}

replaceitem entity @s inventory.21 minecraft:splash_potion{display:{Name:'{"text":"§2Haste Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65280}
replaceitem entity @s inventory.22 minecraft:splash_potion{display:{Name:'{"text":"§bJump Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65535}
replaceitem entity @s inventory.23 minecraft:splash_potion{display:{Name:'{"text":"§aHeal Ⅰ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:65408}


tag @s remove havinglight3-1item
tag @s remove havinglight3-2item
tag @s remove havinglight3-3item
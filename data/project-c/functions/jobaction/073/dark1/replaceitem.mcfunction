replaceitem entity @s inventory.24 minecraft:air 1
replaceitem entity @s inventory.25 minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:"{\"text\":\"§1Slow Ⅰ\"}"}}
clear @s minecraft:splash_potion{display:{Name:"{\"text\":\"§5DarkDamage Ⅰ\"}"}}

replaceitem entity @s inventory.24 minecraft:splash_potion{display:{Name:"{\"text\":\"§1Slow Ⅰ\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:128}
#replaceitem entity @s inventory.25 minecraft:splash_potion{display:{Name:"{\"text\":\"§5DarkDamage Ⅰ\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:8405056}

tag @s remove havingdark1-1item
tag @s remove havingdark1-2item
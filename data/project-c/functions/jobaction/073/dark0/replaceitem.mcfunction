item replace entity @s inventory.24 with minecraft:air 1
item replace entity @s inventory.25 with minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:'{"text":"§1Slow Ⅰ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§5darkDamage Ⅰ"}'}}

#replaceitem entity @s inventory.24 minecraft:splash_potion{display:{Name:"{\"text\":\"§1Slow Ⅰ\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:128}
#replaceitem entity @s inventory.25 minecraft:splash_potion{display:{Name:"{\"text\":\"§5darkDamage Ⅰ\"}"},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:8405056}

tag @s remove havingdark0-1item
tag @s remove havingdark0-2item
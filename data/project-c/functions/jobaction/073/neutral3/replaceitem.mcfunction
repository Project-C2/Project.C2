replaceitem entity @s inventory.18 minecraft:air 1
replaceitem entity @s inventory.19 minecraft:air 1
replaceitem entity @s inventory.20 minecraft:air 1

clear @s minecraft:splash_potion{display:{Name:'{"text":"§dMagicDamage Ⅱ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§cFireDamage Ⅱ"}'}}
clear @s minecraft:splash_potion{display:{Name:'{"text":"§eLightningDamage Ⅱ"}'}}

replaceitem entity @s inventory.18 minecraft:splash_potion{display:{Name:'{"text":"§dMagicDamage Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:10496467}
replaceitem entity @s inventory.19 minecraft:splash_potion{display:{Name:'{"text":"§cFireDamage Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:12976128}
replaceitem entity @s inventory.20 minecraft:splash_potion{display:{Name:'{"text":"§eLightningDamage Ⅱ"}'},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:35,CustomPotionColor:13877569}

tag @s remove havingneutral3-1item
tag @s remove havingneutral3-2item
tag @s remove havingneutral3-3item
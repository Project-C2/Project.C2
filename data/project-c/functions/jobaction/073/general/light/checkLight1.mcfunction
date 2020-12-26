scoreboard players tag @s add havingLight1-1Item
# scoreboard players tag @s add havingLight1-2Item
# scoreboard players tag @s add havingLight1-3Item

scoreboard players tag @s remove havingLight1-1Item {Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§2Haste Ⅰ"}}}]}
# scoreboard players tag @s remove havingLight1-2Item {Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§bJump Ⅰ"}}}]}
# scoreboard players tag @s remove havingLight1-3Item {Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§aHeal Ⅰ"}}}]}

function Project-C:jobaction/112/Light1/Light1 if @s[tag=havingLight1-1Item]
# function Project-C:jobaction/112/Light1/Light2 if @s[tag=havingLight1-2Item]
# function Project-C:jobaction/112/Light1/Light3 if @s[tag=havingLight1-3Item]
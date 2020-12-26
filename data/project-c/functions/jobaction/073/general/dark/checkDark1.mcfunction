scoreboard players tag @s add havingDark1-1Item
# scoreboard players tag @s add havingDark1-2Item

scoreboard players tag @s remove havingDark1-1Item {Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§1Slow Ⅰ"}}}]}
# scoreboard players tag @s remove havingDark1-2Item {Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§5DarkDamage Ⅰ"}}}]}

function Project-C:jobaction/112/Dark1/Dark1 if @s[tag=havingDark1-1Item]
# function Project-C:jobaction/112/Dark1/Dark2 if @s[tag=havingDark1-2Item]
scoreboard players tag @s add havingDark2-1Item
# scoreboard players tag @s add havingDark2-2Item

scoreboard players tag @s remove havingDark2-1Item {Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§1Slow Ⅱ"}}}]}
# scoreboard players tag @s remove havingDark2-2Item {Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§5DarkDamage Ⅰ"}}}]}

function Project-C:jobaction/112/Dark2/Dark1 if @s[tag=havingDark2-1Item]
# function Project-C:jobaction/112/Dark2/Dark2 if @s[tag=havingDark2-2Item]
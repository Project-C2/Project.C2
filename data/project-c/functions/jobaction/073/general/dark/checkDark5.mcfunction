scoreboard players tag @s add havingDark5-1Item
scoreboard players tag @s add havingDark5-2Item

scoreboard players tag @s remove havingDark5-1Item {Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§1Slow Ⅲ"}}}]}
scoreboard players tag @s remove havingDark5-2Item {Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§5DarkDamage Ⅱ"}}}]}

function Project-C:jobaction/112/Dark5/Dark1 if @s[tag=havingDark5-1Item]
function Project-C:jobaction/112/Dark5/Dark2 if @s[tag=havingDark5-2Item]
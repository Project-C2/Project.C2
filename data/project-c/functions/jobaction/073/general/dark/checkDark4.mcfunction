scoreboard players tag @s add havingDark4-1Item
scoreboard players tag @s add havingDark4-2Item

scoreboard players tag @s remove havingDark4-1Item {Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§1Slow Ⅲ"}}}]}
scoreboard players tag @s remove havingDark4-2Item {Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§5DarkDamage Ⅰ"}}}]}

function Project-C:jobaction/112/Dark4/Dark1 if @s[tag=havingDark4-1Item]
function Project-C:jobaction/112/Dark4/Dark2 if @s[tag=havingDark4-2Item]
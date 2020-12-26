scoreboard players tag @s add havingDark3-1Item
scoreboard players tag @s add havingDark3-2Item

scoreboard players tag @s remove havingDark3-1Item {Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§1Slow Ⅱ"}}}]}
scoreboard players tag @s remove havingDark3-2Item {Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§5DarkDamage Ⅰ"}}}]}

function Project-C:jobaction/112/Dark3/Dark1 if @s[tag=havingDark3-1Item]
function Project-C:jobaction/112/Dark3/Dark2 if @s[tag=havingDark3-2Item]
scoreboard players tag @s add havingLight2-1Item
scoreboard players tag @s add havingLight2-2Item
# scoreboard players tag @s add havingLight2-3Item

scoreboard players tag @s remove havingLight2-1Item {Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§2Haste Ⅰ"}}}]}
scoreboard players tag @s remove havingLight2-2Item {Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§bJump Ⅰ"}}}]}
# scoreboard players tag @s remove havingLight2-3Item {Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§aHeal Ⅰ"}}}]}

function Project-C:jobaction/112/Light2/Light1 if @s[tag=havingLight2-1Item]
function Project-C:jobaction/112/Light2/Light2 if @s[tag=havingLight2-2Item]
# function Project-C:jobaction/112/Light2/Light3 if @s[tag=havingLight2-3Item]
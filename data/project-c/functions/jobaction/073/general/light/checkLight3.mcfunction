scoreboard players tag @s add havingLight3-1Item
scoreboard players tag @s add havingLight3-2Item
scoreboard players tag @s add havingLight3-3Item

scoreboard players tag @s remove havingLight3-1Item {Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§2Haste Ⅱ"}}}]}
scoreboard players tag @s remove havingLight3-2Item {Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§bJump Ⅰ"}}}]}
scoreboard players tag @s remove havingLight3-3Item {Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§aHeal Ⅰ"}}}]}

function Project-C:jobaction/112/Light3/Light1 if @s[tag=havingLight3-1Item]
function Project-C:jobaction/112/Light3/Light2 if @s[tag=havingLight3-2Item]
function Project-C:jobaction/112/Light3/Light3 if @s[tag=havingLight3-3Item]
scoreboard players tag @s add havingLight5-1Item
scoreboard players tag @s add havingLight5-2Item
scoreboard players tag @s add havingLight5-3Item

scoreboard players tag @s remove havingLight5-1Item {Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§2Haste Ⅱ"}}}]}
scoreboard players tag @s remove havingLight5-2Item {Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§bJump Ⅱ"}}}]}
scoreboard players tag @s remove havingLight5-3Item {Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§aHeal Ⅱ"}}}]}

function Project-C:jobaction/112/Light5/Light1 if @s[tag=havingLight5-1Item]
function Project-C:jobaction/112/Light5/Light2 if @s[tag=havingLight5-2Item]
function Project-C:jobaction/112/Light5/Light3 if @s[tag=havingLight5-3Item]
scoreboard players tag @s add havingLight4-1Item
scoreboard players tag @s add havingLight4-2Item
scoreboard players tag @s add havingLight4-3Item

scoreboard players tag @s remove havingLight4-1Item {Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§2Haste Ⅱ"}}}]}
scoreboard players tag @s remove havingLight4-2Item {Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§bJump Ⅱ"}}}]}
scoreboard players tag @s remove havingLight4-3Item {Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§aHeal Ⅰ"}}}]}

function Project-C:jobaction/112/Light4/Light1 if @s[tag=havingLight4-1Item]
function Project-C:jobaction/112/Light4/Light2 if @s[tag=havingLight4-2Item]
function Project-C:jobaction/112/Light4/Light3 if @s[tag=havingLight4-3Item]
tag @s add havingneutral1-1item
tag @s add havingneutral1-2item
# tag @s add havingneutral1-3item

tag @s remove havingneutral1-1item {Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§dMagicDamage Ⅰ"}}}]}
tag @s remove havingneutral1-2item {Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§cFireDamage Ⅰ"}}}]}
# tag @s remove havingneutral1-3item {Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§eLightningDamage Ⅰ"}}}]}

function project-c:jobaction/073/neutral1/chat1 if @s[tag=havingneutral1-1item]
function project-c:jobaction/073/neutral1/chat2 if @s[tag=havingneutral1-2item]
# function project-c:jobaction/073/neutral1/chat3 if @s[tag=havingneutral1-3item]
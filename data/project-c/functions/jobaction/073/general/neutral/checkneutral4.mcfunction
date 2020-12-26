tag @s add havingneutral4-1item
tag @s add havingneutral4-2item
tag @s add havingneutral4-3item

tag @s remove havingneutral4-1item {Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§dMagicDamage Ⅲ"}}}]}
tag @s remove havingneutral4-2item {Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§cFireDamage Ⅲ"}}}]}
tag @s remove havingneutral4-3item {Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§eLightningDamage Ⅱ"}}}]}

function project-c:jobaction/073/neutral4/chat1 if @s[tag=havingneutral4-1item]
function project-c:jobaction/073/neutral4/chat2 if @s[tag=havingneutral4-2item]
function project-c:jobaction/073/neutral4/chat3 if @s[tag=havingneutral4-3item]
tag @s add havingneutral2-1item
tag @s add havingneutral2-2item
tag @s add havingneutral2-3item

tag @s remove havingneutral2-1item {Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§dMagicDamage Ⅱ"}}}]}
tag @s remove havingneutral2-2item {Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§cFireDamage Ⅰ"}}}]}
tag @s remove havingneutral2-3item {Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§eLightningDamage Ⅰ"}}}]}

function project-c:jobaction/073/neutral2/chat1 if @s[tag=havingneutral2-1item]
function project-c:jobaction/073/neutral2/chat2 if @s[tag=havingneutral2-2item]
function project-c:jobaction/073/neutral2/chat3 if @s[tag=havingneutral2-3item]
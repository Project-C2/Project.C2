tag @s add havingneutral5-1item
tag @s add havingneutral5-2item
tag @s add havingneutral5-3item

tag @s remove havingneutral5-1item {Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§dMagicDamage Ⅲ"}}}]}
tag @s remove havingneutral5-2item {Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§cFireDamage Ⅲ"}}}]}
tag @s remove havingneutral5-3item {Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§eLightningDamage Ⅲ"}}}]}

function project-c:jobaction/073/neutral5/chat1 if @s[tag=havingneutral5-1item]
function project-c:jobaction/073/neutral5/chat2 if @s[tag=havingneutral5-2item]
function project-c:jobaction/073/neutral5/chat3 if @s[tag=havingneutral5-3item]
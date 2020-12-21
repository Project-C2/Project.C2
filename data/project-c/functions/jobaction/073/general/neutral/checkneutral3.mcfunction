tag @s add havingneutral3-1item
tag @s add havingneutral3-2item
tag @s add havingneutral3-3item

tag @s remove havingneutral3-1item {Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§dMagicDamage Ⅱ"}}}]}
tag @s remove havingneutral3-2item {Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§cFireDamage Ⅱ"}}}]}
tag @s remove havingneutral3-3item {Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§eLightningDamage Ⅱ"}}}]}

function project-c:jobaction/073/neutral3/chat1 if @s[tag=havingneutral3-1item]
function project-c:jobaction/073/neutral3/chat2 if @s[tag=havingneutral3-2item]
function project-c:jobaction/073/neutral3/chat3 if @s[tag=havingneutral3-3item]
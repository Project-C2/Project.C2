# tag @s add havingneutral0-1item
# tag @s add havingneutral0-2item
# tag @s add havingneutral0-3item

# tag @s remove havingneutral0-1item {Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§dMagicDamage Ⅰ"}}}]}
# tag @s remove havingneutral0-2item {Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§cFireDamage Ⅰ"}}}]}
# tag @s remove havingneutral0-3item {Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"§eLightningDamage Ⅰ"}}}]}

# function project-c:jobaction/073/neutral0/chat1 if @s[tag=havingneutral0-1item]
# function project-c:jobaction/073/neutral0/chat2 if @s[tag=havingneutral0-2item]
# function project-c:jobaction/073/neutral0/chat3 if @s[tag=havingneutral0-3item]
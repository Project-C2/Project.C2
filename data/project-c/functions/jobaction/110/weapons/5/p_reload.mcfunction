playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
title @s times 0 15 10
title @s subtitle {"text":"reload completed","color":"blue","underlined":true}
title @s title ""
scoreboard players set @s counter 200200

loot replace block 0 0 0 container.0 loot project-c:wnkm/110/weapons/bowgun
data modify block 0 0 0 Items[0].tag.ChargedProjectiles set value [{id:"minecraft:tipped_arrow",Count:1b}]
data modify block 0 0 0 Items[0].tag.ChargedProjectiles[0].tag set from entity @s Inventory[{tag:{110ArrowItem:1b}}].tag
data modify block 0 0 0 Items[0].tag.bowgunStorage set from block 0 0 0 Items[0].tag.ChargedProjectiles[0]
data modify block 0 0 0 Items[0].tag.bowgunStorage.Count set from entity @s Inventory[{tag:{110ArrowItem:1b}}].Count
data modify block 0 0 0 Items[0].tag.bowgunStorage.maxCount set from entity @s Inventory[{tag:{110ArrowItem:1b}}].Count
data remove block 0 0 0 Items[0].tag.Unbreakable
data modify block 0 0 0 Items[0].tag.Damage set value 1
data modify block 0 0 0 Items[0].tag.bowgunCharged set value 1b
data modify block 0 0 0 Items[0].tag.Charged set value 1b

loot replace entity @s container.0 1 mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:arrow{110ArrowItem:1b}
clear @s minecraft:tipped_arrow{110ArrowItem:1b}
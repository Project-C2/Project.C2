#矢
clear @s arrow

execute if score @s stockcounter matches 1.. run data modify block 0 0 0 Items[{Slot:0b}] set value {id:"minecraft:arrow",Count:1b,tag:{HideFlags:61,106_arrow:1,display:{Name:'["",{"text":"矢","italic":false,"color":"white"}]',Lore:['{"text":"弓、またはクロスボウを","italic":false,"color":"dark_purple"}','{"text":"素早く2回ドロップでリロードする","italic":false,"color":"dark_purple"}']}}}
execute if score @s stockcounter matches 1.. store result block 0 0 0 Items[0].Count int 1 run scoreboard players get @s stockcounter

scoreboard players set #106_slot_pos counter 4

execute unless score @s stockcounter matches 1.. run scoreboard players reset #106_slot_pos

function project-c:jobaction/106/items/loot/end
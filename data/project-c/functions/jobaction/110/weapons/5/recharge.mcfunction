loot replace block 0 0 0 container.0 loot project-c:wnkm/110/weapons/bowgun
data modify block 0 0 0 Items[0].tag set from entity @s Inventory[{tag:{110weaponID:5b}}].tag
data modify block 0 0 0 Items[0].tag.bowgunStorage set from entity @s Inventory[{tag:{110weaponID:5b}}].tag.bowgunStorage
data modify block 0 0 0 Items[0].tag.ChargedProjectiles[] set from block 0 0 0 Items[0].tag.bowgunStorage
execute store result score #110- counter_6 run data get entity @s Inventory[{id:"minecraft:crossbow",tag:{110weaponID:5b,Charged:0b}}].tag.bowgunStorage.Count 1
scoreboard players remove #110- counter_6 1
data modify block 0 0 0 Items[0].tag.ChargedProjectiles[0].Count set value 1b
execute if score #110- counter_6 matches 1..64 store result score #110- counter run data get entity @s Inventory[{id:"minecraft:crossbow",tag:{110weaponID:5b,Charged:0b}}].tag.bowgunStorage.maxCount 1
execute if score #110- counter_6 matches 1..64 run scoreboard players set #110- counter_7 326
execute if score #110- counter_6 matches 1..64 run scoreboard players operation #110- subcounter = #110- counter
execute if score #110- counter_6 matches 1..64 run scoreboard players operation #110- counter -= #110- counter_6
execute if score #110- counter_6 matches 1..64 run scoreboard players operation #110- counter *= #110- counter_7
execute if score #110- counter_6 matches 1..64 store result block 0 0 0 Items[0].tag.Damage int 1 run scoreboard players operation #110- counter /= #110- subcounter
execute if score #110- counter_6 matches 1..64 store result block 0 0 0 Items[0].tag.bowgunStorage.Count byte 1 run scoreboard players get #110- counter_6
execute if score #110- counter_6 matches 1..64 run data modify block 0 0 0 Items[0].tag.Charged set value 1b
loot replace entity @s container.0 1 mine 0 0 0 minecraft:air{inv_copy:1b}

execute unless score #110- counter_6 matches 1..64 run function project-c:jobaction/110/replaceitem/weapon
scoreboard players reset #110-



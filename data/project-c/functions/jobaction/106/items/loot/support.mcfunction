
execute if score #item value matches 1 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0001
execute if score #item value matches 2 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0002
execute if score #item value matches 3 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0003
execute if score #item value matches 4 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0004
execute if score #item value matches 5 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0005


execute if score #item value matches 6 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0006
execute if score #item value matches 6 store result score #support6 value2 run data get entity @s EnderItems[{Slot:1b}].tag.BlockEntityTag.Items[{Slot:0b}].tag.data.damage
execute if score #item value matches 6 store result score #support6 skill1_ct_max run data get block 0 0 0 Items[{Slot:0b}].tag.d-amount 10
execute if score #item value matches 6 run scoreboard players set #support6 skill1 336
execute if score #item value matches 6 run scoreboard players operation #support6 skill1 *= #support6 value2
execute if score #item value matches 6 run scoreboard players operation #support6 skill1 /= #support6 skill1_ct_max
execute if score #item value matches 6 if score #support6 skill1 matches 0 run scoreboard players set #support6 skill1 1
execute if score #item value matches 6 store result block 0 0 0 Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get #support6 skill1
execute if score #item value matches 6 run scoreboard players reset #support6
execute if score #item value matches 6 run scoreboard players operation #- number = @s number
execute if score #item value matches 6 if entity @e[tag=support6-time,limit=1] as @e[tag=support6-time] if score @s number = #- number run tag @s add support6-breaking
execute if score #item value matches 6 if entity @e[tag=support6-breaking,limit=1] run data modify block 0 0 0 Items[{Slot:0b}].tag.Damage set value 336
execute if score #item value matches 6 if entity @e[tag=support6-breaking,limit=1] as @e[tag=support6-breaking] run tag @s remove support6-breaking


execute if score #item value matches 7 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0007
execute if score #item value matches 8 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0008
execute if score #item value matches 9 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0009
execute if score #item value matches 10 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0010
execute if score #item value matches 11 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0011
execute if score #item value matches 12 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0012
execute if score #item value matches 13 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0013
execute if score #item value matches 14 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0014
execute if score #item value matches 15 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0015
execute if score #item value matches 16 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0016
execute if score #item value matches 17 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0017
execute if score #item value matches 18 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0018
execute if score #item value matches 19 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0019
execute if score #item value matches 20 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0020
execute if score #item value matches 21 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0021
execute if score #item value matches 22 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0022
execute if score #item value matches 23 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0023
execute if score #item value matches 24 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0024
execute if score #item value matches 25 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0025
execute if score #item value matches 26 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0026
execute if score #item value matches 27 run loot replace block 0 0 0 container.0 loot project-c:neac/106/support/0027

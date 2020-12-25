execute if score @s counter matches ..111 run effect give @e[tag=suirou-hitting,distance=..6] slowness 1 3
scoreboard players add @s counter_4 1
execute if score @s counter_4 matches 6.. as @e[tag=suirou-hitting,distance=..5] run tp @s @s
execute if score @s counter_4 matches 6.. run playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 1.6
execute if score @s counter_4 matches 6.. run scoreboard players set @s counter_4 0
particle minecraft:dust 0 0 1 1 ~ ~ ~ 1.20 1.20 1.20 1 2 normal @a
particle minecraft:dust 0 0 1 1 ~ ~ ~ 1.20 1.20 1.20 1 8 force @a
particle minecraft:bubble ~ ~ ~ 1.40 1.40 1.40 1 40 force @a
particle minecraft:bubble ~ ~ ~ 1.40 1.40 1.40 1 160 normal @a
execute if score @s counter matches 131.. run tag @e[tag=suirou-hitting,limit=1,sort=nearest] remove suirou-hitting
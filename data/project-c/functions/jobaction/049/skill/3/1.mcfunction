particle minecraft:dust 1 1 0 1 ^ ^1 ^ 0.5 0.5 0.5 0 1 force @a
particle minecraft:end_rod ^ ^1 ^ 0.5 0.2 0.5 0.01 1 force @a
scoreboard players remove @s 49Raiko 1
execute unless score @s 49Raiko matches 1.. run scoreboard players reset @s 49Raiko
effect clear @s minecraft:bad_omen
effect clear @s minecraft:slowness
effect clear @s minecraft:wither
effect clear @s minecraft:poison
effect clear @s minecraft:weakness
effect clear @s minecraft:nausea
effect clear @s minecraft:blindness
effect clear @s minecraft:glowing
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:levitation
effect clear @s minecraft:unluck
scoreboard players add @s CT1 1
scoreboard players add @s CT2 1
scoreboard players add @s CT3 1

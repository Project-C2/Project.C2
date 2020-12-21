execute if entity @s[scores={counter=1..1}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 7 normal @a
execute if entity @s[scores={counter=40..50}] run particle minecraft:dust 10 10 10 1 ~ ~ ~ 2.5 2.5 2.5 0 7 normal @a
execute if entity @s[scores={counter=51..60}] run particle minecraft:dust 10 10 10 1 ~ ~ ~ 1.5 1.5 1.5 0 5 normal @a
execute if entity @s[scores={counter=61..70}] run particle minecraft:dust 10 10 10 1 ~ ~ ~ 1 1 1 0 5 normal @a
execute if entity @s[scores={counter=71..80}] run particle minecraft:dust 10 10 10 1 ~ ~ ~ 0.5 0.5 0.5 0 5 normal @a
execute if entity @s[scores={counter=91..}] run particle minecraft:dust 10 10 10 1 ~ ~ ~ 0.5 0.5 0.5 0 5 normal @a
kill @s[scores={counter=90..}]
execute if entity @s[scores={counter=40..}] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.2 1.45
execute if entity @s[scores={counter=40..}] run playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 0.1 1.75
execute if entity @s[scores={counter=40..}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.1 1.75
scoreboard players add @s counter 1
execute if entity @s[tag=047-32R] run effect give @e[distance=..5,team=Blue] minecraft:instant_damage 1 0
execute if entity @s[tag=047-32B] run effect give @e[distance=..5,team=Red] minecraft:instant_damage 1 0
execute if entity @s[tag=047-32R] run effect give @e[distance=..3,team=Blue] minecraft:instant_damage 1 0
execute if entity @s[tag=047-32B] run effect give @e[distance=..3,team=Red] minecraft:instant_damage 1 0
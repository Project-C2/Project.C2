playsound minecraft:block.glass.break master @a ~ ~ ~ 0.6 2

execute if entity @s[scores={counter_1=-2}] run particle minecraft:item packed_ice ~ ~4 ~ 2.5 4.5 2.5 0.2 3 force @a
execute if entity @s[scores={counter_1=2}] run particle minecraft:item packed_ice ~ ~4 ~ 2.5 4.5 2.5 0.2 3 force @a
execute unless entity @s[scores={counter_1=2}] unless entity @s[scores={counter_1=-2}] run particle minecraft:item packed_ice ~ ~4 ~ 3.5 3.5 3.5 0.2 3 force @a
particle minecraft:item packed_ice ~ ~4 ~ 3 4 3 0.2 12 normal @a
particle minecraft:cloud ~ ~2 ~ 3 4 3 0.1 1 normal @a
particle minecraft:dust 1 1 1 1 ~ ~2 ~ 3 4 3 0.1 4 normal @a
particle minecraft:dust 1 1 1 1 ~ ~2 ~ 3 4 3 0.1 1 force @a

#ヒット判定
execute as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-2}] positioned ~ ~2 ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-2}] positioned ~ ~4 ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-2}] positioned ~ ~6 ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit

execute if entity @s[scores={counter_1=2}] positioned ~ ~-2 ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=2}] positioned ~ ~-4 ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=2}] positioned ~ ~-6 ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit

execute if entity @s[scores={counter_1=-1}] positioned ~2 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-1}] positioned ~4 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-1}] positioned ~6 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-1}] positioned ~8 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit

execute if entity @s[scores={counter_1=1}] positioned ~-2 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=1}] positioned ~-4 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=1}] positioned ~-6 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=1}] positioned ~-8 ~ ~ as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit

execute if entity @s[scores={counter_1=-3}] positioned ~ ~ ~2 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-3}] positioned ~ ~ ~4 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-3}] positioned ~ ~ ~6 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=-3}] positioned ~ ~ ~8 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit

execute if entity @s[scores={counter_1=3}] positioned ~ ~ ~-2 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=3}] positioned ~ ~ ~-4 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=3}] positioned ~ ~ ~-6 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit
execute if entity @s[scores={counter_1=3}] positioned ~ ~ ~-8 as @e[distance=..4.0,tag=Battle,tag=!blizzard-hit] run tag @s add blizzard-hit

execute if entity @s[tag=110blizzardR] if entity @e[tag=blizzard-hit,team=Red,limit=1] run tag @e[tag=blizzard-hit,team=Red] remove blizzard-hit
execute if entity @s[tag=110blizzardB] if entity @e[tag=blizzard-hit,team=Blue,limit=1] run tag @e[tag=blizzard-hit,team=Blue] remove blizzard-hit
execute if entity @e[tag=blizzard-hit,nbt=!{HurtTime:0s},limit=1] run tag @e[tag=blizzard-hit,nbt=!{HurtTime:0s}] remove blizzard-hit
execute if entity @e[tag=blizzard-hit,limit=1] at @e[tag=blizzard-hit] run function project-c:jobaction/110/skills/19/hit
execute if entity @e[tag=blizzard-hit,limit=1] run tag @e[tag=blizzard-hit] remove blizzard-hit
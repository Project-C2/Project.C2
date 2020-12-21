scoreboard players remove @s counter_2 1
particle minecraft:witch ~ ~ ~ 2 2 2 1 12 normal @a
particle minecraft:witch ~ ~ ~ 2 2 2 1 3 force @a
particle minecraft:heart ~ ~1 ~ 1.2 1.2 1.2 1 1 normal @a
execute unless entity @s[scores={counter_2=1..}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.5
execute unless entity @s[scores={counter_2=1..}] run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 0.5
execute unless entity @s[scores={counter_2=1..}] run particle minecraft:poof ~ ~ ~ 0 0 0 0.8 300 normal @a
execute unless entity @s[scores={counter_2=1..}] run particle minecraft:poof ~ ~ ~ 0 0 0 0.8 75 force @a
execute unless entity @s[scores={counter_2=1..}] run tag @s remove 031-S3Regen
execute unless entity @s[scores={counter_2=1..}] run scoreboard players reset @s counter_2

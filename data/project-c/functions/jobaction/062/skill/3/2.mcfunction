scoreboard players remove @s[scores={Mana=1..}] Mana 1
scoreboard players remove @e[scores={eigou=1..}] eigou 1

effect give @e[scores={eigou=80..100}] levitation 1 0 true
effect give @s[scores={Mana=100..120}] levitation 1 0 true

execute as @e[scores={eigou=20..59}] at @s run effect clear @s levitation

execute as @e[scores={eigou=20..59}] at @s run particle sweep_attack ^ ^ ^ 3 3 3 0 2 force
execute as @e[scores={eigou=20..59}] at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 4 1
execute as @e[scores={eigou=20..59}] at @s run teleport @s ~ ~ ~ ~ ~
execute as @e[scores={eigou=41}] at @s run effect give @s instant_damage 1 0 true
execute as @e[scores={eigou=31}] at @s run effect give @s instant_damage 1 0 true
execute as @e[scores={eigou=21}] at @s run effect give @s instant_damage 1 0 true
execute as @e[scores={eigou=21..51}] at @s run effect give @s slowness 2 4 true
execute as @e[scores={eigou=11}] at @s run effect give @s slow_falling 1 0 true
execute as @e[scores={eigou=21}] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 3 0
execute as @e[scores={eigou=21}] at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 3 1
execute as @e[scores={eigou=21}] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
teleport @s[scores={Mana=40..99}] ~ ~ ~ ~ ~
effect give @s[scores={Mana=1..21}] slow_falling 1 0 true
execute as @e[scores={eigou=80},limit=1] at @s run function project-c:jobaction/062/skill/3/3

scoreboard players add @e[tag=062-3] counter 1
scoreboard players add @e[tag=062-3] counter_1 1
execute as @e[tag=062-3] at @s run teleport @s ^ ^ ^1 ~ ~
execute as @s[scores={Mana=100..120}] at @s run particle end_rod ~ ~ ~ 0 0 0 1 30 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^ 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.1 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.2 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.3 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.4 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.5 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.6 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.7 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.8 0 0 0 0 1 force
execute as @e[tag=062-3] at @s run particle end_rod ^ ^ ^0.9 0 0 0 0 1 force
execute as @e[tag=062-3,scores={counter_1=5}] at @s run teleport @s ^ ^ ^ ~90 ~
execute as @e[tag=062-3,scores={counter_1=10..}] at @s run scoreboard players set @s counter_1 0

execute as @e[tag=062-3,scores={counter=51}] at @s run particle end_rod ^ ^ ^ 0 0 0 1 30 force
kill @e[tag=062-3,scores={counter=61..}]
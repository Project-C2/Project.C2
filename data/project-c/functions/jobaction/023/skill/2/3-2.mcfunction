scoreboard players add @s counter 1
scoreboard players add @s subcounter 1

tp @s ~ ~ ~ ~3 ~
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 1 4 ^7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 1 4 ^-7.5 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 1 4 ^ ^ ^7.5 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 1 0.33 1 4 ^ ^ ^-7.5 0 0 0 1 1 normal @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 1 0.33 1 2 ^7.5 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 1 0.33 1 2 ^-7.5 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 1 0.33 1 2 ^ ^ ^7.5 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 1 0.33 1 2 ^ ^ ^-7.5 0 0 0 1 1 force @a

execute if entity @s[scores={subcounter=20..}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.89
execute if entity @s[scores={subcounter=20..}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.89
execute if entity @s[scores={subcounter=20..}] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.6 600 normal @a
execute if entity @s[scores={subcounter=20..}] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.6 150 force @a
execute if entity @s[scores={subcounter=20..},team=RedDummy] run effect give @e[tag=Battle,team=!Red,distance=..7] minecraft:wither 1 2
execute if entity @s[scores={subcounter=20..},team=RedDummy] run effect give @e[tag=Battle,team=!Red,distance=..7] minecraft:slowness 1 2
execute if entity @s[scores={subcounter=20..},team=RedDummy] run effect give @e[tag=Battle,team=!Red,distance=..7] minecraft:mining_fatigue 1 2
execute if entity @s[scores={subcounter=20..},team=BlueDummy] run effect give @e[tag=Battle,team=!Blue,distance=..7] minecraft:wither 1 2
execute if entity @s[scores={subcounter=20..},team=BlueDummy] run effect give @e[tag=Battle,team=!Blue,distance=..7] minecraft:slowness 1 2
execute if entity @s[scores={subcounter=20..},team=BlueDummy] run effect give @e[tag=Battle,team=!Blue,distance=..7] minecraft:mining_fatigue 1 2

execute if entity @s[scores={counter=180..}] run particle block glass ~ ~5 ~ 5 3 5 4 1000 normal @a
execute if entity @s[scores={counter=180..}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 1 400 normal @a
execute if entity @s[scores={counter=180..}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 1 100 force @a
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter=180..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5


kill @s[scores={counter=180..}]
scoreboard players set @s[scores={subcounter=20..}] subcounter 0
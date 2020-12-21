scoreboard players add @s counter_3 1
tp @s ~ ~ ~ ~3 ~
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.33 1 1 2 ^3.0 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.33 1 1 4 ^-3.0 ^ ^ 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.33 1 1 4 ^ ^ ^3.0 0 0 0 1 1 normal @a
execute positioned ~ ~0.1 ~ run particle minecraft:dust 0.33 1 1 4 ^ ^ ^-3.0 0 0 0 1 1 normal @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.33 1 1 2 ^3.0 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.33 1 1 2 ^-3.0 ^ ^ 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.33 1 1 2 ^ ^ ^3.0 0 0 0 1 1 force @a
execute positioned ~ ~0.4 ~ run particle minecraft:dust 0.33 1 1 2 ^ ^ ^-3.0 0 0 0 1 1 force @a
execute if entity @s[team=RedDummy] run effect give @e[tag=Battle,team=!Red,distance=..7] minecraft:slowness 3 6
execute if entity @s[team=BlueDummy] run effect give @e[tag=Battle,team=!Blue,distance=..7] minecraft:slowness 3 6
execute if entity @s[team=RedDummy] run effect give @e[tag=Battle,team=!Red,distance=..7] minecraft:wither 3 2
execute if entity @s[team=BlueDummy] run effect give @e[tag=Battle,team=!Blue,distance=..7] minecraft:wither 3 2
particle minecraft:falling_dust snow ~ ~1.7775 ~ 2.5 1.25 2.5 1 8 normal @a
particle minecraft:falling_dust snow ~ ~1.7775 ~ 2.5 1.25 2.5 1 2 force @a
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 2

execute if entity @s[scores={counter_3=40..}] run particle block glass ~ ~5 ~ 5 3 5 4 1000 normal @a
execute if entity @s[scores={counter_3=40..}] run particle minecraft:falling_dust snow ~ ~1.7775 ~ 4 2 4 1 400 normal @a
execute if entity @s[scores={counter_3=40..}] run particle minecraft:falling_dust snow ~ ~1.7775 ~ 4 2 4 1 100 force @a
execute if entity @s[scores={counter_3=40..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter_3=40..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter_3=40..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={counter_3=40..}] run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0.5

kill @s[scores={counter_3=40..}]
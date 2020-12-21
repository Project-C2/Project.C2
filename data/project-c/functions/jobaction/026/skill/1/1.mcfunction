scoreboard players add @s counter 1
execute if entity @s[scores={counter=60..},tag=026-water-R] run effect give @e[team=Red,distance=..5,tag=Battle] minecraft:regeneration 2 2 false
execute if entity @s[scores={counter=60..},tag=026-water-R] run effect give @e[team=Red,distance=..5,tag=Battle] minecraft:conduit_power 3 0 false
execute if entity @s[scores={counter=60..},tag=026-water-B] run effect give @e[team=Blue,distance=..5,tag=Battle] minecraft:regeneration 2 2 false
execute if entity @s[scores={counter=60..},tag=026-water-B] run effect give @e[team=Blue,distance=..5,tag=Battle] minecraft:conduit_power 3 0 false
execute if entity @s[scores={counter=60..}] run particle minecraft:rain ~ ~3 ~ 2 1 2 1 120 normal @a
execute if entity @s[scores={counter=60..}] run particle minecraft:rain ~ ~3 ~ 2 1 2 1 30 force @a
execute if entity @s[scores={counter=60..}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 80 normal @a
execute if entity @s[scores={counter=60..}] run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter=60..}] run playsound minecraft:entity.dolphin.swim master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter=60..}] run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter=60..}] run playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter=60..}] run scoreboard players add @s subcounter 1
execute if entity @s[scores={counter=60..}] run scoreboard players set @s counter -1
execute if entity @s[scores={subcounter=6..}] run kill @s
particle minecraft:fishing ~ ~ ~ 3 3 3 0 12 normal @a
particle minecraft:fishing ~ ~ ~ 3 3 3 0 3 force @a
execute facing ^1 ^ ^ run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
execute facing ^1 ^ ^1 run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
execute facing ^ ^ ^1 run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
execute facing ^-1 ^ ^1 run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
execute facing ^-1 ^ ^ run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
execute facing ^-1 ^ ^-1 run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
execute facing ^ ^ ^-1 run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
execute facing ^1 ^ ^-1 run particle minecraft:dust 0 0 1 1 ^ ^ ^5 0 0 0 0 1
tp @s ~ ~ ~ ~3 ~
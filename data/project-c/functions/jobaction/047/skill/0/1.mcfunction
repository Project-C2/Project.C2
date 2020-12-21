teleport @s[tag=!047-02] ^ ^ ^1
teleport @s[tag=047-02] ^ ^ ^0.25
scoreboard players add @s counter 1
kill @s[scores={counter=30},tag=!047-02]
kill @s[scores={counter=100},tag=047-02]
execute if entity @s[tag=!047-02] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=047-0R] run effect give @e[distance=..1,team=Blue] instant_damage 1 0 true
execute if entity @s[tag=047-0B] run effect give @e[distance=..1,team=Red] instant_damage 1 0 true
scoreboard players remove @s counter 1
execute at @s anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^1 0.25 0.25 0.25 0 5
execute at @s[scores={counter=21..47}] anchored eyes run particle dust 0.5 0 0.75 0.75 ^ ^ ^2 0.5 0.5 0.5 0 10
execute at @s[scores={counter=21..45}] anchored eyes run particle dust 0.5 0 0.5 1 ^ ^ ^4 1 1 1 0 15
execute at @s[scores={counter=10..20}] anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^1 0.2 0.2 0.2 0 5
execute at @s[scores={counter=10..20}] anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^2 0.2 0.2 0.2 0 5
execute at @s[scores={counter=10..20}] anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^3 0.2 0.2 0.2 0 5
execute at @s[scores={counter=..10}] anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^1 0.1 0.1 0.1 0 2
execute at @s[scores={counter=..10}] anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^2 0.1 0.1 0.1 0 2
execute at @s[scores={counter=..10}] anchored eyes run particle dust 0.5 0 1 0.5 ^ ^ ^3 0.1 0.1 0.1 0 2
execute at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=fireball,tag=!Stable,distance=..2] add 053-eat
execute at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=arrow,tag=!Stable,distance=..2] add 053-eat
execute at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=snowball,tag=!Stable,distance=..2] add 053-eat
execute at @s anchored eyes positioned ^ ^ ^2 run tag @e[type=trident,tag=!Stable,distance=..2] add 053-eat
execute at @s anchored eyes positioned ^ ^ ^2 at @e[tag=053-eat] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 50
execute at @s anchored eyes positioned ^ ^ ^2 at @e[tag=053-eat] facing entity @s eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^ ^ ^ ^10000000 0.00000002 0
execute at @s anchored eyes positioned ^ ^ ^2 at @e[tag=053-eat] facing entity @s eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^ ^ ^ ^10000000 0.00000002 0
execute at @s anchored eyes positioned ^ ^ ^2 at @e[tag=053-eat] facing entity @s eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^ ^ ^ ^10000000 0.00000002 0
execute at @s anchored eyes positioned ^ ^ ^2 at @e[tag=053-eat] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 2 0
execute at @s anchored eyes positioned ^ ^ ^2 at @e[tag=053-eat] run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 2
execute at @s anchored eyes positioned ^ ^ ^2 run kill @e[tag=053-eat]
playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 1 0
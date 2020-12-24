execute at @s anchored eyes run particle dust 0 0.5 0 0.5 ^ ^ ^1 0.25 0.25 0.25 0 5
execute anchored eyes run particle dust 0 0.5 0 0.75 ^ ^ ^2 0.5 0.5 0.5 0 10
execute anchored eyes run particle end_rod ^ ^ ^2.75 0 0 0 0.5 3
execute anchored eyes run particle dust 0 0.5 0 1 ^ ^ ^3 1 1 1 0 15
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 run tag @e[type=fireball,tag=!Stable,distance=..2] add 100-eat
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 run tag @e[type=arrow,tag=!Stable,distance=..2] add 100-eat
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 run tag @e[type=snowball,tag=!Stable,distance=..2] add 100-eat
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 run tag @e[type=trident,tag=!Stable,distance=..2] add 100-eat
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 at @e[tag=100-eat] run particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 50
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 at @e[tag=100-eat] facing entity @s eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^ ^ ^ ^10000000 0.00000002 0
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 at @e[tag=100-eat] facing entity @s eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^ ^ ^ ^10000000 0.00000002 0
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 at @e[tag=100-eat] facing entity @s eyes run particle minecraft:campfire_cosy_smoke ^ ^ ^ ^ ^ ^10000000 0.00000002 0
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 at @e[tag=100-eat] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 2 0
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 at @e[tag=100-eat] run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_6=2}] anchored eyes positioned ^ ^ ^1.5 run kill @e[tag=100-eat]

execute if entity @s[team=Red] anchored eyes positioned ^ ^ ^1.5 run effect give @e[team=Blue,tag=Battle,distance=..1.8] instant_damage 1 0
execute if entity @s[team=Blue] anchored eyes positioned ^ ^ ^1.5 run effect give @e[team=Red,tag=Battle,distance=..1.8] instant_damage 1 0

effect give @s slowness 1 4 true
tp @s @s

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.1 0
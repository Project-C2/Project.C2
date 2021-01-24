scoreboard players add @s counter 1
execute if entity @s[scores={counter=10..19}] run teleport @s ^ ^ ^ ~1 ~
execute if entity @s[scores={counter=20..29}] run teleport @s ^ ^ ^ ~2 ~
execute if entity @s[scores={counter=30..39}] run teleport @s ^ ^ ^ ~3 ~
execute if entity @s[scores={counter=40..49}] run teleport @s ^ ^ ^ ~4 ~
execute if entity @s[scores={counter=50..59}] run teleport @s ^ ^ ^ ~5 ~
execute if entity @s[scores={counter=60..69}] run teleport @s ^ ^ ^ ~6 ~
execute if entity @s[scores={counter=70..79}] run teleport @s ^ ^ ^ ~7 ~
execute if entity @s[scores={counter=80..}] run teleport @s ^ ^ ^ ~10 ~

execute at @s run particle minecraft:witch ^ ^ ^ 6 1 6 0 15
execute at @s run particle minecraft:portal ^ ^ ^ 0 0 0 3 15

execute at @s run particle dust 0.47 0 0.949 2 ^3 ^ ^ 0 0 0 0 1
execute at @s run particle dust 0.47 0 0.949 2 ^-2 ^ ^ 0 0 0 0 1
execute at @s run particle dust 0.47 0 0.949 2 ^ ^ ^1 0 0 0 0 1
execute at @s run particle dust 0.47 0 0.949 2 ^ ^ ^-4 0 0 0 0 1

execute if entity @e[scores={counter=101..}] run particle dust 1 0 1 1 ^ ^ ^ 3 3 3 0 3
execute if entity @e[scores={counter=155}] run particle minecraft:flash ~ ~ ~ 3 1 3 0.1 20
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 0.2 0
execute if entity @e[scores={counter=161..}] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0.4 1000
execute if entity @e[scores={counter=161..}] run particle minecraft:explosion ~ ~ ~ 5 5 5 1 30
execute if entity @e[scores={counter=161..}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute if entity @e[scores={counter=161..}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute if entity @e[scores={counter=161..}] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 0
execute if entity @e[team=RedDummy,scores={counter=161..}] run effect give @e[team=Blue,distance=..5] instant_damage 1 5 true
execute if entity @e[team=BlueDummy,scores={counter=161..}] run effect give @e[team=Red,distance=..5] instant_damage 1 5 true


kill @s[scores={counter=161..}]

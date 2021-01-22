scoreboard players add @s counter 1
execute if entity @s[scores={counter=..36}] run particle minecraft:dust 1 1 0 2 ^ ^ ^2 0 0 0 0 1 force @a
execute if entity @s[scores={counter=..36}] run particle minecraft:dust 1 1 0 2 ^ ^ ^-2 0 0 0 0 1 force @a

execute if entity @s[scores={counter=..36}] run teleport @s ^ ^ ^ ~20 ~
execute if entity @s[scores={counter=37..}] run teleport @s ^ ^ ^4 ~ ~

execute if entity @s[scores={counter=37..}] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0.3 10 force @a

execute if entity @s[scores={counter=37..}] run particle minecraft:end_rod ^ ^ ^ 0 5 0 0 100 force @a
execute if entity @s[scores={counter=37..}] run particle minecraft:end_rod ^ ^ ^ 0 0 0 1 100 force @a
execute if entity @s[scores={counter=37..}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2

execute if entity @e[tag=016-Dein3,team=RedDummy,scores={counter=20..}] run effect give @e[team=Blue,distance=..3] instant_damage 1 1 true
execute if entity @e[tag=016-Dein3,team=BlueDummy,scores={counter=20..}] run effect give @e[team=Red,distance=..3] instant_damage 1 1 true


kill @s[scores={counter=52..}]

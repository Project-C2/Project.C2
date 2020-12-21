scoreboard players add @s counter 1
teleport @s ^ ^ ^0.25
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 3 2
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.75
particle minecraft:firework ~ ~ ~ 1 1 1 0.1 5
kill @s[scores={counter=30..}]
#Red
execute if entity @s[tag=052-3R] run effect give @e[distance=..3,team=Blue] instant_damage
#Blue
execute if entity @s[tag=052-3B] run effect give @e[distance=..3,team=Red] instant_damage
execute if entity @s[team=Red] run effect give @e[team=!Red,distance=..10,gamemode=!spectator] minecraft:poison 12 0
execute if entity @s[team=Red] run effect give @e[team=!Red,distance=..10,gamemode=!spectator] minecraft:hunger 12 0
execute if entity @s[team=Red] run effect give @e[team=!Red,distance=..10,gamemode=!spectator] minecraft:instant_damage 11 0
execute if entity @s[team=Red] run effect give @e[team=!Red,distance=..10,gamemode=!spectator] minecraft:resistance 1 0 true
execute if entity @s[team=Blue] run effect give @e[team=!Blue,distance=..10,gamemode=!spectator] minecraft:poison 12 0
execute if entity @s[team=Blue] run effect give @e[team=!Blue,distance=..10,gamemode=!spectator] minecraft:hunger 12 0
execute if entity @s[team=Blue] run effect give @e[team=!Blue,distance=..10,gamemode=!spectator] minecraft:instant_damage 11 0
execute if entity @s[team=Blue] run effect give @e[team=!Blue,distance=..10,gamemode=!spectator] minecraft:resistance 1 0 true
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 2 0.5
particle dust 0.2 0 0.12 10 ~ ~ ~ 8 8 8 1 1500 normal @a
particle dust 0.2 0 0.12 10 ~ ~ ~ 8 8 8 1 300 force @a
scoreboard players reset @s counter_3

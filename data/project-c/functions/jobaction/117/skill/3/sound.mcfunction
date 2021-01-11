execute if score @s counter matches 2 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.50
execute if score @s counter matches 3 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.57
execute if score @s counter matches 4 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.64
execute if score @s counter matches 5 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.71
execute if score @s counter matches 6 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.78
execute if score @s counter matches 7 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.85
execute if score @s counter matches 8 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.92
execute if score @s counter matches 9 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 0.99
execute if score @s counter matches 10 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.06
execute if score @s counter matches 11 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.13
execute if score @s counter matches 12 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.20
execute if score @s counter matches 13 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.27
execute if score @s counter matches 14 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.34
execute if score @s counter matches 15 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.41
execute if score @s counter matches 16 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.48
execute if score @s counter matches 17 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.55
execute if score @s counter matches 18 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.62
execute if score @s counter matches 19 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.69
execute if score @s counter matches 20 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.76
execute if score @s counter matches 21 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.83
execute if score @s counter matches 22 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.90
execute if score @s counter matches 23 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 1.97
execute if score @s counter matches 24 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.5 2.00
execute if score @s counter matches 25 run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 2 0.5
execute if score @s counter matches 25 run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.2 600 normal @a
execute if score @s counter matches 25 run particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.2 150 force @a
execute if score @s counter matches 25 if entity @s[tag=117_3R] run tag @a[team=Red,distance=..11] add 117buff
execute if score @s counter matches 25 if entity @s[tag=117_3B] run tag @a[team=Blue,distance=..11] add 117buff
execute if score @s counter matches 25 as @a[tag=117buff] at @s run function project-c:jobaction/117/skill/3/get_buff


execute rotated 5 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 15 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 25 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 35 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 45 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 55 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 65 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 75 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 85 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 95 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 105 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 115 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 125 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 135 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 145 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 155 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 165 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 175 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 185 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 195 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 205 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 215 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 225 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 235 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 245 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 255 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 265 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 275 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 285 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 295 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 305 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 315 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 325 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 335 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 345 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a
execute rotated 355 -1.1 run particle minecraft:dragon_breath ^ ^0.6 ^11 0.3 0.3 0.3 0 1 normal @a

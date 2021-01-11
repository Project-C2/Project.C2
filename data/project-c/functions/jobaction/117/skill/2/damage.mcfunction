playsound minecraft:entity.skeleton_horse.hurt master @a ^8.8 ^ ^ 1.8 0.5
playsound minecraft:entity.skeleton_horse.hurt master @a ^-8.8 ^ ^ 1.8 0.5
particle minecraft:large_smoke ~ ~2 ~ 0 0 0 0.4 120 normal @a
particle minecraft:large_smoke ~ ~2 ~ 0 0 0 0.4 30 force @a
execute if entity @s[tag=117_2R] if entity @e[tag=Battle,team=!Red,distance=..9.3,limit=1] run effect give @e[tag=Battle,team=!Red,distance=..9.3] wither 2 0
execute if entity @s[tag=117_2B] if entity @e[tag=Battle,team=!Blue,distance=..9.3,limit=1] run effect give @e[tag=Battle,team=!Blue,distance=..9.3] wither 2 0

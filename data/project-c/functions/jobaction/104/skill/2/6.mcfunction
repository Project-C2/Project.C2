particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.5 100 normal @a
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.5 25 force @a
particle minecraft:explosion ~ ~ ~ 1 0 1 0 2 force @a
particle minecraft:explosion ~ ~ ~ 1.5 0 1.5 0 8 normal @a
playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 2
playsound minecraft:block.lava.pop master @a ~ ~ ~ 1 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 2

execute if entity @s[tag=104ponponR] if entity @e[tag=Battle,team=!Red,distance=..3,limit=1] run tag @e[tag=Battle,team=!Red,distance=..3] add hit
execute if entity @s[tag=104ponponB] if entity @e[tag=Battle,team=!Blue,distance=..3,limit=1] run tag @e[tag=Battle,team=!Red,distance=..3] add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/104/skill/2/hit

execute rotated as @s positioned 0.0 0.5 0.0 run summon area_effect_cloud ^ ^ ^0.34 {Tags:["104vector"],Duration:1}
data modify entity @s Motion set from entity @e[tag=104vector,limit=1] Pos
kill @e[tag=104vector,limit=1]
data merge entity @s {OnGround:0b}
scoreboard players remove @s subcounter 1
execute if score @s subcounter matches ..0 run function project-c:jobaction/104/skill/2/7
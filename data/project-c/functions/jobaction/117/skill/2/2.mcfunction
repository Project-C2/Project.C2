execute as @e[tag=117ready] run data merge entity @s {NoAI:0b}
execute as @e[tag=117ready] store result score @s counter_3 run data get entity @s Rotation[0] 10000
execute at @e[tag=117ready,limit=3,sort=random] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2.5 1
execute at @e[tag=117ready] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
execute at @e[tag=117ready] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a


effect give @e[tag=117ready] absorption 1 1 true
data merge block 34 61 -60 {auto:1b}
tag @e[tag=117ready] add 117_2rush
tag @e[tag=117ready] remove 117ready
kill @s

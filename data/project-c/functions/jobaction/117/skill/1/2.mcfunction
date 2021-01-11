playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2.5 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
data merge entity @s {NoAI:0b}
execute store result score @s counter_1 run data get entity @s Rotation[0] 10000
execute at @a[tag=116knockback_resist2] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 0.8
execute at @a[tag=116knockback_resist2] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 0.8
execute at @a[tag=116knockback_resist2] run particle cloud ~ ~ ~ 0 0 0 0.1 40 normal @a
execute at @a[tag=116knockback_resist2] run particle cloud ~ ~ ~ 0 0 0 0.1 10 force @a
stopsound @a block minecraft:entity.generic.explode
schedule function project-c:jobaction/116/skill/2/stopsound_2 1t replace
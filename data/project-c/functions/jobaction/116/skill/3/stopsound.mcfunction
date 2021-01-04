execute at @a[tag=116knockback_resist] run playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
execute at @a[tag=116knockback_resist] run playsound minecraft:entity.iron_golem.attack player @a ~ ~ ~ 1.5 1
execute at @a[tag=116knockback_resist] run particle cloud ~ ~0.3 ~ 0 0 0 0.1 20 normal @a
execute at @a[tag=116knockback_resist] run particle cloud ~ ~0.3 ~ 0 0 0 0.1 5 force @a
stopsound @a block minecraft:entity.generic.explode
schedule function project-c:jobaction/116/skill/3/stopsound_2 1t replace
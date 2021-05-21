scoreboard players set @s counter_5 0

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["124work","124baseAEC"],Duration:1}
execute as @e[tag=124baseAEC] at @s run function project-c:jobaction/124/skill/2/particle-1
execute as @e[tag=124baseAEC] at @s run function project-c:jobaction/124/skill/2/particle-2
execute as @e[tag=124particleAEC] at @s run function project-c:jobaction/124/skill/2/particle-3
execute at @e[tag=124particleAEC] run particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.5 4 force @a
execute at @e[tag=124particleAEC] run particle dust 0.4 0.7 0.4 1.2 ~ ~ ~ 0.1 0.1 0.1 0 3 normal @a

kill @e[tag=124work]
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 0.6 0.7
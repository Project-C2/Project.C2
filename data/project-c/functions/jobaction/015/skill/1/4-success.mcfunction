tag @s remove 15-1-Target
effect clear @s minecraft:blindness
effect clear @s minecraft:slow_falling

kill @e[sort=nearest,limit=1,type=minecraft:area_effect_cloud,tag=15-1-stanAEC]
kill @e[tag=15-1-Stand,tag=skillStage3,tag=success,sort=nearest,limit=1]

playsound minecraft:entity.wither.death master @s ~ ~ ~ 2 0
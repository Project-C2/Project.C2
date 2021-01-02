execute as @e[tag=this] run data modify entity @s Owner set from entity @a[tag=now,limit=1] UUID
tag @e[tag=this] remove this
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 1.5
tag @a[tag=now] remove now
scoreboard players reset #110- playerNumber
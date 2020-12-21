scoreboard players operation @e[tag=018-seed,limit=1,sort=nearest] counter_1 += @s damageDealt
data merge entity @e[type=vindicator,tag=018-seedVil,distance=..1,limit=1,sort=nearest,nbt={HurtTime:10s}] {Health:20f}
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1.5 ~ 0.35 0.35 0.35 1 10 normal @s

summon area_effect_cloud ~ ~0.7 ~ {Tags:["this"],Particle:"enchanted_hit",Radius:0.8f,Duration:5,Age:4,WaitTime:1,Potion:"minecraft:healing"}
#playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.6 2
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e[tag=this,limit=1,sort=nearest] remove this

scoreboard players set @s counter_1 0
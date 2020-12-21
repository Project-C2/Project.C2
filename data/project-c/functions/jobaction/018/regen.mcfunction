scoreboard players remove @s Mana 10

summon area_effect_cloud ~ ~0.7 ~ {Tags:["this"],Particle:"heart",Radius:0.8f,Duration:5,Age:4,WaitTime:1,Potion:"minecraft:healing"}
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e[tag=this] remove this

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.7 2
particle minecraft:heart ~ ~1 ~ 0.5 0.2 0.5 1 4 normal @a
particle minecraft:heart ~ ~1 ~ 0.5 0.2 0.5 1 1 force @a


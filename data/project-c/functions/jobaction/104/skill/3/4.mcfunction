execute facing entity @e[tag=104hit,limit=1] feet run summon minecraft:firework_rocket ^ ^1.5 ^-3 {Tags:["first"],Life:1,LifeTime:14,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]}]}}},ShotAtAngle:1b}
execute as @e[tag=104hit,limit=1] at @s anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ~ ~-0.6 ~ {Tags:["this"],Duration:1}
execute at @e[tag=first,limit=1] as @e[type=area_effect_cloud,tag=this,limit=1] facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.54
data modify entity @e[tag=first,limit=1,sort=nearest] Motion set from entity @e[type=area_effect_cloud,tag=this,limit=1] Pos
data modify entity @e[tag=first,limit=1,sort=nearest] Owner set from entity @s Owner

particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 100 normal @a
particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 5 force @a
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1.2 1

kill @e[tag=this]
tag @e[tag=first] remove first
tag @e[tag=104hit] remove 104hit
scoreboard players set @s counter_1 -16
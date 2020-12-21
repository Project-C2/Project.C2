execute if entity @s[tag=103fireball4R] facing entity @e[team=!Red,tag=Battle,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["103vector"],Duration:1}
execute if entity @s[tag=103fireball4B] facing entity @e[team=!Blue,tag=Battle,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["103vector"],Duration:1}
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0.6
particle minecraft:cloud ~ ~0.3 ~ 0 0 0 1 136 normal @a
particle minecraft:cloud ~ ~0.3 ~ 0 0 0 1 34 force @a
data modify entity @s Motion set from entity @e[tag=103vector,limit=1] Pos
data modify entity @s power set from entity @e[tag=103vector,limit=1] Pos
data modify entity @s Owner set from entity @s Owner
tag @e[tag=103vector,limit=1] remove 103vector


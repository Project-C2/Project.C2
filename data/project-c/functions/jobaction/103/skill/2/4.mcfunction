summon fireball ^ ^1 ^2 {ExplosionPower:2,Tags:["103enchanted","103fireball3","this"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.7 {Tags:["103vector"],Duration:1}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=103vector,limit=1] Pos
data modify entity @e[tag=this,limit=1] Owner set from entity @s Owner
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber
tag @e[tag=103vector,limit=1] remove 103vector
scoreboard players set @e[tag=this] counter 9
scoreboard players operation @e[tag=this] counter -= @s counter_4
scoreboard players operation @e[tag=this] counter *= @s counter_3
tag @e[tag=this] remove this

playsound minecraft:entity.evoker.prepare_attack master @a ^ ^1.5 ^2 2 1.2
particle minecraft:witch ^ ^1.5 ^2 1 1 1 1 48 normal @a
particle minecraft:witch ^ ^1.5 ^2 1 1 1 1 12 force @a

scoreboard players add @s counter_4 1
scoreboard players set @s counter_3 0
tp @s ~ ~ ~ ~-15 ~
particle minecraft:poof ~ ~ ~ 1.5 1.5 1.5 1 100 normal @a
particle minecraft:poof ~ ~ ~ 1.5 1.5 1.5 1 25 force @a
particle minecraft:item minecraft:glass ~ ~ ~ 1.5 1.5 1.5 2 100 normal @a
particle minecraft:item minecraft:glass ~ ~ ~ 1.5 1.5 1.5 2 25 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 0.52
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 0.51
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 0.50
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.2 0.5

summon minecraft:area_effect_cloud ~ ~0.5 ~ {CustomName:'{"text":"高天の歌","color":"#7de0b1"}',Particle:"dust 0 0 0 0",Duration:5,Age:4,WaitTime:1,Radius:0.5f,Effects:[{Id:25b,Amplifier:9b,Duration:24},{Id:25b,Amplifier:0b,Duration:36}]}
#ヒット判定
tag @s add it
execute as @e[distance=..5.2,tag=Battle] unless score @s teamNumber = @e[tag=it,limit=1,sort=nearest] teamNumber at @s run function project-c:jobaction/124/skill/1/3-hit
tag @s remove it
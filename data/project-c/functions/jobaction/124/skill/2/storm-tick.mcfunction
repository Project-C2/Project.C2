#ヒット判定
tag @s add it
execute as @e[distance=..10.0,tag=Battle] unless score @s teamNumber = @e[tag=it,limit=1,sort=nearest] teamNumber at @s run tag @s add hit
execute as @e[distance=..10.0,type=item] run tag @s add hit

#その他
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s facing entity @e[tag=it,limit=1,sort=nearest] feet if block ^ ^ ^0.45 #project-c:wancomatter/like_air positioned ^ ^ ^0.15 run tp @s ~ ~ ~

execute if entity @e[tag=hit,limit=1] run tag @e[distance=4.5..10.5,tag=hit] remove hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit,tag=Battle,nbt={HurtTime:0s}] at @s run function project-c:jobaction/124/skill/2/dmg

tag @e[tag=hit] remove hit
tag @s remove it

particle minecraft:flash ~ ~ ~ 2 2 2 1 1 force @a
particle minecraft:poof ~ ~ ~ 0 0 0 0.6 5 force @a

scoreboard players add @s counter_5 1
execute if score @s counter_5 matches 2.. run function project-c:jobaction/124/skill/2/particle-root
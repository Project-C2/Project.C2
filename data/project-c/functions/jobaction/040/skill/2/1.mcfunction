particle minecraft:explosion ^ ^1 ^0.4 0 0 0 0 1 force @a[distance=1..]
particle minecraft:enchant ^ ^1 ^0.4 0 0 0 0.2 3 force @a

summon marker ~ ~1 ~ {Tags:["040-Bullet","Projectile","first"]}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber

summon marker ~ ~1 ~ {Tags:["040-BulletT"]}
tp @e[tag=040-BulletT,limit=1] ~ ~1 ~ ~ ~
data merge storage random: {min:-99,max:100}
execute store result score @e[tag=040-BulletT,limit=1] counter_1 run function project-c:general/random
data merge storage random: {min:-99,max:100}
execute store result score @e[tag=040-BulletT,limit=1] counter_2 run function project-c:general/random
execute as @e[tag=040-BulletT,limit=1] at @s run function project-c:general/score_tp/local_x
execute as @e[tag=040-BulletT,limit=1] at @s run function project-c:general/score_tp/local_y
scoreboard players set @e[tag=040-BulletT] counter_3 51
scoreboard players operation @e[tag=040-BulletT] counter_3 -= @s counter_1
execute as @e[tag=040-BulletT,limit=1] at @s run function project-c:jobaction/040/skill/2/score_tp

execute as @e[tag=first,limit=1] at @s run tp @s ^ ^ ^ facing entity @e[limit=1,tag=040-BulletT] feet

scoreboard players remove @s counter_1 2
kill @e[tag=040-BulletT]
tag @e[tag=first] remove first
data merge block 109 2 -71 {auto:1b}

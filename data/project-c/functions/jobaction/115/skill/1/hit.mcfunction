execute positioned as @e[tag=hit,limit=1,sort=nearest] run summon arrow ~ ~0.5 ~ {Tags:["115arrow"],life:1200s,damage:2.5d,PierceLevel:127b}
tag @s add it
execute as @a[scores={jobNumber=115}] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber run tag @s add user
tag @s remove it
data modify entity @e[tag=115arrow,limit=1] Owner set from entity @a[tag=user,limit=1] UUID
execute if entity @s[tag=115sharp] run data merge entity @e[tag=115arrow,limit=1,sort=nearest] {damage:3.2d}
execute if entity @s[tag=115flame] run data merge entity @e[tag=115arrow,limit=1,sort=nearest] {Fire:32767s}
execute if entity @s[tag=115quick] run scoreboard players add @a[tag=user,limit=1] CT1 2000
execute if entity @s[tag=115stan] run scoreboard players add @e[tag=hit,limit=1,sort=nearest] stanTime 31
execute if entity @s[tag=115stan] run data merge block -113 2 -122 {auto:1b}
scoreboard players add @a[tag=user,limit=1] CT1 20
tag @a[tag=user] remove user
execute store result entity @e[tag=115arrow,limit=1] Motion[0] double 0.01 run data get entity @s Motion[0] 200
execute store result entity @e[tag=115arrow,limit=1] Motion[1] double 0.01 run data get entity @s Motion[1] 200
execute store result entity @e[tag=115arrow,limit=1] Motion[2] double 0.01 run data get entity @s Motion[2] 200
execute as @e[tag=115arrow,limit=1] store result score @s counter_1 run data get entity @s Pos[0] 100
execute as @e[tag=115arrow,limit=1] store result score @s counter_2 run data get entity @s Pos[1] 100
execute as @e[tag=115arrow,limit=1] store result score @s counter_3 run data get entity @s Pos[2] 100
execute store result score @e[tag=115arrow,limit=1] CT1 run data get entity @s Motion[0] 100
execute store result score @e[tag=115arrow,limit=1] CT2 run data get entity @s Motion[1] 100
execute store result score @e[tag=115arrow,limit=1] CT3 run data get entity @s Motion[2] 100
execute as @e[tag=115arrow,limit=1] run scoreboard players operation @s counter_1 -= @s CT1
execute as @e[tag=115arrow,limit=1] run scoreboard players operation @s counter_2 -= @s CT2
execute as @e[tag=115arrow,limit=1] run scoreboard players operation @s counter_3 -= @s CT3
execute as @e[tag=115arrow,limit=1] store result entity @s Pos[0] double 0.01 run scoreboard players get @s counter_1
execute as @e[tag=115arrow,limit=1] store result entity @s Pos[1] double 0.01 run scoreboard players get @s counter_2
execute as @e[tag=115arrow,limit=1] store result entity @s Pos[2] double 0.01 run scoreboard players get @s counter_3
tag @e[tag=115arrow] remove 115arrow
tag @e[tag=hit] remove hit
kill @s
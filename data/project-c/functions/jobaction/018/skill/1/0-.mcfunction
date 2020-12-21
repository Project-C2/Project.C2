execute store result score @s counter_1 run data get entity @s Pos[0] 100
execute at @s store result score @s counter_4 run data get entity @a[tag=018-1,limit=1,sort=nearest] Motion[0] 100
execute at @s store result score @s counter_5 run data get entity @a[tag=018-1,limit=1,sort=nearest] Pos[0] 100
scoreboard players operation @s counter_1 -= @s counter_5
scoreboard players operation @s counter_1 += @s counter_4
execute store result score @s counter_2 run data get entity @s Pos[1] 100
execute at @s store result score @s counter_4 run data get entity @a[tag=018-1,limit=1,sort=nearest] Motion[1] 100
execute at @s store result score @s counter_5 run data get entity @a[tag=018-1,limit=1,sort=nearest] Pos[1] 100
scoreboard players operation @s counter_2 -= @s counter_5
scoreboard players operation @s counter_2 += @s counter_4
execute store result score @s counter_3 run data get entity @s Pos[2] 100
execute at @s store result score @s counter_4 run data get entity @a[tag=018-1,limit=1,sort=nearest] Motion[2] 100
execute at @s store result score @s counter_5 run data get entity @a[tag=018-1,limit=1,sort=nearest] Pos[2] 100
scoreboard players operation @s counter_3 -= @s counter_5
scoreboard players operation @s counter_3 += @s counter_4

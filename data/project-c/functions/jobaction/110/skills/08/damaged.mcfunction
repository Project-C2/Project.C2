#受けたダメージを検知してその分だけHPスコアを減少
execute store result score @e[tag=065,limit=1,sort=nearest] counter_6 run data get entity @s Health 100
execute store result score @e[tag=065,limit=1,sort=nearest] counter_7 run data get entity @s AbsorptionAmount 100
execute as @e[tag=065,limit=1,sort=nearest] run scoreboard players operation @s counter_7 += @s counter_6
execute as @e[tag=065,limit=1,sort=nearest] run scoreboard players operation @s counter_1 += @s counter_2

execute as @e[tag=065,limit=1,sort=nearest] run scoreboard players operation @s counter_1 -= @s counter_7
execute as @e[tag=065,limit=1,sort=nearest] run scoreboard players operation @s counter_6 -= @s counter_1

execute unless score @e[tag=065,limit=1,sort=nearest] counter_6 matches 1.. run effect give @s instant_damage 1 9 true
execute if score @e[tag=065,limit=1,sort=nearest] counter_6 matches 1.. run scoreboard players operation @s ScoreToHealth = @e[tag=065,limit=1,sort=nearest] counter_6

#演出
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1.3 0.5
particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 7 force @a
particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 28 normal @a[distance=1..]

#盲目解除と移動阻害を付与
effect clear @s blindness
effect give @s slowness 10 3

scoreboard players set @e[tag=065] counter 100
tag @s remove 110meditation_using
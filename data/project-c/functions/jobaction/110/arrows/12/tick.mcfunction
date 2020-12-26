tag @s add 110creeperA_judging
execute as @e[tag=110creeperA_judge] if score @s counter_4 = @e[tag=110creeperA_judging,limit=1] counter_4 run kill @s
summon minecraft:armor_stand ~ ~ ~ {Tags:["this","110creeperA_judge"],Marker:1b,NoGravity:1b,Invisible:1b}
scoreboard players operation @e[tag=this,limit=1] counter_4 = @s counter_4
execute store result score @e[tag=this,limit=1] counter_1 run data get entity @s Motion[0] 100
execute store result score @e[tag=this,limit=1] counter_2 run data get entity @s Motion[1] 100
execute store result score @e[tag=this,limit=1] counter_3 run data get entity @s Motion[2] 100
tag @s remove 110creeperA_judging
tag @e[tag=this] remove this

data merge block -54 64 -60 {auto:1b}
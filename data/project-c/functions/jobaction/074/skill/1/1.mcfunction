scoreboard players add @s counter 1

summon minecraft:armor_stand ~ ~ ~ {Tags:["074-1stand","074-1standF","074-1standF1"],Marker:1b,Invisible:1b,NoGravity:1b}
execute store result entity @e[tag=074-1standF1,limit=1] Rotation[0] float 0.01 run scoreboard players get @s counter_1
execute store result entity @e[tag=074-1standF1,limit=1] Rotation[1] float 0.01 run scoreboard players get @s counter_2
execute as @e[tag=074-1standF1] at @s positioned ^ ^ ^-2 run summon minecraft:armor_stand ~ ~ ~ {Tags:["074-1stand","074-1standF","074-1standF2"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @e[tag=074-1standF2,limit=1] Rotation set from entity @e[tag=074-1standF1,limit=1] Rotation
scoreboard players operation @e[tag=074-1standF] counter_1 = @s counter_1
scoreboard players operation @e[tag=074-1standF] counter_2 = @s counter_2
tag @e[tag=074-1standF] remove 074-1standF
tag @e[tag=074-1standF1] remove 074-1standF1
tag @e[tag=074-1standF2] remove 074-1standF2

playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 3 0.5
execute if score @s counter matches 1 run data merge block 35 2 33 {auto:1b}
execute if score @s counter matches 40.. run kill @s
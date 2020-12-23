#スキル5
execute if score @s counter_3 matches 5 run tag @s add skill1_use
execute if score @s counter_4 matches 5 run tag @s add skill2_use
execute if score @s counter_5 matches 5 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 1200


function project-c:jobaction/106/items/skill/bulk


scoreboard players set @s counter 400

playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 1.2
particle minecraft:squid_ink ~ ~1 ~ 0 0.3 0 0.1 10 force


summon minecraft:pillager ~ ~ ~ {CustomName:'{"text":""}',CustomNameVisible:1b,Tags:["106_reconnaissance_stand","number_operation","fall_damage_nullification"],Silent:1b}

tp @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand] ~ ~ ~ ~ ~
loot replace block 0 0 0 container.0 loot project-c:neac/player_name

attribute @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1] generic.movement_speed base set 0
attribute @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1] generic.follow_range base set 0
execute as @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1] store result score @s counter_1 run data get entity @s Rotation[0] 100000
execute as @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1] store result score @s counter_2 run data get entity @s Rotation[1] 100000
scoreboard players operation @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join Red @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1]
data modify entity @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1] CustomName set from block 0 0 0 Items[0].tag.display.Name
data remove block 0 0 0 Items[]
tag @e[type=minecraft:pillager,tag=number_operation,tag=106_reconnaissance_stand,limit=1] remove number_operation


gamemode spectator @s

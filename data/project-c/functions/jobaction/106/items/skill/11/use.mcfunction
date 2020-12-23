#スキル11
execute if score @s counter_3 matches 11 run tag @s add skill1_use
execute if score @s counter_4 matches 11 run tag @s add skill2_use
execute if score @s counter_5 matches 11 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 400


function project-c:jobaction/106/items/skill/bulk



playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1.2
playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1.2
particle minecraft:block green_stained_glass ~ ~1 ~ 0 0 0 0.2 30
summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"ボム"}',Tags:["106_bomb","number_operation","fall_damage_nullification"],ignited:1b,ExplosionRadius:2b,Fuse:10000s}

attribute @e[tag=number_operation,limit=1] generic.movement_speed base set 0
attribute @e[tag=number_operation,limit=1] generic.follow_range base set 0
execute as @e[tag=number_operation,limit=1] store result score @s counter_1 run data get entity @s Rotation[0] 100000
execute as @e[tag=number_operation,limit=1] store result score @s counter_2 run data get entity @s Rotation[1] 100000
scoreboard players set @e[tag=number_operation,limit=1] counter_3 200
scoreboard players set @e[tag=number_operation,limit=1] counter_4 200
scoreboard players operation @e[tag=number_operation,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=number_operation,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join Red @e[tag=number_operation,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=number_operation,limit=1]
data merge entity @e[tag=number_operation,limit=1] {Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000}]}
tag @e[tag=number_operation,limit=1] remove number_operation



function project-c:jobaction/106/items/skill/11/auxiliary/set

#スキル8
execute if score @s counter_3 matches 8 run tag @s add skill1_use
execute if score @s counter_4 matches 8 run tag @s add skill2_use
execute if score @s counter_5 matches 8 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 300


function project-c:jobaction/106/items/skill/bulk



playsound minecraft:entity.enderman.death master @a ~ ~ ~ 1 0.7
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 1 40 force
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["106_soul_curse","this"],Duration:100}

scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[type=minecraft:area_effect_cloud,tag=this,tag=106_soul_curse] remove this



#スキル8
execute if score @s counter_3 matches 8 run tag @s add skill1_use
execute if score @s counter_4 matches 8 run tag @s add skill2_use
execute if score @s counter_5 matches 8 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 600


function project-c:jobaction/106/items/skill/bulk



playsound minecraft:entity.enderman.death master @a ~ ~ ~ 1 0.7
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 1 40 force
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["106_soul_curse","number_operation"],Duration:100}

execute if entity @s[team=Red] run tag @e[tag=106_soul_curse,tag=number_operation,limit=1] add 106-SoulCurse-Red
execute if entity @s[team=Blue] run tag @e[tag=106_soul_curse,tag=number_operation,limit=1] add 106-SoulCurse-Blue
tag @e[type=minecraft:area_effect_cloud,tag=number_operation,tag=106_soul_curse] remove number_operation



#スキル4
execute if score @s counter_3 matches 4 run tag @s add skill1_use
execute if score @s counter_4 matches 4 run tag @s add skill2_use
execute if score @s counter_5 matches 4 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 400


function project-c:jobaction/106/items/skill/bulk




summon marker ~ ~ ~ {Tags:["106_sprink_arrow_m","this"]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute at @s anchored eyes positioned ^ ^ ^ as @e[tag=this] run tp @s ~ ~ ~ ~ ~
tag @e[tag=this] remove this


playsound minecraft:item.bucket.empty master @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 0.5 20 force

function project-c:jobaction/106/items/skill/04/auxiliary/set

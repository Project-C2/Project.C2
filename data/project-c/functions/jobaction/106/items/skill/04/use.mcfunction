#スキル4
execute if score @s counter_3 matches 4 run tag @s add skill1_use
execute if score @s counter_4 matches 4 run tag @s add skill2_use
execute if score @s counter_5 matches 4 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 400


function project-c:jobaction/106/items/skill/bulk




summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invisible:1b,Tags:["106_sprink_arrow","number_operation"]}
scoreboard players operation @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=number_operation] playerNumber = @s playerNumber
execute if entity @s[team=Red] run tag @e[tag=106_sprink_arrow,tag=number_operation,limit=1] add 106-SA-Red
execute if entity @s[team=Blue] run tag @e[tag=106_sprink_arrow,tag=number_operation,limit=1] add 106-SA-Blue
execute at @s anchored eyes positioned ^ ^ ^ as @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=number_operation] run tp @s ~ ~ ~ ~ ~
tag @e[type=minecraft:armor_stand,tag=106_sprink_arrow,tag=number_operation] remove number_operation


playsound minecraft:item.bucket.empty master @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.5 0.5 0.5 0.5 20 force

function project-c:jobaction/106/items/skill/04/auxiliary/set

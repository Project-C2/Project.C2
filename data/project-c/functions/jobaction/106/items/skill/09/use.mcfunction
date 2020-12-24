#スキル9
execute if score @s counter_3 matches 9 run tag @s add skill1_use
execute if score @s counter_4 matches 9 run tag @s add skill2_use
execute if score @s counter_5 matches 9 run tag @s add skill3_use
#===================================================================

execute if entity @s[tag=106_dash_lv3] run tag @s remove 106_dash_lv2
execute if entity @s[tag=106_dash_lv3] run tag @s remove 106_dash_lv1
execute if entity @s[tag=106_dash_lv2] run tag @s remove 106_dash_lv1

execute if entity @s[tag=106_dash_lv1] run scoreboard players set #106_CT counter 60
execute if entity @s[tag=106_dash_lv2] run scoreboard players set #106_CT counter 100
execute if entity @s[tag=106_dash_lv3] run scoreboard players set #106_CT counter 200


scoreboard players set @s counter_9 5


function project-c:jobaction/106/items/skill/bulk



particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 10 force
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1.2

execute if entity @s[tag=106_dash_lv1] run effect give @s speed 1 20 true
execute if entity @s[tag=106_dash_lv2] run effect give @s speed 1 30 true
execute if entity @s[tag=106_dash_lv3] run effect give @s speed 1 60 true


execute if entity @s[tag=106_dash_lv1] run tag @s remove 106_dash_lv1
execute if entity @s[tag=106_dash_lv2] run tag @s remove 106_dash_lv2
execute if entity @s[tag=106_dash_lv3] run tag @s remove 106_dash_lv3


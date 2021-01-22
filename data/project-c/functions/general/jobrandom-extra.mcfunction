kill @e[tag=RandomAEC]
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] at @s store result score @s counter_3 run data get entity @s UUID[1]
execute as @e[tag=RandomAEC] at @s run scoreboard players set @s counter_2 110
execute as @e[limit=1,tag=RandomAEC] at @s run scoreboard players operation @s counter_3 %= @s counter_2

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 15 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 19 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 50 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 59 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 60 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 70 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 75 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 81 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 98 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 100 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 101 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 104 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 107 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 108 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 110 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 0 run kill @e[tag=RandomAEC]
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 0 run function project-c:general/jobrandom-extra

scoreboard players operation @s jobNumber = @e[limit=1,tag=RandomAEC] counter_3
scoreboard players operation #jobNumber counter = @s jobNumber
function project-c:general/jobname
tellraw @s [{"text":"[システム]","color":"white"},{"nbt":"name","storage": "project-c:job","interpret": true,"bold":true},{"text":"に変更されました。","color":"white"}]

tag @s add JobChanged

data merge block -75 49 -123 {auto:1b}

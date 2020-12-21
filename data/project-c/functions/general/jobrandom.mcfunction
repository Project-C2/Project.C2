kill @e[tag=RandomAEC]
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] at @s store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=RandomAEC] at @s run scoreboard players operation @s counter_3 %= #100 counter

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 15 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 19 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 37 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 43 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 50 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 59 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 60 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 70 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0
execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 75 run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 97.. run scoreboard players set @e[limit=1,tag=RandomAEC] counter_3 0

execute if score @e[limit=1,tag=RandomAEC] counter_3 matches 0 run function project-c:general/jobrandom

scoreboard players operation @s jobNumber = @e[limit=1,tag=RandomAEC] counter_3

kill @e[tag=RandomAEC]


tag @s add JobChanged

data merge block -75 49 -123 {auto:1b}

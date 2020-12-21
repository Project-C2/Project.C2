tag @s add 041-cardinal-p
summon armor_stand ~ ~ ~ {Tags:["041-cardinal-dummy"],NoGravity:1b,Marker:1b,Invisible:1b}
execute store result score #041-dummy counter_1 run data get entity @s Pos[0] 10
execute store result score #041-dummy counter_2 run data get entity @s Motion[0] 10
scoreboard players operation #041-dummy counter_1 += #041-dummy counter_2
execute as @e[tag=041-cardinal-dummy] store result entity @s Pos[0] double 0.1 run scoreboard players get #041-dummy counter_1
execute store result score #041-dummy counter_1 run data get entity @s Pos[1] 10
execute store result score #041-dummy counter_2 run data get entity @s Motion[1] 10
scoreboard players operation #041-dummy counter_1 += #041-dummy counter_2
execute as @e[tag=041-cardinal-dummy] store result entity @s Pos[1] double 0.1 run scoreboard players get #041-dummy counter_1
execute store result score #041-dummy counter_1 run data get entity @s Pos[2] 10
execute store result score #041-dummy counter_2 run data get entity @s Motion[2] 10
scoreboard players operation #041-dummy counter_1 += #041-dummy counter_2
execute as @e[tag=041-cardinal-dummy] store result entity @s Pos[2] double 0.1 run scoreboard players get #041-dummy counter_1
execute facing entity @e[tag=041-cardinal-dummy] feet positioned ^ ^ ^-7.7274066103125462939979455978312 run function project-c:jobaction/041/arrow/1/1-4summon
tag @s remove 041-cardinal-p
kill @e[tag=041-cardinal-dummy]
scoreboard players set @s subcounter 0
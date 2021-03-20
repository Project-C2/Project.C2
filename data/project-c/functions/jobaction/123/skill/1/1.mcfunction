scoreboard players add @s counter 1

scoreboard players operation #123- teamNumber = @s teamNumber
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Battle,dx=0] unless score @s teamNumber = #123- teamNumber run tag @s add hit
execute if score @s counter matches 20.. at @s positioned ^ ^ ^-1 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Battle,dx=0] unless score @s teamNumber = #123- teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/123/skill/1/hit
scoreboard players reset #123-

execute if score @s counter matches 05..09 run tp @s ^ ^ ^0.40
execute if score @s counter matches 10..14 run tp @s ^ ^ ^0.60
execute if score @s counter matches 15..19 run tp @s ^ ^ ^0.85
execute if score @s counter matches 20..24 run tp @s ^ ^ ^1.15
execute if score @s counter matches 25..29 run tp @s ^ ^ ^1.50
execute if score @s counter matches 30..69 run tp @s ^ ^ ^1.90
execute if score @s counter matches 70.. run kill @s
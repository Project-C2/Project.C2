scoreboard players add @s counter 1

scoreboard players operation #123- teamNumber = @s teamNumber
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Battle,dx=0] unless score @s teamNumber = #123- teamNumber run tag @s add hit
execute at @s positioned ^ ^ ^-0.60 positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Battle,dx=0] unless score @s teamNumber = #123- teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/123/skill/1/hit
scoreboard players reset #123-

tp @s ^ ^ ^1.20
execute if score @s counter matches 70.. run kill @s
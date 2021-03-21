scoreboard players add @s counter 1

scoreboard players operation #123- teamNumber = @s teamNumber
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=Battle,dx=0] unless score @s teamNumber = #123- teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/123/skill/2/hit
scoreboard players reset #123-

execute if score @s counter matches 5.. run tp @s ^ ^ ^1.0
execute if score @s counter matches 5.. positioned ^ ^ ^1.0 if block ~ ~-0.3 ~ #project-c:wancomatter/like_air unless block ~ ~-1.3 ~ #project-c:wancomatter/like_air run tp @s ~ ~-1 ~
execute if score @s counter matches 5.. positioned ^ ^1 ^1.0 unless block ~ ~-0.3 ~ #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute if score @s counter matches 105.. run kill @s

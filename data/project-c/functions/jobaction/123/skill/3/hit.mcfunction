scoreboard players set #123- subcounter 100
tag @s add 123-3
execute as @e[tag=hit,type=player] at @s run function project-c:jobaction/123/skill/3/hit-player
execute as @e[tag=hit,type=!player] at @s run function project-c:jobaction/123/skill/3/hit-entity
tag @s remove 123-3
scoreboard players reset #123-
tag @e[tag=hit] remove hit
kill @s

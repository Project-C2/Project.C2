scoreboard players add @s counter 1

scoreboard players operation #123- teamNumber = @s teamNumber
scoreboard players set @s counter_1 0
function project-c:jobaction/123/skill/3/1-loop
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/123/skill/3/hit
scoreboard players reset #123-

execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run kill @s
execute unless block ^ ^ ^2 #project-c:wancomatter/like_air run kill @s
tp @s ^ ^ ^3.2

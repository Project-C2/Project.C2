scoreboard players add @s counter 1

scoreboard players operation #021- teamNumber = @s teamNumber
scoreboard players set @s counter_1 0
function project-c:jobaction/021/skill/1/1-loop
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/021/skill/1/hit
scoreboard players reset #021-

execute unless block ^ ^ ^1 #project-c:wancomatter/like_air run kill @s
execute unless block ^ ^ ^2 #project-c:wancomatter/like_air run kill @s
execute unless block ^ ^ ^3 #project-c:wancomatter/like_air run kill @s
execute unless block ^ ^ ^4 #project-c:wancomatter/like_air run kill @s
tp @s ^ ^ ^4.0
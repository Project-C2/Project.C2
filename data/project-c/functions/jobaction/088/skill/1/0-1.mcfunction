#counter_1が10以下の間ループし続けるfunction。
#実行地点のBlockは常にair

scoreboard players add @s counter_1 1
execute unless block ~ ~-1 ~ air run tp @s ~ ~ ~
execute unless block ~ ~-1 ~ air run scoreboard players set @s counter 3
execute unless block ~ ~-1 ~ air run scoreboard players set @s counter_1 15
 
execute if score @s counter_1 matches ..10 positioned ~ ~-1 ~ run function project-c:jobaction/088/skill/1/0-1
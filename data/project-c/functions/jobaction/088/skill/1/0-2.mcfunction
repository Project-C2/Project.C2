#counter_1が10以下の間ループし続けるfunction。
#実行地点のBlockは常にair以外

scoreboard players add @s counter_1 1
execute if block ~ ~1 ~ air run tp @s ~ ~1 ~
execute if block ~ ~1 ~ air run scoreboard players set @s counter 4
execute if block ~ ~1 ~ air run scoreboard players set @s counter_1 15
 
execute if score @s counter_1 matches ..10 positioned ~ ~1 ~ run function project-c:jobaction/088/skill/1/0-2
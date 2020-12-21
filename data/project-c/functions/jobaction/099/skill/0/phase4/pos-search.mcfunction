tag @e[tag=this,tag=099-W-P4-Pos-search] remove 099-W-P4-Pos-search
tag @e[tag=this,tag=099-W-P4-Pos-search-more] remove 099-W-P4-Pos-search-more
scoreboard players add @e[tag=this] counter_5 1
execute as @e[tag=this] at @s unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search-more
execute as @e[tag=this] at @s unless block ~ ~1 ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search-more
execute as @e[tag=this] at @s if block ~ ~-1 ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search-more
execute as @e[tag=this] at @s if block ~ ~-1 ~ #project-c:wancomatter/like_air if block ~ ~-2 ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search-more
execute as @e[tag=this,tag=099-W-P4-Pos-search-more] at @s run tp @s ~ ~1 ~
execute as @e[tag=this,tag=099-W-P4-Pos-search-more] if score @s counter_5 matches 10 at @s run tp @s ~ ~-20 ~
execute if entity @e[tag=this,tag=099-W-P4-Pos-search-more,limit=1] if score @e[tag=this,limit=1] counter_5 matches ..20 run function project-c:jobaction/099/skill/0/phase4/pos-search
execute if entity @e[tag=this,tag=099-W-P4-Pos-search-more,limit=1] unless score @e[tag=this,limit=1] counter_5 matches ..20 run function project-c:jobaction/099/skill/0/phase4/error
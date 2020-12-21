tag @e[tag=this,tag=099-W-P4-Pos-search] remove 099-W-P4-Pos-search
spreadplayers ~ ~ 10 20 false @e[tag=this]
data modify entity @e[tag=this,limit=1] Pos[1] set from entity @e[tag=this2,limit=1] Pos[1]
execute as @e[tag=this] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
execute as @e[tag=this] at @s unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search
execute as @e[tag=this] at @s unless block ~ ~1 ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search
execute as @e[tag=this] at @s if block ~ ~-1 ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search
execute as @e[tag=this] at @s if block ~ ~-1 ~ #project-c:wancomatter/like_air if block ~ ~-1 ~ #project-c:wancomatter/like_air run tag @s add 099-W-P4-Pos-search
execute if entity @e[tag=this,tag=099-W-P4-Pos-search,limit=1] positioned ~ ~ ~ run function project-c:jobaction/099/skill/0/phase4/pos-search
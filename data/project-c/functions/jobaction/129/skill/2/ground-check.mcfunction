execute unless block ^ ^ ^0.00625 #project-c:wancomatter/like_air run tag @s add end
execute unless block ~ ~-0.01 ~ #project-c:wancomatter/like_air run tag @s add 129-hit-block
execute positioned ^ ^ ^0.1 align xyz if entity @e[type=shulker,dx=0,dy=0,dz=0] run tag @s add end
execute if entity @s[tag=129-hit-block] run tp @s ~ ~ ~
execute if entity @s[tag=129-hit-block] run tag @s add end
scoreboard players add @s counter 1
execute unless entity @s[tag=end] unless score @s counter matches 720.. positioned ^ ^ ^0.00625 run function project-c:jobaction/129/skill/2/ground-check
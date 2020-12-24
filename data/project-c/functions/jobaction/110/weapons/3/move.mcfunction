execute unless block ^ ^ ^0.1 #project-c:wancomatter/like_air run tag @s add 110-hit-block
execute positioned ^ ^ ^0.1 align xyz if entity @e[type=shulker,dx=0,dy=0,dz=0] run tag @s add 110-hit-block
execute if entity @s[tag=110-hit-block] run tp @s ~ ~ ~
scoreboard players add #110- counter 1
execute unless entity @s[tag=110-hit-block] unless score #110- counter matches 45.. positioned ^ ^ ^0.1 run function project-c:jobaction/110/weapons/3/move
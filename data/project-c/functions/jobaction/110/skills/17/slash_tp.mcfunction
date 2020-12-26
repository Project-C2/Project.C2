scoreboard players add #089dummy counter_1 1
execute unless block ^ ^ ^-0.3 #project-c:wancomatter/like_air run tp @s ~ ~ ~
execute if score #089dummy counter_1 matches 6 run tp @s ~ ~ ~
execute if score #089dummy counter_1 matches ..5 if block ^ ^ ^-0.3 #project-c:wancomatter/like_air positioned ^ ^ ^-0.3 run function project-c:jobaction/110/skills/17/slash_tp

execute unless block ^ ^ ^0.3 #project-c:wancomatter/like_air run function project-c:jobaction/089/skill/2/0-hit-block
execute unless entity @s[tag=089lightning-stop] run tp @s ^ ^ ^0.3
scoreboard players add #089dummy counter 1
execute unless score #089dummy counter matches 133.. at @s run function project-c:jobaction/089/skill/2/0-move
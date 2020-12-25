scoreboard players set #089dummy counter 6
scoreboard players operation #089dummy playerNumber = @s playerNumber

execute unless block ^ ^ ^0.3 #project-c:wancomatter/like_air run scoreboard players set #089dummy counter 0
execute if score #089dummy counter matches 1.. run function project-c:jobaction/110/skills/17/flying_loop
scoreboard players reset #089dummy

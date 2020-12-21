scoreboard players set #Base playerNumber 0
scoreboard players set @s playerNumber 0

execute as @a run function project-c:general/setnewplayernum/setbase

execute as @s run function project-c:general/setnewplayernum/setnum

scoreboard players reset #Base playerNumber
scoreboard players operation @s playerNumber = #Base playerNumber

execute if entity @s[scores={playerNumber=0}] run scoreboard players add #Base playerNumber 1
execute if entity @s[scores={playerNumber=0}] run function project-c:general/setnewplayernum/setnum
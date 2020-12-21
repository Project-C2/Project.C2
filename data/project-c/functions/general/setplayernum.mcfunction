scoreboard players add @s playerNumber 1
tag @a[sort=nearest,limit=1,scores={playerNumber=..0}] add setPlayerNum
scoreboard players operation @a[tag=setPlayerNum] playerNumber = @s playerNumber
tag @a[tag=setPlayerNum] remove setPlayerNum
execute if entity @a[scores={playerNumber=..0}] run function project-c:general/setplayernum
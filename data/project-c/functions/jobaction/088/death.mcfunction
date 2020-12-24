tag @s add 088-respawn
summon area_effect_cloud ~ ~ ~ {Tags:["088-respawnPoint","INI"],Duration:1000000,Radius:0.0f}
scoreboard players operation @e[tag=088-respawnPoint,tag=INI,sort=nearest,limit=1] playerNumber = @s playerNumber
tag @e[tag=088-respawnPoint,tag=INI,sort=nearest,limit=1] remove INI
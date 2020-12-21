tag @s add differentNumPlayer
execute if score @s playerNumber = @e[tag=sourcePlayerNum,limit=1] playerNumber run tag @s add sameNumPlayer

execute unless entity @s[tag=sameNumPlayer] if entity @a[limit=1,tag=!differentNumPlayer] as @a[limit=1,tag=!differentNumPlayer] run function project-c:general/getsamenumplayer-loop
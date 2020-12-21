execute if score @s playerNumber matches 1.. run tag @s add sourcePlayerNum
execute if score @s playerNumber matches 1.. as @a[limit=1] run function project-c:general/getsamenumplayer-loop
execute if score @s playerNumber matches 1.. run tag @a[tag=differentNumPlayer] remove differentNumPlayer
execute if score @s playerNumber matches 1.. run tag @s remove sourcePlayerNum
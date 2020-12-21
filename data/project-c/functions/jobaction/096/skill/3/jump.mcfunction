tag @s add 096
execute as @e[tag=096chained,scores={counter=..37}] if score @s playerNumber = @a[limit=1,sort=nearest,tag=096] playerNumber run tag @s add flag
tag @s remove 096

execute if entity @e[tag=flag,limit=1] run function project-c:jobaction/096/skill/3/5


scoreboard players set #110- counter_3 1201
tag @s add it
execute as @e[tag=110aqua_gun_aec] if score @s playerNumber = @a[tag=it,limit=1,sort=nearest] playerNumber run tag @s add 110flag
tag @s remove it
execute unless entity @e[limit=1,tag=110flag] run function project-c:jobaction/110/skills/16/1
execute if entity @e[limit=1,tag=110flag] run function project-c:jobaction/110/skills/16/2

scoreboard players add @s counter 1
tag @s add 110
execute as @a[tag=anti_aircraft_using] if score @s playerNumber = @e[tag=110,limit=1,sort=nearest] playerNumber at @s run function project-c:jobaction/110/skills/14/tick_p
tag @s remove 110
execute if score @s counter matches 16.. run kill @s

scoreboard players add @s counter 1
tag @s add 065
execute as @a[tag=110meditation_using] if score @s playerNumber = @e[tag=065,limit=1,sort=nearest] playerNumber at @s run function project-c:jobaction/110/skills/08/tick_p
tag @s remove 065
execute if score @s counter matches 99.. run kill @s

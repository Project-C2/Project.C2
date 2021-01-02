scoreboard players add @s counter 1
execute if score @s counter matches 5 run scoreboard players operation #110- playerNumber = @s playerNumber
execute if score @s counter matches 5 as @a if score @s playerNumber = #110- playerNumber run tag @s add now
execute if score @s counter matches 5 run function project-c:jobaction/110/skills/20/attack
execute if score @s counter matches 5 at @a[tag=now,limit=1] run function project-c:jobaction/110/skills/20/attack
execute if score @s counter matches 5 run function project-c:jobaction/110/skills/20/extinguish

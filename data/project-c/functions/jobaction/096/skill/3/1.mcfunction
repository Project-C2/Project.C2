scoreboard players add @s counter 1
tag @s add it
execute as @a[tag=096_3using] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add user
tag @s remove it
execute unless score @s counter matches 11.. if entity @e[tag=user] at @e[tag=user] run function project-c:jobaction/096/skill/3/2

data merge block 51 2 89 {auto:1b}
execute if score @s counter matches 10.. run tag @a[tag=user] remove 096_3using
tag @a[tag=user] remove user
execute if score @s counter matches 10.. run kill @s


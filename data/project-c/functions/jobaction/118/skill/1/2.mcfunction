tag @s add 118-1--
execute as @e[tag=118_0_selecting] if score @s playerNumber = @a[tag=118-1--,limit=1] counter run function project-c:jobaction/118/skill/1/3
tag @s remove 118-1--
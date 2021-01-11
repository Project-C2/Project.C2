tag @s add 118-1--
execute as @a[tag=Battle] if score @s playerNumber = @a[tag=118-1--,limit=1] counter_3 run function project-c:jobaction/118/skill/1/3
tag @s remove 118-1--
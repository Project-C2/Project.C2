
tag @s add 118-2--
execute as @a[tag=Battle] if score @s playerNumber = @a[tag=118-2--,limit=1] counter_4 run function project-c:jobaction/118/skill/2/3
tag @s remove 118-2--
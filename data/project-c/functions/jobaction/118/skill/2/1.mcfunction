scoreboard players remove @s counter_2 1

tag @s add 118-2--
execute as @e[tag=118_0_selecting] if score @s playerNumber = @a[tag=118-2--,limit=1] counter run function project-c:jobaction/118/skill/2/2
tag @s remove 118-2--
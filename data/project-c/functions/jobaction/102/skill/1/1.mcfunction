tag @s add it
execute as @a[scores={jobNumber=102,counter_1=1}] if score @s playerNumber = @e[tag=it,limit=1] playerNumber rotated as @s run tp @e[tag=it] ~ ~ ~ ~ 0
tag @s remove it




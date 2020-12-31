tag @s add it
execute if entity @a[nbt={Health:0.0f},limit=1] as @a[nbt={Health:0.0f}] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run function project-c:jobaction/031/skill/0/2
tag @s remove it
kill @s
execute at @a[scores={jobNumber=34}] if score @a[scores={jobNumber=34},sort=nearest,distance=..0.01,limit=1] playerNumber = @s playerNumber rotated as @a[scores={jobNumber=34},sort=nearest,distance=..0.01,limit=1] positioned ~ ~1.2 ~ run tp @s ^ ^ ^1 ~ ~
execute store result score @s subcounter run data get entity @s Health 1
title @a[tag=034-playerNumber,limit=1] actionbar [{"text":"狼HP:","color":"green","underlined":"true"},{"score":{"name":"@s","objective":"subcounter"}}]
effect give @s slow_falling 1 0
execute if entity @s[nbt={Sitting:0b}] at @s run function project-c:jobaction/034/skill/0/1
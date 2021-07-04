tag @s add 096
execute as @e[tag=096chainjump] if score @s playerNumber = @a[limit=1,sort=nearest,tag=096] playerNumber run kill @s
tag @s remove 096

effect clear @s levitation
effect clear @s slow_falling
item replace entity @s armor.feet with minecraft:air
tag @s remove 096chainjump_p


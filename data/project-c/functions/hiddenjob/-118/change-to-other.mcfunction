tag @s add 118-cto
execute as @a[tag=118_0_selecting] if score @s playerNumber = @a[tag=118-cto,limit=1] counter run tag @s remove 118_0_selecting
title @s actionbar ""
tag @s remove 118-cto
tag @s remove job118
tag @s add now
execute as @e[tag=110drainplant,tag=!now] if score @s playerNumber = @e[tag=now,limit=1,sort=nearest] playerNumber run tag @e[tag=now] remove now
execute if entity @s[tag=now] as @a[tag=110drainplant_user] if score @s playerNumber = @e[tag=now,limit=1,sort=nearest] playerNumber run tag @s remove 110drainplant_user
tag @s remove now

kill @s

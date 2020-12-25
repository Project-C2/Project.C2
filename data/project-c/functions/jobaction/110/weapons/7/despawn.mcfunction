execute as @e[tag=110dagger,tag=!now] if score @s playerNumber = @e[tag=now,limit=1] playerNumber run tag @e[tag=now] remove now
execute if entity @s[tag=now] as @a[tag=110_dagger_owner] if score @s playerNumber = @e[tag=now,limit=1] playerNumber run tag @s remove 110_dagger_owner
tag @s remove now
kill @s

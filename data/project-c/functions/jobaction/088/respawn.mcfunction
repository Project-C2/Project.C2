tag @s remove 088-respawn
tag @s add 088-respawn-tag
execute as @e[tag=088-respawnPoint] if score @s playerNumber = @a[tag=088-respawn-tag,sort=nearest,limit=1] playerNumber run tag @s add 088-respawnPoint-tag
tag @s remove 088-respawn-tag
tp @s @e[tag=088-1-position,tag=088-respawnPoint-tag,limit=1]
kill @e[tag=088-1-position,tag=088-respawnPoint-tag,limit=1]
tag @s add 088-S3-ready
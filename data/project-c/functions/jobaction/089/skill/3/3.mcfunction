tag @s add it
execute as @e[tag=089explode] if score @s playerNumber = @e[tag=it,limit=1] playerNumber at @s run function project-c:jobaction/089/skill/3/4
tag @s remove it

stopsound @a weather minecraft:entity.lightning_bolt.thunder
kill @s
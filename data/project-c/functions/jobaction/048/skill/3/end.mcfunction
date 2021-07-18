execute if entity @s[tag=048_eternal_big] run playsound minecraft:block.glass.break master @a ~ ~1 ~ 1 0.5
execute unless entity @s[tag=048_eternal_big] run particle minecraft:cloud ~ ~0.9 ~ 0.1 0.1 0.1 0.5 50 normal @a
execute if entity @s[tag=048_eternal_big] positioned ~ ~0.3 ~ run particle minecraft:cloud ~ ~0.9 ~ 0.1 0.1 0.1 0.5 50 force @a

tag @s add it
execute as @e[tag=048_eternal,tag=!it] if score @s playerNumber = @e[limit=1,sort=nearest,tag=it] playerNumber run tag @e[limit=1,sort=nearest,tag=it] add 048flag
tag @s remove it
execute unless entity @s[tag=048flag] run tag @a[tag=048user] remove 048using
tag @a[tag=048user] remove 048user
kill @s
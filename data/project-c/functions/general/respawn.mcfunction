attribute @s minecraft:generic.max_health base set 40
effect give @s minecraft:saturation 1000000 0 true
effect give @s minecraft:instant_health 1 4 true
effect give @s minecraft:resistance 5 4
kill @e[distance=..6,type=item]
scoreboard players set @s drop 1
scoreboard players set @s relicCount 0
scoreboard players set @s relicCount2 0
tag @s remove relic3deathA

tag @s remove Respawn.Reset.PCFB
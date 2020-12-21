replaceitem entity @s weapon.offhand minecraft:snowball 1
execute anchored eyes positioned ^ ^ ^ run kill @e[type=snowball,distance=..3,limit=1]
scoreboard players reset @s useSnowball
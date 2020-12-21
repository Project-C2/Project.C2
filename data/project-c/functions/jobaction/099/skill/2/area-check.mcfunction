
tag @s add 099-S2-P-area-c
execute as @e[tag=099-S2-AEC-this] at @s if score @s playerNumber = @e[distance=..10,tag=099-S2-P-area-c,sort=nearest,limit=1] 099-S2-APN run tag @e[tag=099-S2-P-area-c,limit=1] add 099-S2-P-in-area
execute as @e[tag=099-S2-AEC-this] at @s if score @s playerNumber = @e[tag=099-S2-P-area-c,sort=nearest,limit=1] 099-S2-APN run tag @e[tag=099-S2-P-area-c,limit=1] add 099-S2-P-area-T
tag @s remove 099-S2-P-area-c


execute if entity @s[tag=!099-S2-P-in-area,tag=099-S2-P-area-T] run tag @s add 099-S2-P-outside-F
execute if entity @s[tag=!099-S2-P-in-area,tag=099-S2-P-area-T] run effect give @s levitation 1 0 true
execute if entity @s[tag=!099-S2-P-in-area,tag=099-S2-P-area-T] run effect give @s slow_falling 1 0 true
execute if entity @s[tag=!099-S2-P-in-area,tag=099-S2-P-area-T] positioned as @e[tag=099-S2-AEC-this,limit=1] facing entity @s feet positioned ^ ^ ^9.5 run tp @s ~ ~ ~

tag @s[tag=099-S2-P-area-T] remove 099-S2-P-area-T
tag @s[tag=099-S2-P-in-area] remove 099-S2-P-in-area



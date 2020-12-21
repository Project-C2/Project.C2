particle dragon_breath ~ ~ ~ 0 0 0 0.1 8
tag @s[nbt={OnGround:1b}] add darknessoverloadong

execute if entity @s[tag=darknessoverloadong,tag=darknessoverloadR] run summon minecraft:armor_stand ^ ^-2 ^ {Invisible:1,Tags:["darknessoverload2","darknessoverload2R","darknessoverload2Summon"],Silent:1,NoGravity:1b}
execute if entity @s[tag=darknessoverloadong,tag=darknessoverloadB] run summon minecraft:armor_stand ^ ^-2 ^ {Invisible:1,Tags:["darknessoverload2","darknessoverload2B","darknessoverload2Summon"],Silent:1,NoGravity:1b}

execute as @e[tag=darknessoverload2Summon] at @s run tp @s ^ ^ ^ facing entity @e[tag=darknessoverloadong,limit=1]
execute as @e[tag=darknessoverload2Summon] at @s run tp @s ~ ~18 ~ ~ 0
execute as @e[tag=darknessoverload2Summon] at @s run tag @s remove darknessoverload2Summon

execute if entity @s[tag=darknessoverloadong] run data merge block 25 6 31 {auto:1b}
kill @s[tag=darknessoverloadong]
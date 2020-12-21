execute positioned 0.0 0.0 0.0 rotated as @s run summon armor_stand ^ ^ ^1.3 {Tags:["034-0-stand"],Marker:1b,NoGravity:1b,Invisible:1b}
data modify entity @s Motion set from entity @e[tag=034-0-stand,limit=1] Pos
kill @e[tag=034-0-stand]
effect clear @s minecraft:regeneration
tag @s remove 034-Sitting
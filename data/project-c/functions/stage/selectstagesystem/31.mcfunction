tp @a[team=Red] 1461 65 -1052 -90 0
tp @a[team=Blue] 1507.0 65 -988.0 90 0
tp @a[team=] 1510 65 -1021 90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 4030 72 6033 4030 73 6032 minecraft:red_stained_glass hollow
fill 1458 63 -1055 1464 68 -1049 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1485 22 -1020 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
tp @a[team=Red] -439 69 -992 180 0
tp @a[team=Blue] -439 69 -1207 0 0
tp @a[team=] -475 93 -1055 -140 30
execute as @a at @s run spawnpoint @s
fill -446 81 -989 -432 68 -996 minecraft:red_stained_glass replace minecraft:structure_void
fill -446 68 -1203 -430 81 -1210 minecraft:blue_stained_glass replace minecraft:structure_void
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -439 67 -1100 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
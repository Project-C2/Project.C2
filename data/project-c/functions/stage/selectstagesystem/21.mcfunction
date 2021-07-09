tp @a[team=Red] 2479.0 38 1032.0 180 0
tp @a[team=Blue] 2479.0 38 919.0 0 0
tp @a[team=] 2479.0 60 991 180 40
execute as @a at @s run spawnpoint @s
fill 2481 37 1029 2476 41 1034 minecraft:red_stained_glass hollow
fill 998 56 1914 993 64 1909 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 2478 0 975 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
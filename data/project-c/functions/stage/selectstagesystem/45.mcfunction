tp @a[team=Red] 3000 76 1931 0 0
tp @a[team=Blue] 3048 76 2069 180 0
tp @a[team=] 3024 80 1958 0 20
execute as @a at @s run spawnpoint @s
fill 3002 81 1936 2998 75 1936 minecraft:red_stained_glass
fill 3046 75 2064 3050 81 2064 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 3024 49 2000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
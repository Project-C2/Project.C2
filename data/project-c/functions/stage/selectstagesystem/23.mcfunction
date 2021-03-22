tp @a[team=Red] 960 56 4157 0 0
tp @a[team=Blue] 928 50 4267 -90 0
tp @a[team=] 982 50 4219 90 10
execute as @a at @s run spawnpoint @s
fill 963 55 4160 957 64 4154 minecraft:red_stained_glass hollow
fill 925 49 4264 931 57 4270 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 960 0 4220 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
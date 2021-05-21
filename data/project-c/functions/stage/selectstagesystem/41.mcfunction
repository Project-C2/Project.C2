tp @a[team=Red] 29 70 1000 90 0
tp @a[team=Blue] -77 70 1000 270 0
tp @a[team=] -24 125 1000 0 90
execute as @a at @s run spawnpoint @s
fill 32 73 1008 26 68 992 minecraft:red_stained_glass hollow
fill -74 68 1008 -80 73 992 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -24 40 1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
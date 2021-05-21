tp @a[team=Red] 1053 70 1000 90 0
tp @a[team=Blue] 947 70 1000 -90 0
tp @a[team=] 1000 80 1000
execute as @a at @s run spawnpoint @s
fill 1050 68 992 1056 73 1008 minecraft:red_stained_glass hollow
fill 944 68 992 950 73 1008 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1000 30 1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
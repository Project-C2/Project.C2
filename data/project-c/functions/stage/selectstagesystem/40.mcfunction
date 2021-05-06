tp @a[team=Red] 3948 79 -55 -45 0
tp @a[team=Blue] 4050 79 53 135 0
tp @a[team=] 3999 85 40 180 20
execute as @a at @s run spawnpoint @s
fill 3951 77 -52 3945 83 -58 minecraft:red_stained_glass hollow
fill 4047 77 50 4053 83 56 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 3018 35 4993 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
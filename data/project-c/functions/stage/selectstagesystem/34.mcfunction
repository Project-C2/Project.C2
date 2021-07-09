tp @a[team=Red] 1050 91 -538 -135 0
tp @a[team=Blue] 962 91 -450 45 0
tp @a[team=] 976 81 -456 -135 -25
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 1053 89 -546 1056 89 -548 minecraft:red_stained_glass hollow
fill 1053 97 -546 1056 97 -548 minecraft:red_stained_glass hollow
fill 959 89 -440 956 89 -442 minecraft:blue_stained_glass hollow
fill 959 97 -440 956 97 -442 minecraft:blue_stained_glass hollow

execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1005 32 -494 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
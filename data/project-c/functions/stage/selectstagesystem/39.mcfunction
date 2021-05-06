tp @a[team=Red] 3056 68 4988 90 0
tp @a[team=Blue] 2968 68 4992 270 0
tp @a[team=] 3020 90 4940 0 30
execute as @a at @s run spawnpoint @s
fill 3053 66 4991 3059 72 4985 minecraft:red_stained_glass hollow
fill 2971 66 4989 2965 72 4995 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 3018 35 4993 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
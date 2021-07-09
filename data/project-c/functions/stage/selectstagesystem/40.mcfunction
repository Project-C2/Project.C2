tp @a[team=Red] 3053 86 -1039 45 0
tp @a[team=Blue] 2951 86 -931 225 0
tp @a[team=] 3002 100 -1015 0 45
execute as @a at @s run spawnpoint @s
fill 3050 84 -1036 3056 90 -1042 minecraft:red_stained_glass hollow
fill 2948 90 -928 2954 84 -934 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 3001 23 -984 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
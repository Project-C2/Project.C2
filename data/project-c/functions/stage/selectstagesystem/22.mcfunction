tp @a[team=Red] 959 67 3117 180 0
tp @a[team=Blue] 1008 60 3073 90 0
tp @a[team=] 948 76 3093 -90 50
execute as @a at @s run spawnpoint @s
fill 956 66 3120 962 73 3114 minecraft:red_stained_glass hollow
fill 1005 59 3076 1011 66 3070 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 948 25 3093 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
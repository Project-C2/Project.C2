tp @a[team=Red] 6081 64 1072 90 0
tp @a[team=Blue] 5916 64 1072 270 0
tp @a[team=] 6014 80 1086 140 20
execute as @a at @s run spawnpoint @s
fill 6084 62 1066 6078 68 1078 minecraft:red_stained_glass hollow
fill 5914 68 1078 5920 62 1066 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 5999 15 1072 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
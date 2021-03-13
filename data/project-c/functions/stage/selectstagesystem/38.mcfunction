tp @a[team=Red] 930 106 6024 270 0
tp @a[team=Blue] 1052 106 6024 90 0
tp @a[team=] 930 106 6024 270 0
execute as @a at @s run spawnpoint @s
fill 931 112 6021 934 106 6027 minecraft:red_stained_glass replace minecraft:structure_void
fill 1051 112 6027 1048 106 6021 minecraft:blue_stained_glass replace minecraft:structure_void
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 991 60 6024 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
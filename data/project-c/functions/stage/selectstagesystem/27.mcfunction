tp @a[team=Red] 2945 48 5956 -90 0
tp @a[team=Blue] 3028 49 5972 0 0
tp @a[team=] 3013 58 5976 90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 2950 52 5957 2952 52 5955 minecraft:red_stained_glass
fill 3025 57 5982 3029 51 5970 minecraft:blue_stained_glass replace minecraft:structure_void
summon minecraft:armor_stand 2993 29 5973 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
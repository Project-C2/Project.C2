tp @a[team=Red] 2058 70 -1000 90 0
tp @a[team=Blue] 1942 70 -1000 -90 0
tp @a[team=] 2000 90 -1038 0 15
execute as @a at @s run spawnpoint @s
fill 2050 69 -1002 2050 74 -998 minecraft:red_stained_glass
fill 1950 69 -998 1950 74 -1002 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 2000 20 -1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
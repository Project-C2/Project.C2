tp @a[team=Red] -1055 70 945
tp @a[team=Blue] -945 70 1055
tp @a[team=] -1000 130 1000
execute as @a at @s run spawnpoint @s
fill -1058 68 942 -1052 73 948 minecraft:red_stained_glass hollow
fill -948 68 1052 -942 73 1058 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand -1000 50 1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
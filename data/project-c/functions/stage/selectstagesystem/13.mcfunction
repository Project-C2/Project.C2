tp @a[team=Red] -27 66 -3038 90 0
tp @a[team=Blue] -26 66 -2913 -90 0
tp @a[team=] 7 78 -2950 0 0
execute as @a at @s run spawnpoint @s
fill -35 66 -3044 -35 72 -3032 minecraft:red_stained_glass hollow
fill -20 66 -2906 -20 72 -2919 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 7 25 -2976 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
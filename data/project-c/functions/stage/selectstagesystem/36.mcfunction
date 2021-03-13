tp @a[team=Red] 3000 72 3030 180 0
tp @a[team=Blue] 3000 72 2970 0 0
tp @a[team=] 2987 78 3000 270 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 3003 71 3023 2997 78 3023 minecraft:red_stained_glass hollow
fill 3003 71 2977 2997 79 2977 minecraft:blue_stained_glass hollow
summon minecraft:armor_stand 3000 40 3000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
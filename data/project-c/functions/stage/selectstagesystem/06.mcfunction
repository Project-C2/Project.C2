tp @a[team=Red] -966 67 -54 0 0
tp @a[team=Blue] -1034 67 54 180 0
tp @a[team=] -1040 132 40 -135 40
execute as @a at @s run spawnpoint @s
fill -968 66 -45 -964 69 -45 minecraft:red_stained_glass
fill -1032 66 45 -1036 69 45 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand -1000 40 0 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
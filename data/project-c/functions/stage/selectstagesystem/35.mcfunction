tp @a[team=Red] -9 53 2051 180 0
tp @a[team=Blue] -9.0 39.0 1930.0 0 0
tp @a[team=] -9 54 1950 0 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill -16 52 2048 -5 57 2054 minecraft:red_stained_glass hollow
fill -13 37 1926 -6 44 1933 minecraft:blue_stained_glass hollow
summon minecraft:armor_stand -10 30 1950 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
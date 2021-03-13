tp @a[team=Red] 4012 22 1986 0 0
tp @a[team=Blue] 4004 41 2024 180 0
tp @a[team=] 4004 33 2033 -145 0
execute as @a at @s run spawnpoint @s
fill 4013 22 1992 4011 23 1992 minecraft:red_stained_glass
fill 4003 41 2020 4005 44 2020 minecraft:blue_stained_glass replace air
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 4008 -20 2012 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
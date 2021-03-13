tp @a[team=Red] 2000 67 1931 0 0
tp @a[team=Blue] 2000 67 2069 180 0
tp @a[team=] 2000 80 1958 0 20
execute as @a at @s run spawnpoint @s
fill 1998 66 1936 2002 72 1936 minecraft:red_stained_glass
fill 1998 66 2064 2002 72 2064 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 2000 30 2000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
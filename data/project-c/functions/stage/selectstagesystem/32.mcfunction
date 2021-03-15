tp @a[team=Red] 1944 105 7002 180 0
tp @a[team=Blue] 2044 105 6990 0 0
tp @a[team=] 1994 108 7004 180 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 2044 106 6993 2045 107 6993 minecraft:red_stained_glass hollow
fill 1944 106 6999 1943 107 6999 minecraft:blue_stained_glass hollow
summon minecraft:armor_stand 1994 70 6996 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
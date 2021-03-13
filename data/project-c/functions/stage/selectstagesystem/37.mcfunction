tp @a[team=Red] 2004 66 3052 180 0
tp @a[team=Blue] 2003 65 2951 0 0
tp @a[team=] 2003 65 2951 0 0
execute as @a at @s run spawnpoint @s
fill 2007 65 3049 2002 70 3054 minecraft:red_stained_glass hollow
fill 2001 64 2954 2006 68 2949 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 1997 30 3003 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
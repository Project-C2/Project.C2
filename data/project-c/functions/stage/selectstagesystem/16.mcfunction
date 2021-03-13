tp @a[team=Red] 5845 64 1012 270 0
tp @a[team=Blue] 5896 63 929 270 0
tp @a[team=] 5900 112 1000 140 50
execute as @a at @s run spawnpoint @s
fill 5843 62 1008 5847 66 1016 minecraft:red_stained_glass hollow
fill 5893 61 925 5899 65 933 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 5892 15 963 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
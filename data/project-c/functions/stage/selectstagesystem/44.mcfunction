tp @a[team=Red] 1013 86 -957 135 0
tp @a[team=Blue] 941 80 -1044 -45 0
tp @a[team=] 976 90 -1038 0 15
execute as @a at @s run spawnpoint @s
fill 1015 84 -955 1011 88 -959 minecraft:red_stained_glass hollow
fill 939 78 -1046 943 82 -1042 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 977 45 -1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
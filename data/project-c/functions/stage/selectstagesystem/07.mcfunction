tp @a[team=Red] -957 69 -1011 0 0
tp @a[team=Blue] -990 69 -1044 90 0
tp @a[team=] -950 75 -950 130 20
execute as @a at @s run spawnpoint @s
fill -960 68 -1002 -959 69 -1002 minecraft:red_stained_glass
fill -999 68 -1042 -999 69 -1041 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand -1000 20 -1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
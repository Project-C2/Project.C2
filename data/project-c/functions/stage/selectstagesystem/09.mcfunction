tp @a[team=Red] -1072 90 -1515 0 0
tp @a[team=Blue] -961 89 -1519
tp @a[team=] -1028 93 -1445 -157 5
execute as @a at @s run spawnpoint @s
fill -1074 89 -1511 -1070 93 -1511 minecraft:red_stained_glass
fill -959 88 -1515 -963 92 -1515 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -1015 50 -1487 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
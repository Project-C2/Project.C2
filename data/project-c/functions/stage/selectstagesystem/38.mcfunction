tp @a[team=Red] 1434 99 -509 -90 0
tp @a[team=Blue] 1554 99 -509 -270 0
tp @a[team=] 949 130 6066 225 25
execute as @a at @s run spawnpoint @s
fill 1441 94 -503 1432 107 -515 minecraft:red_stained_glass replace minecraft:structure_void
fill 1544 94 -516 1558 108 -501 minecraft:blue_stained_glass replace minecraft:structure_void
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1494 51 -509 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
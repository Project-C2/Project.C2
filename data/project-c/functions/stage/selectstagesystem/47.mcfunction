tp @a[team=Red] 526.0 34 -77.0 45 0
tp @a[team=Blue] 554.0 34 85.0 225 0
tp @a[team=] 489 39 -7 -45 20
execute as @a at @s run spawnpoint @s
fill 520 33 -77 520 34 -78 minecraft:red_stained_glass
fill 526 33 -72 525 34 -72 minecraft:red_stained_glass
fill 553 33 79 554 34 79 minecraft:blue_stained_glass
fill 559 33 85 559 34 84 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 545 0 3 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
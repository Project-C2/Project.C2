tp @a[team=Red] 2515 78 -1048 0 0
tp @a[team=Blue] 2563 78 -908 180 0
tp @a[team=] 3024 80 1958 0 20
execute as @a at @s run spawnpoint @s
fill 2513 77 -1042 2517 83 -1042 minecraft:red_stained_glass
fill 2565 77 -914 2561 83 -914 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 2539 27 -978 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
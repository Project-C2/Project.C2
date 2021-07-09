tp @a[team=Red] 1465.0 78 43.0 -90 0
tp @a[team=Blue] 1465.0 78 -12.0 -90 0
tp @a[team=] 1491 77 15 -90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 1471 78 42 1471 77 43 minecraft:red_stained_glass hollow
fill 1471 77 -12 1471 78 -13 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1009 15 6984 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
tp @a[team=Red] 939 69 439 -45 0
tp @a[team=Blue] 1061 69 561 135 0
tp @a[team=] 1000 127 500 0 90
execute as @a at @s run spawnpoint @s
fill 937 67 437 941 73 441 minecraft:red_stained_glass hollow
fill 1063 67 563 1059 73 559 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1000 32 500 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
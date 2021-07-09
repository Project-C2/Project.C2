tp @a[team=Red] 1494 68 1042 180 0
tp @a[team=Blue] 1494.0 67 941.0 90 0
tp @a[team=] 1515 76 1015 135 30
execute as @a at @s run spawnpoint @s
fill 1498 66 1045 1490 72 1039 minecraft:red_stained_glass hollow
fill 1491 65 938 1496 70 943 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1997 30 3003 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
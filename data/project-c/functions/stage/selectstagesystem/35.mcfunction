tp @a[team=Red] -452.0 48 957.0 0 0
tp @a[team=Blue] -453.0 63 1078.0 180 0
tp @a[team=] -452 63 977 0 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill -449 46 953 -456 53 960 minecraft:red_stained_glass hollow
fill -459 61 1075 -448 66 1081 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -453 30 1010 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
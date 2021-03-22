tp @a[team=Red] 7 55 5968 0 0
tp @a[team=Blue] 7 55 6042.00 180 0
tp @a[team=] 7 58 5974 0 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 1 53 5972 13 58 5965 minecraft:red_stained_glass hollow
fill 13 53 6038 1 58 6045 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 0 30 6000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
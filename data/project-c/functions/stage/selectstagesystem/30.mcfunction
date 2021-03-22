tp @a[team=Red] 966 65 6957 -90 0
tp @a[team=Blue] 966 65 7012 -90 0
tp @a[team=] 992 65 6984 -90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 972 65 7011 972 66 7012 minecraft:red_stained_glass hollow
fill 972 65 6956 972 66 6957 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 992 15 6984 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
tp @a[team=Red] 5943 62 998 180 0
tp @a[team=Blue] 6020 62 1027 90 0
tp @a[team=] 5999 90 1000 180 40
execute as @a at @s run spawnpoint @s
fill 5951 62 985 5954 65 985 minecraft:red_stained_glass hollow
fill 6013 62 1029 6013 65 1026 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 5999 15 963 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
tp @a[team=Red] 4037 72 6032 90 0
tp @a[team=Blue] 3991 72 5969 -90 0
tp @a[team=] 4040 73 6000 90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 3988 71 5966 3994 76 5973 minecraft:red_stained_glass hollow
fill 4030 72 6033 4030 73 6032 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 4015 23 6000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
tp @a[team=Red] -476.0 67 -571.0 -90 0
tp @a[team=Blue] -545.0 67 -445.0 -90 0
tp @a[team=] -511.0 78 -483 0 0
execute as @a at @s run spawnpoint @s
fill -470 66 -577 -470 71 -566 minecraft:red_stained_glass hollow
fill -540 66 -451 -540 71 -440 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -511 30 -501 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
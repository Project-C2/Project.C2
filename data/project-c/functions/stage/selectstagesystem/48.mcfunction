tp @a[team=Red] 1974.0 76 409.0 0 0
tp @a[team=Blue] 2019.0 76 576.0 180 0
tp @a[team=] 2042 82 440 45 20
execute as @a at @s run spawnpoint @s
fill 1972 75 414 1975 79 414 minecraft:red_stained_glass
fill 2020 75 570 2017 79 570 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1995 10 492 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
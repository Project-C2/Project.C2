tp @a[team=Red] 2424 142 -3 180 0
tp @a[team=Blue] 2424 137 -340 180 0
tp @a[team=] 2400 150 -124 -120 0
execute as @a at @s run spawnpoint @s
fill 2420 140 -5 2428 146 -1 minecraft:red_stained_glass hollow
fill 2429 135 -338 2419 141 -344 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run data merge block -111 47 -122 {auto:1b}
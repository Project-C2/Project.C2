tp @a[team=Red] 3013 50 -562 45 0
tp @a[team=Blue] 2933 49 -482 -135 0
tp @a[team=] 2954 80 -565 -20 30
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 3016 48 -565 3010 54 -559 minecraft:red_stained_glass hollow
fill 2930 47 -479 2936 53 -485 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 2972 30 -520 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
tp @a[team=Red] -504 78 442 0 0
tp @a[team=Blue] -504 78 540 180 0
tp @a[team=] -471 80 491.0 90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill -501 76 439 -507 82 445 minecraft:red_stained_glass hollow
fill -501 82 537 -507 76 543 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -504 20 491 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
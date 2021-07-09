tp @a[team=Red] 2498 72 409 0 0
tp @a[team=Blue] 2498 72 549 180 0
tp @a[team=] 2498 85 437 0 20
execute as @a at @s run spawnpoint @s
fill 2500 77 415 2496 71 415 minecraft:red_stained_glass
fill 2500 71 543 2496 77 543 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 2498 30 478 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
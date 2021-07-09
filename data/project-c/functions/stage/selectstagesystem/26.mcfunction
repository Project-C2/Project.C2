tp @a[team=Red] 3011 64 487 0 0
tp @a[team=Blue] 3003 83 527 180 0
tp @a[team=] 3003 72 534 -135 0
execute as @a at @s run spawnpoint @s
fill 3008 69 494 3014 63 494 minecraft:red_stained_glass replace air
fill 3005 82 521 3001 85 521 minecraft:blue_stained_glass replace air
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 4008 -20 2012 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
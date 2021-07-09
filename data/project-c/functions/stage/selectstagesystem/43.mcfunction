tp @a[team=Red] -18 91 541 -90 0
tp @a[team=Blue] 86 91 541 90 0
tp @a[team=] 34 98 572 180 0
execute as @a at @s run spawnpoint @s
fill 77 95 543 77 83 539 minecraft:red_stained_glass replace air
fill -9 95 539 -9 83 543 minecraft:blue_stained_glass replace air
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 34 59 541 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
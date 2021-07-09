tp @a[team=Red] 501 84 -523 0 0
tp @a[team=Blue] 501 84 -442 180 0
tp @a[team=] 524 86 -483 90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 505 84 -451 496 86 -451 minecraft:red_stained_glass hollow
fill 496 84 -515 506 86 -515 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 505 32 -483 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
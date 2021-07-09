tp @a[team=Red] -485 68 31 180 0
tp @a[team=Blue] -436 61 -13 90 0
tp @a[team=] -496 76 7 -90 50
execute as @a at @s run spawnpoint @s
fill -482 66 28 -488 72 34 minecraft:red_stained_glass hollow
fill -439 59 -16 -433 65 -10 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -482 25 13 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
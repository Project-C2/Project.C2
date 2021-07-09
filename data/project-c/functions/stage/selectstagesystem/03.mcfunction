tp @a[team=Red] -1015 70 547 -90 0
tp @a[team=Blue] -911 70 547 90 0
tp @a[team=] -963 77 579 180 0
execute as @a at @s run spawnpoint @s
fill -1006 69 549 -1006 74 545 minecraft:red_stained_glass
fill -920 69 545 -920 74 549 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -963 20 547 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
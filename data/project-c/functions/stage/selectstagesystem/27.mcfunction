tp @a[team=Red] 472 58 -1009 -90 0
tp @a[team=Blue] 555.0 59 -993.0 0 0
tp @a[team=] 540 70 -988 90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 479 61 -1008 477 61 -1010 minecraft:red_stained_glass
fill 552 65 -983 556 58 -995 minecraft:blue_stained_glass replace minecraft:structure_void
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 515 41 -1006 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
tp @a[team=Red] 2008 99 5877 0 0
tp @a[team=Blue] 2008 99 6139 180 0
tp @a[team=] 1972 106 5972 -45 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 2007 100 5882 2009 102 5882 minecraft:red_stained_glass
fill 2009 100 6134 2007 102 6134 minecraft:blue_stained_glass
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 2008 45 6008 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
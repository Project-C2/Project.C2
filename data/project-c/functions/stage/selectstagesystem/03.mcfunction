tp @a[team=Red] 1948 67 -1994
tp @a[team=Blue] 2052 67 -1994
tp @a[team=] 2000 74 -1962
execute as @a at @s run spawnpoint @s
fill 1957 66 -1992 1957 71 -1996 minecraft:red_stained_glass
fill 2043 66 -1996 2043 71 -1992 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 2000 30 -2000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
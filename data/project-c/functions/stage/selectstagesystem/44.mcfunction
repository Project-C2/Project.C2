tp @a[team=Red] 917 110 -1000 -90 0
tp @a[team=Blue] 1035 110 -1000 90 0
tp @a[team=] 976 90 -1038 0 15
execute as @a at @s run spawnpoint @s
fill 922 109 -1006 924 110 -994 minecraft:red_stained_glass replace structure_void
fill 1030 109 -994 1028 110 -1006 minecraft:blue_stained_glass replace structure_void
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 977 45 -1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}

gamerule fallDamage false
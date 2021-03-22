tp @a[team=Red] -23 70 -1072 0 0
tp @a[team=Blue] 23 70 -929 180 0
tp @a[team=] -46 74 -961 -135 20
execute as @a at @s run spawnpoint @s
fill -24 69 -1066 -21 73 -1066 minecraft:red_stained_glass
fill 21 69 -935 24 73 -935 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 0 20 -1000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
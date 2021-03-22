tp @a[team=Red] -5.0 94 6967.0 45 0
tp @a[team=Blue] 22.0 94 7130.0 -135 0
tp @a[team=] -42 100 7037 310 20
execute as @a at @s run spawnpoint @s
fill -6 94 6972 -5 93 6972 minecraft:red_stained_glass
fill -11 93 6967 -11 94 6966 minecraft:red_stained_glass
fill 23 94 7123 22 93 7123 minecraft:blue_stained_glass
fill 28 93 7128 28 94 7129 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 4 78 7047 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
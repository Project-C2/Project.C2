tp @a[team=Red] 31 65 -4026 0 0
tp @a[team=Blue] 77 65 -3858 180 0
tp @a[team=] 8 69 -3890 -135 20
execute as @a at @s run spawnpoint @s
fill 33 64 -4020 30 68 -4020 minecraft:red_stained_glass
fill 75 64 -3864 78 68 -3864 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 52 13 -3942 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
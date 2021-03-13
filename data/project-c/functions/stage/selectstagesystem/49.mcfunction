tp @a[team=Red] -1082 86 -2025 0 0
tp @a[team=Blue] -971 85 -2029 0 0
tp @a[team=] -1038 89 -1956 -157 5
execute as @a at @s run spawnpoint @s
fill -1080 85 -2022 -1084 89 -2022 minecraft:red_stained_glass
fill -969 84 -2026 -973 88 -2026 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand -1026 32 -1996 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
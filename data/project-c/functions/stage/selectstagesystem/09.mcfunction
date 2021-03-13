tp @a[team=Red] -58 86 -2025 0 0
tp @a[team=Blue] 53 85 -2029 0 0
tp @a[team=] -14 89 -1956 -157 5
execute as @a at @s run spawnpoint @s
fill -60 85 -2022 -56 89 -2022 minecraft:red_stained_glass
fill 51 84 -2026 55 88 -2026 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 0 45 -2000 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
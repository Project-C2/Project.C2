tp @a[team=Red] 996 57 2025 180 0
tp @a[team=Blue] 995 57 1911 0 0
tp @a[team=] 996 79 1951 0 40
execute as @a at @s run spawnpoint @s
fill 993 56 2022 998 64 2027 minecraft:red_stained_glass hollow
fill 998 56 1914 993 64 1909 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 995 10 1968 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
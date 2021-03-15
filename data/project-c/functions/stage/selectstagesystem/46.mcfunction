tp @a[team=Red] -1990 87 -54 0 0
tp @a[team=Blue] -2058 87 54 180 0
tp @a[team=] -1984 132 -40 45 40
execute as @a at @s run spawnpoint @s
fill -1985 85 -46 -1995 85 -56 minecraft:red_stained_glass replace air
fill -2063 85 46 -2053 85 56 minecraft:blue_stained_glass replace air
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand -2024 40 0 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
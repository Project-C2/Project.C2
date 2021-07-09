tp @a[team=Red] 1920 98 -232 0 0
tp @a[team=Blue] 1920 98 30 180 0
tp @a[team=] 1898 109 -140 -30 30
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 1921 98 -227 1919 100 -227 minecraft:red_stained_glass
fill 1919 98 25 1921 100 25 minecraft:blue_stained_glass
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1920 48 -101 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
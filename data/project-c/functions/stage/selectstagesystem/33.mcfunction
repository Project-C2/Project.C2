tp @a[team=Red] 2923 125 1029 180 0
tp @a[team=Blue] 2919 126 961 0 0
tp @a[team=] 2919 129 1002 180 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 2922 126 1025 2923 125 1025 minecraft:red_stained_glass hollow
fill 2915 125 964 2923 129 963 minecraft:blue_stained_glass replace minecraft:air
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 2919 79 1002 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
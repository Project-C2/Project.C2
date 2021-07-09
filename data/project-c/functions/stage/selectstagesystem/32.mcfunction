tp @a[team=Red] -42.0 52 -496.0 180 0
tp @a[team=Blue] 59.0 52 -509.0 0 0
tp @a[team=] 8 53 -496 180 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill -43 53 -500 -42 54 -500 minecraft:red_stained_glass hollow
fill 59 53 -506 58 54 -506 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 8 12 -503 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
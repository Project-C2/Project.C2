tp @a[team=Red] -97 95 4949 -90 0
tp @a[team=Blue] 7 95 4949 90 0
tp @a[team=] 
execute as @a at @s run spawnpoint @s
fill -88 94 4951 -88 99 4947 minecraft:red_stained_glass
fill -88 92 4951 -88 87 4947 minecraft:red_stained_glass
fill -2 94 4947 -2 99 4951 minecraft:blue_stained_glass
fill -2 92 4947 -2 87 4951 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand -45 44 4949 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
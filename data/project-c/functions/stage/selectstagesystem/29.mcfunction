tp @a[team=Red] 4987 97 4968 0 0
tp @a[team=Blue] 4987 97 5048 180 0
tp @a[team=] 5010 100 5008 90 0
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 4982 97 5040 4991 99 5040 minecraft:red_stained_glass hollow
fill 4992 97 4976 4982 99 4976 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 992 15 6984 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
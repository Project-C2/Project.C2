tp @a[team=Red] 4044 63 932 45 0
tp @a[team=Blue] 3964 63 1012 -135 0
tp @a[team=] 3981 94 923 -20 30
execute as @a at @s run spawnpoint @s
data merge block -111 47 -122 {auto:1b}
fill 4041 62 935 4047 68 929 minecraft:red_stained_glass hollow
fill 3961 61 1015 3967 67 1009 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 3994 52 984 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
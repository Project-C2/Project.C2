tp @a[team=Red] 524 89 935 0 0
tp @a[team=Blue] 456 89 1043 180 0
tp @a[team=] 530 135 949 45 40
execute as @a at @s run spawnpoint @s
fill 529 87 933 519 87 943 minecraft:red_stained_glass replace air
fill 451 87 1045 461 87 1035 minecraft:blue_stained_glass replace air
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 490 36 989 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
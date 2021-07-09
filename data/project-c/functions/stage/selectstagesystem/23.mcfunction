tp @a[team=Red] 1560 95 513 0 0
tp @a[team=Blue] 1560 87 630 180 0
tp @a[team=] 1582 88 575 90 10
execute as @a at @s run spawnpoint @s
fill 1563 93 510 1557 99 516 minecraft:red_stained_glass hollow
fill 1557 85 633 1563 91 627 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
execute if score #MenuSpawnItem counter matches 1 run summon minecraft:armor_stand 1560 38 576 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
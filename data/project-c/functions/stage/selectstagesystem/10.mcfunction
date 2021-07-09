tp @a[team=Red] -995 69 -390 180 0
tp @a[team=Blue] -995 69 -605 0 0
tp @a[team=] -1031 94 -453 -140 30
execute as @a at @s run spawnpoint @s
fill -988 68 -396 -1002 81 -387 minecraft:red_stained_glass replace minecraft:structure_void
fill -1002 68 -599 -986 81 -608 minecraft:blue_stained_glass replace minecraft:structure_void
data merge block -111 47 -122 {auto:1b}
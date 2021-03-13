tp @a[team=Red] 1948 89 -10 -90 0
tp @a[team=Blue] 1948 89 11 -90 0
tp @a[team=] 2070 95 33 130 5
execute as @a at @s run spawnpoint @s
fill 1953 88 -15 1953 89 -14 minecraft:red_stained_glass
fill 1953 88 15 1953 89 16 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
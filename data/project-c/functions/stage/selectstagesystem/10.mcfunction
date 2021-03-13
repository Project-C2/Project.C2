tp @a[team=Red] 1011 68 -1894 180 0
tp @a[team=Blue] 1011 68 -2109 0 0
tp @a[team=] 975 93 -1957 -140 30
execute as @a at @s run spawnpoint @s
fill 1018 61 -1890 1004 82 -1901 minecraft:red_stained_glass replace minecraft:structure_void
fill 1005 61 -2114 1018 81 -2101 minecraft:blue_stained_glass replace minecraft:structure_void
data merge block -111 47 -122 {auto:1b}
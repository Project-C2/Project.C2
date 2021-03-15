tp @a[team=Red] 985 69 -2918 180 0
tp @a[team=Blue] 985 68 -3133 0 0
tp @a[team=] 949 93 -2981 -140 30
execute as @a at @s run spawnpoint @s
fill 993 68 -2928 978 82 -2913 minecraft:red_stained_glass replace minecraft:structure_void
fill 977 68 -3123 992 82 -3139 minecraft:blue_stained_glass replace minecraft:structure_void
data merge block -111 47 -122 {auto:1b}
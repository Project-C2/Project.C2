tp @a[team=Red] 1913.0 105 -539.0 -90 0
tp @a[team=Blue] 1913.0 104 -509.0 -90 0
tp @a[team=] 2015 115 -486 155 10
execute as @a at @s run spawnpoint @s
fill 1918 104 -540 1918 105 -539 minecraft:red_stained_glass
fill 1918 104 -510 1918 105 -509 minecraft:blue_stained_glass
data merge block -111 47 -122 {auto:1b}
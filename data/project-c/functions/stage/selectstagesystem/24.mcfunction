tp @a[team=Red] 2012 105 5162 -180 0
tp @a[team=Blue] 2012 100 4825 -180 0
tp @a[team=] 1982 110 4984 -90 0
execute as @a at @s run spawnpoint @s
fill 2008 104 5160 2016 110 5164 minecraft:red_stained_glass hollow
fill 2017 99 4827 2007 105 4821 minecraft:blue_stained_glass hollow
execute if score #MenuSpawnItem counter matches 1 run data merge block -111 47 -122 {auto:1b}
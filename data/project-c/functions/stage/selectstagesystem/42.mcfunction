tp @a[team=Red] -2 67 3917 -45 ~
tp @a[team=Blue] 120 67 4039 135 ~
tp @a[team=] 59 127 3978 0 90
execute as @a at @s run spawnpoint @s
fill -4 65 3915 0 70 3919 minecraft:red_stained_glass hollow
fill 118 65 4037 122 70 4041 minecraft:blue_stained_glass hollow
data merge block -111 47 -122 {auto:1b}
summon minecraft:armor_stand 59 47 3978 {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ItemSpawnerPosition","Stable"],Marker:1b,NoBasePlate:1b,DisabledSlots:2039583}
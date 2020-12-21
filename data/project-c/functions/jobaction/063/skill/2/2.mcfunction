scoreboard players add @s counter 1
scoreboard players remove @s[scores={counter_1=1..}] counter_1 1
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 2 force

execute as @s[scores={counter=80..},tag=062-2R] at @s run summon armor_stand ~ ~1.5 ~ {NoGravity:1b,Invisible:1b,Tags:["062-slash","062-slashR","062-unslash"],Marker:1b}
execute as @s[scores={counter=80..},tag=062-2B] at @s run summon armor_stand ~ ~1.5 ~ {NoGravity:1b,Invisible:1b,Tags:["062-slash","062-slashB","062-unslash"],Marker:1b}

execute as @e[tag=062-slashB,tag=062-unslash,limit=1] at @s if entity @e[team=Red,tag=Battle,distance=..30] run tp @s ^ ^1 ^ facing entity @e[team=Red,limit=1,sort=nearest,tag=Battle]

execute as @e[tag=062-slashR,tag=062-unslash,limit=1] at @s if entity @e[team=Blue,tag=Battle,distance=..30] run tp @s ^ ^1 ^ facing entity @e[team=Blue,limit=1,sort=nearest,tag=Battle]

tag @e[tag=062-unslash,limit=1] remove 062-unslash

kill @s[scores={counter=80..}]
data merge block -111 5 31 {auto:1b}